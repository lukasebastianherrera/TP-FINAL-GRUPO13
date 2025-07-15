using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Entidades;
using System.Data;
using System.Reflection;

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

            using (SqlConnection conexion = accesoDatos.ObtenerConexion()) {
                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@dni", dni);
                    int contador = Convert.ToInt32(cmd.ExecuteScalar());
                    return contador > 0;

                    }
            }
           
        }

        public DataTable BuscarPacientePorApellido(string apellido)
        {
            using(SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                

                string consulta = @"SELECT per.dni AS DNI, per.nombre AS Nombre, per.apellido AS Apellido, per.sexo AS Sexo, per.nacionalidad AS Nacionalidad, 
                                     per.fecha_nacimiento AS [Fecha de Nacimiento], per.correo_electronico AS [Correo Electrónico], per.telefono AS [Teléfono], 
                                     per.direccion AS [Dirección]
                                     FROM Pacientes p INNER JOIN Persona per ON p.id_persona = per.id_persona where per.apellido LIKE @apellido AND p.estado = 1";


                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@apellido", "%" + apellido + "%");
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable tabla = new DataTable();
                    adapter.Fill(tabla);
                    return tabla;
                }
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

                string consulta = @"SELECT per.dni AS DNI, per.nombre AS Nombre, per.apellido AS Apellido, per.sexo AS Sexo, per.nacionalidad AS Nacionalidad, 
                                     per.fecha_nacimiento AS [Fecha de Nacimiento], per.correo_electronico AS [Correo Electrónico], per.telefono AS [Teléfono], 
                                     per.direccion AS [Dirección]
                                     FROM Pacientes p INNER JOIN Persona per ON p.id_persona = per.id_persona WHERE p.Estado = 1";



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
            string consulta = @"SELECT per.id_persona,dni, nombre, apellido, sexo, nacionalidad, 
                                    fecha_nacimiento, correo_electronico, telefono, direccion, estado
                                    FROM Pacientes as p INNER JOIN Persona per ON p.id_persona = per.id_persona";

            SqlCommand sqlcommand = new SqlCommand(consulta, sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlcommand);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }






        public DataTable ListarTodosLosPacientesPorApellido(string apellido)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"SELECT per.dni AS DNI, per.nombre AS Nombre, per.apellido AS Apellido, per.sexo AS Sexo, per.nacionalidad AS Nacionalidad, 
                                            per.fecha_nacimiento AS [Fecha de Nacimiento], per.correo_electronico AS [Correo Electrónico], per.telefono AS [Teléfono],  
                                            per.direccion AS [Dirección], p.estado AS Estado 
                                            FROM Pacientes p INNER JOIN Persona per ON p.id_persona = per.id_persona
                                            WHERE per.apellido LIKE @apellido";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@apellido", "%" + apellido + "%");
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable tabla = new DataTable();
                    adapter.Fill(tabla);
                    return tabla;
                }
            }
        }

        public DataTable BuscarPacienteConDNI(string dni)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {

                string consulta = @"SELECT per.DNI, per.Nombre, per.Apellido, per.sexo, per.nacionalidad, per.fecha_nacimiento, 
                                     per.correo_electronico, per.telefono, per.direccion
                                     FROM Pacientes p
                                     JOIN Persona per ON p.ID_Persona = per.ID_Persona
                                     WHERE per.DNI LIKE @dni AND p.Estado = 1";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                cmd.Parameters.AddWithValue("@dni", "%" + dni + "%");

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);
                return tabla;
            }
        }

        public DataTable BuscarPacientePorDNI(string dni)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {

                string consulta = @"SELECT  dni, nombre, apellido, sexo, nacionalidad, 
                                    fecha_nacimiento, correo_electronico, telefono, direccion, estado
                                    FROM Pacientes as p INNER JOIN Persona per ON p.id_persona = per.id_persona
                                    WHERE dni = @dni";

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




        public DataTable BuscarPacienteconApellido(string apellido)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"
            SELECT 
                persona.id_persona,
                persona.nombre AS Nombre,
                persona.apellido AS apellido,
                persona.dni AS Dni,
                persona.sexo AS Sexo,
                persona.nacionalidad AS Nacionalidad,
                persona.fecha_nacimiento AS fecha_nacimiento,
                persona.correo_electronico AS correo_electronico,
                persona.telefono AS Telefono,
                persona.direccion AS Direccion,
                paciente.estado AS Estado
            FROM Pacientes paciente
            JOIN Persona persona ON paciente.id_persona = persona.id_persona
            WHERE persona.apellido LIKE @apellido";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@apellido", "%" + apellido + "%");

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable tabla = new DataTable();
                    adapter.Fill(tabla);
                    return tabla;
                }
            }
        }













        public bool modificarPaciente(int idPersona, string nombre, string apellido, string dni, string sexo, string nacionalidad, DateTime fechaNacimiento, string correoElectronico, string telefono, string direccion, bool estado)
        {
            using (SqlConnection sqlConnection = accesoDatos.ObtenerConexion())
            {
                string consultaPersona = @"UPDATE Persona
                                   SET dni = @dni, nombre = @nombre, apellido = @apellido, sexo = @sexo, nacionalidad = @nacionalidad,
                                       fecha_nacimiento = @fechaNacimiento, correo_electronico = @correoElectronico, telefono = @telefono, direccion = @direccion
                                   WHERE id_persona = @idPersona";

                using (SqlCommand sqlCommand = new SqlCommand(consultaPersona, sqlConnection))
                {
                    sqlCommand.Parameters.AddWithValue("@dni", dni);
                    sqlCommand.Parameters.AddWithValue("@nombre", nombre);
                    sqlCommand.Parameters.AddWithValue("@apellido", apellido);
                    sqlCommand.Parameters.AddWithValue("@sexo", sexo);
                    sqlCommand.Parameters.AddWithValue("@nacionalidad", nacionalidad);
                    sqlCommand.Parameters.AddWithValue("@fechaNacimiento", fechaNacimiento);
                    sqlCommand.Parameters.AddWithValue("@correoElectronico", correoElectronico);
                    sqlCommand.Parameters.AddWithValue("@telefono", telefono);
                    sqlCommand.Parameters.AddWithValue("@direccion", direccion);
                    sqlCommand.Parameters.AddWithValue("@idPersona", idPersona);

                    int filasAfectadasPersona = sqlCommand.ExecuteNonQuery();

                    string consultaPaciente = @"UPDATE Pacientes
                                       SET estado = @estado
                                       WHERE id_persona = @idPersona";

                    using (SqlCommand sqlCommandPaciente = new SqlCommand(consultaPaciente, sqlConnection))
                    {
                        sqlCommandPaciente.Parameters.AddWithValue("@estado", estado ? 1 : 0);
                        sqlCommandPaciente.Parameters.AddWithValue("@idPersona", idPersona);

                        int filasAfectadasPaciente = sqlCommandPaciente.ExecuteNonQuery();

                        return filasAfectadasPersona > 0 && filasAfectadasPaciente > 0;
                    }
                }
            }
        }


        public bool ExisteDni(string dni, int idPersona)
        {
            const string consulta = @"SELECT COUNT(*) FROM Persona 
                              WHERE dni = @dni AND id_persona <> @idPersona";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@dni", dni);
                    cmd.Parameters.AddWithValue("@idPersona", idPersona);

                    return (int)cmd.ExecuteScalar() > 0;
                }
            }
        }


        public bool ExisteCorreo(string correo, int idPersona)
        {
            const string consulta = @"SELECT COUNT(*) FROM Persona 
                              WHERE correo_electronico = @correo AND id_persona <> @idPersona";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@correo", correo);
                    cmd.Parameters.AddWithValue("@idPersona", idPersona);

                    return (int)cmd.ExecuteScalar() > 0;
                }
            }
        }

        public bool ExisteTelefono(string telefono, int idPersona)
        {
            const string consulta = @"SELECT COUNT(*) FROM Persona 
                              WHERE telefono = @telefono AND id_persona <> @idPersona";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@telefono", telefono);
                    cmd.Parameters.AddWithValue("@idPersona", idPersona);

                    return (int)cmd.ExecuteScalar() > 0;
                }
            }
        }












    }
}

