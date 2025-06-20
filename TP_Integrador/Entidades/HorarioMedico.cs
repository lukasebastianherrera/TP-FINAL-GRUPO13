using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class HorarioMedico
    {
        private int id_horario;
        private int id_medico;
        private string dia_semana;
        private TimeSpan hora_desde;
        private TimeSpan hora_hasta;

        public HorarioMedico() { }

        public int Id_horario { get => id_horario; set => id_horario = value; }
        public int Id_medico { get => id_medico; set => id_medico = value; }
        public string Dia_semana { get => dia_semana; set => dia_semana = value; }
        public TimeSpan Hora_desde { get => hora_desde; set => hora_desde = value; }
        public TimeSpan Hora_hasta { get => hora_hasta; set => hora_hasta = value; }
    }
}
