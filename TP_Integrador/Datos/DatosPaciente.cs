using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Entidades;

namespace Datos
{
    public class DatosPaciente
    {
        AccesoDatos acceso = new AccesoDatos();

        public List<Paciente> ObtenerPorDni(string dni)
        {
            List<Paciente> lista = new List<Paciente>();

            string consulta = $"SELECT * FROM Pacientes pa JOIN Personas pe ON pa.ID_Paciente = pe.ID_Persona WHERE pe.DNI = '{dni}' AND pa.Estado = 1";

            using (SqlDataReader dr = acceso.ObtenerReader(consulta))
            {
                while (dr.Read())
                {
                    Paciente p = new Paciente
                    {
                        Id_paciente = Convert.ToInt32(dr["ID_Paciente"]),
                        Dni = dr["DNI"].ToString(),
                        Nombre = dr["Nombre"].ToString(),
                        Apellido = dr["Apellido"].ToString(),
                        Sexo = dr["Sexo"].ToString(),
                        Nacionalidad = dr["Nacionalidad"].ToString(),
                        Fecha_nacimiento = Convert.ToDateTime(dr["Fecha_nacimiento"]),
                        Correo_electronico = dr["Correo_electronico"].ToString(),
                        Telefono = dr["Telefono"].ToString(),
                        Direccion = dr["Direccion"].ToString(),
                        Id_localidad = Convert.ToInt32(dr["ID_Localidad"]),
                        Estado = Convert.ToBoolean(dr["Estado"])
                    };

                    lista.Add(p);
                }
                dr.Close();
            }

            return lista;
        }

        public void EliminarPaciente(int idPaciente)
        {
            using (SqlConnection conn = acceso.ObtenerConexion())
            {
                string consulta = "UPDATE Pacientes SET Estado = 0 WHERE ID_Paciente = @id";
                SqlCommand cmd = new SqlCommand(consulta, conn);
                cmd.Parameters.AddWithValue("@id", idPaciente);
                cmd.ExecuteNonQuery();
            }
        }
    }



}
