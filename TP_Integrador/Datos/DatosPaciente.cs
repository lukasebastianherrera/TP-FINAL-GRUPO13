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
        private AccesoDatos accesoDatos = new AccesoDatos();

        public bool ExistePaciente(string dni)
        {
            const string consulta = @"SELECT COUNT(*) FROM Pacientes paciente
                                       JOIN Persona persona ON paciente.id_persona = persona.id_persona
                                       WHERE persona.dni = @dni AND paciente.Estado = 1";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand(consulta, conexion))
            {
                cmd.Parameters.AddWithValue("@dni", dni);
                int contador = Convert.ToInt32(cmd.ExecuteScalar());
                return contador > 0;
            }
        }

        public bool AltaPaciente(Persona persona)
        {
            if (ExistePaciente(persona.Dni))
                return false;

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand("sp_AltaPaciente", conexion))
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

        public DataTable ObtenerTodosLosPacientes()
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                string consulta = @"SELECT per.Nombre, per.Apellido, per.DNI
                                     FROM Pacientes p
                                     JOIN Persona per ON p.ID_Persona = per.ID_Persona
                                     WHERE p.Estado = 1";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);
                return tabla;
            }
        }


        public DataTable obtenerTodosLosPacientesyDatos()
        {
            SqlConnection sqlConnection = accesoDatos.ObtenerConexion();
            string consulta = @"SELECT p.id_persona,p.id_paciente , dni, nombre, apellido, sexo, nacionalidad, 
                                    fecha_nacimiento, correo_electronico, telefono, direccion, estado
                                    FROM Pacientes as p INNER JOIN Persona per ON p.id_persona = per.id_persona";

            SqlCommand sqlcommand = new SqlCommand(consulta, sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter (sqlcommand);
            DataTable tabla = new DataTable();
            adapter.Fill (tabla);
            return tabla;
        }


        public DataTable BuscarPacientePorDNI(string dni)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                string consulta = @"SELECT per.Nombre, per.Apellido, per.DNI
                                     FROM Pacientes p
                                     JOIN Persona per ON p.ID_Persona = per.ID_Persona
                                     WHERE per.DNI = @dni AND p.Estado = 1";

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
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
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

        public bool modificarPaciente(string nombre, string apellido, string dni, string sexo, string nacionalidad, DateTime fechaNacimiento, string correoElectronico, string telefono, string direccion, bool estado)
        {
            SqlConnection sqlConnection =  accesoDatos.ObtenerConexion();

            string consultaPersona = @"UPDATE Persona
                                       Set nombre= @nombre, apellido = @apellido, sexo = @sexo, nacionalidad = @nacionalidad, fecha_nacimiento = @fechaNacimiento, correo_electronico = @correoElectronico, telefono = @telefono, direccion = @direccion
                                       WHERE dni = @dni";
            SqlCommand sqlCommand = new SqlCommand(consultaPersona, sqlConnection);
            sqlCommand.Parameters.AddWithValue("@nombre", nombre);
            sqlCommand.Parameters.AddWithValue("@apellido", apellido);
            sqlCommand.Parameters.AddWithValue("@sexo", sexo);
            sqlCommand.Parameters.AddWithValue("@nacionalidad", nacionalidad);
            sqlCommand.Parameters.AddWithValue("@fechaNacimiento", fechaNacimiento);
            sqlCommand.Parameters.AddWithValue("@correoElectronico", correoElectronico);
            sqlCommand.Parameters.AddWithValue("@telefono", telefono);
            sqlCommand.Parameters.AddWithValue("@direccion", direccion);
            sqlCommand.Parameters.AddWithValue("@dni", dni);


            int filasAfectadasPersona = sqlCommand.ExecuteNonQuery();

            string consultaPaciente = @"UPDATE Pacientes
                                     SET estado = @estado 
                                      WHERE id_persona = (SELECT id_persona FROM Persona WHERE dni = @dni)";

            SqlCommand sqlCommandPaciente = new SqlCommand(consultaPaciente, sqlConnection);
            sqlCommandPaciente.Parameters.AddWithValue("@dni", dni);
            sqlCommandPaciente.Parameters.AddWithValue("@estado", estado ? 1 : 0);

            int filasAfectadasPaciente = sqlCommandPaciente.ExecuteNonQuery();

            if(filasAfectadasPaciente > 0 && filasAfectadasPersona > 0)
            {
                return true;
            } else { 
                return false; 
            }

        }


    }
}

