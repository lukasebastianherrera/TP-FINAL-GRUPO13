using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Datos
{
    public class DatosInforme
    {
        private AccesoDatos accesoDatos = new AccesoDatos();

        public DatosInforme() { }

        public DataTable InformePorEspecialidad(int idespecialidad)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"SELECT CONCAT(pacientes_persona.apellido, ', ', pacientes_persona.nombre) AS Nombre_Paciente, 
                            pacientes_persona.dni AS DNI_Paciente,
                            CONCAT(medicos_persona.apellido, ', ', medicos_persona.nombre) AS Nombre_Medico,
                            m.legajo AS Legajo_Medico,
                            t.dia_turno AS Dia_Turno,
                            t.hora_turno AS Hora_Turno,
                            t.asistencia AS Asistencia,
                            t.observacion AS Observacion
                            FROM Turnos t
                            JOIN Pacientes p ON t.id_paciente = p.id_paciente
                            JOIN Persona pacientes_persona ON p.id_persona = pacientes_persona.id_persona
                            JOIN Medicos m ON t.id_medico = m.id_medico
                            JOIN Persona medicos_persona ON m.id_persona = medicos_persona.id_persona
                            JOIN Especialidades e ON m.id_especialidad = e.id_especialidad
                            WHERE e.id_especialidad = @idespec
                              AND t.estado = 1
                            ORDER BY t.dia_turno, t.hora_turno;";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@idespec", idespecialidad);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable tabla = new DataTable();
                    adapter.Fill(tabla);
                    return tabla;
                }
            }
        }





        public double? ObtenerPorcentajeAsistencia(int idEspecialidad, int tipoAsistencia)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {

                const string consulta = @"SELECT
                CAST(COUNT(CASE WHEN t.asistencia = @tipoAsistencia AND t.observacion != NULL THEN 1 END) * 100.0 /
                     NULLIF(COUNT(*), 0) AS FLOAT) AS Porcentaje
            FROM Turnos t
            JOIN Medicos m ON t.id_medico = m.id_medico
            WHERE t.estado = 1 AND m.id_especialidad = @idEspecialidad; ";



                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@tipoAsistencia", tipoAsistencia);
                    cmd.Parameters.AddWithValue("@idEspecialidad", idEspecialidad);



                    object resultado = cmd.ExecuteScalar();
                    if (resultado != DBNull.Value && resultado != null)
                    {
                        return Convert.ToDouble(resultado);
                    }
                    else
                    {
                        return null;
                    }
                }
            }
        }

        public double? ObtenerPorcentajePendientes(int idEspecialidad)
        {
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"SELECT
                CAST(COUNT(CASE WHEN t.asistencia = 0 AND t.observacion IS NULL THEN 1 END) * 100.0 /
                     NULLIF(COUNT(*), 0) AS FLOAT) AS Porcentaje
            FROM Turnos t
            JOIN Medicos m ON t.id_medico = m.id_medico
            WHERE t.estado = 1  AND m.id_especialidad = @idEspecialidad; ";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@idEspecialidad", idEspecialidad);




                    object resultado = cmd.ExecuteScalar();
                    if (resultado != DBNull.Value && resultado != null)
                    {
                        return Convert.ToDouble(resultado);
                    }
                    else
                    {
                        return null;
                    }
                }
            }
        }

        public List<string> ObtenerMedicosConTurnosPendientes(int idEspecialidad)
        {
            var legajos = new List<string>();

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"
            SELECT DISTINCT m.legajo
            FROM Turnos t
            JOIN Medicos m ON t.id_medico = m.id_medico
            WHERE 
                t.estado = 1
                AND t.asistencia = 0
                AND t.observacion IS NULL
                AND t.dia_turno < GETDATE()
                AND m.id_especialidad = @idEspecialidad;";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@idEspecialidad", idEspecialidad);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            legajos.Add(reader.GetString(0));
                        }
                    }
                }
            }

            return legajos;
        }

        public int ObtenerTurnosPorMes(int idespecialidad, int mes)
        {
            int total = 0;
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"
        SELECT  
            SUM(CASE 
                    WHEN MONTH(t.dia_turno) = @mes 
                     AND YEAR(t.dia_turno) = YEAR(GETDATE()) 
                THEN 1 ELSE 0 END)
        FROM Turnos t
        JOIN Medicos m ON t.id_medico = m.id_medico
        WHERE m.id_especialidad = @idespecialidad
         ;";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@idespecialidad", idespecialidad);
                    cmd.Parameters.AddWithValue("@mes", mes);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            total = reader.IsDBNull(0) ? 0 : reader.GetInt32(0);
                        }
                    }
                }
            }
            return total;
        }

        public double ObtenerPorcentajeTurnosPorEstado(int idespecialidad, int mes, int estado)
        {
            double porcentaje = 0;
            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"
        SELECT  
            CAST(SUM(CASE 
                     WHEN MONTH(t.dia_turno) = @mes 
                      AND YEAR(t.dia_turno) = YEAR(GETDATE()) 
                     THEN 1 ELSE 0 END) * 100.0 / 
                 NULLIF(COUNT(*), 0) AS FLOAT) AS Porcentaje
        FROM Turnos t
        JOIN Medicos m ON t.id_medico = m.id_medico
        WHERE m.id_especialidad = @idespecialidad
          AND t.estado = @estado;";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@idespecialidad", idespecialidad);
                    cmd.Parameters.AddWithValue("@mes", mes);
                    cmd.Parameters.AddWithValue("@estado", estado);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            porcentaje = reader.IsDBNull(0) ? 0 : Convert.ToDouble(reader.GetValue(0));
                        }
                    }
                }
            }
            return porcentaje;
        }

        public List<string> ObtenerInformeAsistenciasPorEspecialidad(int mes)
        {
            var informe = new List<string>();

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                const string consulta = @"
                    SELECT 
                    esp.nombre_especialidad AS Especialidad,
                    SUM(CASE WHEN t.asistencia = 1 THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(*), 0) AS PorcentajeAsistencias,
                    SUM(CASE WHEN t.asistencia = 0 AND t.observacion != NULL THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(*), 0) AS PorcentajeFaltas
                    FROM Turnos t
                    JOIN Medicos m ON t.id_medico = m.id_medico
                    JOIN Especialidades esp ON m.id_especialidad = esp.id_especialidad
                    WHERE 
                    t.estado = 1
                    AND MONTH(t.dia_turno) = @mes
                    AND YEAR(t.dia_turno) = YEAR(GETDATE())
                    GROUP BY esp.nombre_especialidad
                    ORDER BY esp.nombre_especialidad;";

                using (SqlCommand cmd = new SqlCommand(consulta, conexion))
                {
                    cmd.Parameters.AddWithValue("@mes", mes);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string especialidad = reader.GetString(0);
                            decimal porcentajeAsistencias = reader.IsDBNull(1) ? 0 : Math.Round(reader.GetDecimal(1), 2);
                            decimal porcentajeFaltas = reader.IsDBNull(2) ? 0 : Math.Round(reader.GetDecimal(2), 2);

                            string linea = $"{especialidad} tuvo {porcentajeAsistencias}% de asistencias y {porcentajeFaltas}% de faltas. <br>";
                            informe.Add(linea);
                        }
                    }
                }
            }


            return informe;
        }

    }

}