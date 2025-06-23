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
    public class DatosPaciente
    {
        private AccesoDatos acceso = new AccesoDatos();

        public DataTable ObtenerTodosLosPacientes()
        {
            using (SqlConnection conexion = acceso.ObtenerConexion())
            {
                string consulta = @"SELECT p.ID_Paciente, per.Nombre, per.Apellido, per.DNI, p.Estado
                            FROM Pacientes p
                            JOIN Persona per ON p.ID_Persona = per.ID_Persona";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);
                return tabla;
            }
        }






        public DataTable BuscarPacientePorDNI(string dni)
        {
            using (SqlConnection conexion = acceso.ObtenerConexion())
            {
                string consulta = @"SELECT p.ID_Paciente, per.Nombre, per.Apellido, per.DNI, p.Estado FROM Pacientes p
                                    JOIN Persona per ON p.ID_Persona = per.ID_Persona WHERE per.DNI = @dni";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                cmd.Parameters.AddWithValue("@dni", dni);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);

                return tabla;
            }
        }

        public bool BajaLogicaPaciente(string dni)
        {
            using (SqlConnection conexion = acceso.ObtenerConexion())
            {
                string consulta = @"UPDATE Pacientes
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
