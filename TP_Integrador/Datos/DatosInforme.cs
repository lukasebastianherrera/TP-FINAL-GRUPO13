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
                //aa
            }
        }
    }
}
