using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Entidades;
using System.Data;

namespace Datos
{
    public class DatosMedico
    {
        private AccesoDatos accesoDatos = new AccesoDatos();

        public DatosMedico() { }

        public bool ExisteMedico(string dni)
        {
            const string consulta = @"SELECT COUNT(*) FROM Medicos medico JOIN
                Persona persona ON medico.id_persona = persona.id_persona
                WHERE persona.dni = @dni";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand(consulta, conexion))
            {
                cmd.Parameters.AddWithValue("@dni", dni);
                int contador = Convert.ToInt32(cmd.ExecuteScalar());

                return contador > 0;
            }
        }

        public bool AltaMedico(Persona persona)
        {
            if (ExisteMedico(persona.Dni))
                return false;

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand("sp_AltaMedico", conexion))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@dni", persona.Dni);
                cmd.Parameters.AddWithValue("@nombre", persona.Nombre);
                cmd.Parameters.AddWithValue("@apellido", persona.Apellido);
                cmd.Parameters.AddWithValue("@sexo", persona.Sexo);
                cmd.Parameters.AddWithValue("@nacionalidad", persona.Nacionalidad);
                cmd.Parameters.AddWithValue("@fecha_nacimiento", persona.Fecha_nacimiento);
                cmd.Parameters.AddWithValue("@correo_electronico", persona.Correo_electronico);
                cmd.Parameters.AddWithValue("@telefono", persona.Telefono);
                cmd.Parameters.AddWithValue("@direccion", persona.Direccion);
                cmd.Parameters.AddWithValue("@id_localidad", persona.Id_localidad);

                int filas = cmd.ExecuteNonQuery();
                return filas > 0;
            }
        }

        public DataTable ObtenerTodosLosMedicos()
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                string consulta = @"SELECT m.ID_Medico, per.Nombre, per.Apellido, per.DNI, m.Estado
                            FROM Medicos m
                            JOIN Persona per ON m.ID_Persona = per.ID_Persona";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);
                return tabla;
            }
        }

        public DataTable BuscarMedicoPorDNI(string dni)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                string consulta = @"SELECT m.ID_Medico, per.Nombre, per.Apellido, per.DNI, m.Estado FROM Medicos m
                                    JOIN Persona per ON m.ID_Persona = per.ID_Persona WHERE per.DNI = @dni";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                cmd.Parameters.AddWithValue("@dni", dni);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);

                return tabla;
            }
        }

        public bool BajaLogicaMedico(string dni)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                string consulta = @"UPDATE Medicos
                                    SET Estado = 0
                                    WHERE ID_Persona = (SELECT ID_Persona FROM Persona WHERE DNI = @dni)";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                cmd.Parameters.AddWithValue("@dni", dni);

                int filasAfectadas = cmd.ExecuteNonQuery();
                return filasAfectadas > 0;
            }
        }
    }
}
