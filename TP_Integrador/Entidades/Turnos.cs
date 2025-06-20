using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Turno
    {
        private int id_turno;
        private int id_medico;
        private int id_paciente;
        private DateTime dia_turno;
        private TimeSpan hora_turno;
        private string observacion;
        private string asistencia;
        private bool estado;


        public Turno()
        {
        }

        public int Id_turno { get => id_turno; set => id_turno = value; }
        public int Id_medico { get => id_medico; set => id_medico = value; }
        public int Id_paciente { get => id_paciente; set => id_paciente = value; }
        public DateTime Dia_turno { get => dia_turno; set => dia_turno = value; }
        public TimeSpan Hora_turno { get => hora_turno; set => hora_turno = value; }
        public string Observacion { get => observacion; set => observacion = value; }
        public string Asistencia { get => asistencia; set => asistencia = value; }
        public bool Estado { get => estado; set => estado = value; }
    }
}

