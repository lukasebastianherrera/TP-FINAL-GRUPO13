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

        public int AltaMedico(Medico medico)
        {
            if (ExisteMedico(medico.Dni))
                return 0;

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand("sp_AltaMedico", conexion))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@dni", medico.Dni);
                cmd.Parameters.AddWithValue("@nombre", medico.Nombre);
                cmd.Parameters.AddWithValue("@apellido", medico.Apellido);
                cmd.Parameters.AddWithValue("@sexo", medico.Sexo);
                cmd.Parameters.AddWithValue("@nacionalidad", medico.Nacionalidad);
                cmd.Parameters.AddWithValue("@fecha_nacimiento", medico.Fecha_nacimiento);
                cmd.Parameters.AddWithValue("@correo_electronico", medico.Correo_electronico);
                cmd.Parameters.AddWithValue("@telefono", medico.Telefono);
                cmd.Parameters.AddWithValue("@direccion", medico.Direccion);
                cmd.Parameters.AddWithValue("@id_localidad", medico.Id_localidad);
                cmd.Parameters.AddWithValue("@id_especialidad", medico.Id_especialidad);
                cmd.Parameters.AddWithValue("@legajo", medico.Legajo);

                return Convert.ToInt32(cmd.ExecuteScalar());
            }
        }

        public DataTable ObtenerTodosLosMedicos()
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                string consulta = @"SELECT m.ID_Medico, per.Nombre, per.Apellido, per.DNI,  m.Estado, m.id_especialidad, esp.nombre_especialidad, m.legajo  FROM Medicos m
                                    JOIN Persona per ON m.id_persona = per.id_persona
                                    JOIN Especialidades esp ON m.id_especialidad = esp.id_especialidad";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);
                return tabla;
            }
        }

        public void AltaHorarioMedico(int idMedico, string diaSemana, TimeSpan horaDesde, TimeSpan horaHasta)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand("sp_AltaHorarioMedico", conexion))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_medico", idMedico);
                cmd.Parameters.AddWithValue("@dia_semana", diaSemana);
                cmd.Parameters.AddWithValue("@hora_desde", horaDesde);
                cmd.Parameters.AddWithValue("@hora_hasta", horaHasta);

                cmd.ExecuteNonQuery();
            }
        }


        public DataTable ObtenerTodosLosMedicosActivos()
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                string consulta = @"SELECT per.Nombre, per.Apellido, per.DNI
                                     FROM Medicos m
                                    JOIN Persona per ON m.id_persona = per.id_persona
                                    where m.Estado= 1";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);
                return tabla;
            }
        }


        public DataTable BuscarMedicoConDNI(string dni)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {

                string consulta = @"SELECT per.Nombre, per.Apellido, per.DNI
                                     FROM Medicos m
                                     JOIN Persona per ON m.ID_Persona = per.ID_Persona
                                     WHERE per.DNI = @dni AND m.Estado = 1";

                SqlCommand cmd = new SqlCommand(consulta, conexion);
                cmd.Parameters.AddWithValue("@dni", dni);

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
        public bool ModificarMedico(string nombre, string apellido, string dni, string legajo, string IdEspecialidad, bool estado)
        {
            SqlConnection sqlConnection = accesoDatos.ObtenerConexion();
            string consulta = @"UPDATE Persona 
                                SET nombre = @nombre, apellido = @apellido 
                                WHERE dni = @dni";
            SqlCommand sqlCommandPersona = new SqlCommand(consulta, sqlConnection);
            sqlCommandPersona.Parameters.AddWithValue("@nombre", nombre);
            sqlCommandPersona.Parameters.AddWithValue("@apellido", apellido);
            sqlCommandPersona.Parameters.AddWithValue("@dni", dni);

            int filasafectadasPersona = sqlCommandPersona.ExecuteNonQuery();

            string consultaMedico = @"UPDATE Medicos 
                                      SET legajo = @legajo, ID_Especialidad = @idEspecialidad, estado = @estado 
                                      WHERE ID_Persona = (SELECT ID_Persona FROM Persona WHERE dni = @dni)";

            SqlCommand sqlCommandMedicos = new SqlCommand(consultaMedico, sqlConnection);


            sqlCommandMedicos.Parameters.AddWithValue("@legajo", legajo);
            sqlCommandMedicos.Parameters.AddWithValue("@idEspecialidad", IdEspecialidad);
            sqlCommandMedicos.Parameters.AddWithValue("@estado", estado);
            sqlCommandMedicos.Parameters.AddWithValue("@dni", dni);

            int filasafectadasMedicos = sqlCommandMedicos.ExecuteNonQuery();

            if (filasafectadasMedicos > 0 && filasafectadasPersona > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public DataTable TurnosMedico(int id_persona)
        {
            AccesoDatos accesoDatos = new AccesoDatos();
            SqlConnection connection = accesoDatos.ObtenerConexion();
            string consulta = @"SELECT per.nombre, per.apellido, t.dia_turno, t.hora_turno, t.observacion,  per.dni, per.sexo, per.nacionalidad,
                              per.fecha_nacimiento, per.correo_electronico, per.telefono, per.direccion, t.asistencia, t.estado FROM Turnos t
                              INNER JOIN Pacientes p ON t.id_paciente = p.id_paciente
                              INNER JOIN PERSONA per ON p.id_persona = per.id_persona
                              INNER JOIN MEDICOS m ON t.id_medico = m.id_medico
                              WHERE m.id_persona = @idpersonaMedico";
            SqlCommand sqlCommand = new SqlCommand(consulta, connection);
            sqlCommand.Parameters.AddWithValue("idpersonaMedico", id_persona);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);

            DataTable tabla = new DataTable();
            sqlDataAdapter.Fill(tabla);
            return tabla;


        }
    }
}
