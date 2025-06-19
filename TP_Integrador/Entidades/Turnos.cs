using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Turnos
    {
        internal class Turno
        {
            private int idTurno;
            private int idMedico;
            private int idPaciente;
            private string diaTurno;
            private string horaTurno;
            private string observacion;
            private bool asistencia;
            private bool estado;

           
            public Turno()
            {
            }

            public int IdTurno { get => idTurno; set => idTurno = value; }
            public int IdMedico { get => idMedico; set => idMedico = value; }
            public int IdPaciente { get => idPaciente; set => idPaciente = value; }
            public string DiaTurno { get => diaTurno; set => diaTurno = value; }
            public string HoraTurno { get => horaTurno; set => horaTurno = value; }
            public string Observacion { get => observacion; set => observacion = value; }
            public bool Asistencia { get => asistencia; set => asistencia = value; }
            public bool Estado { get => estado; set => estado = value; }
        }



    }
}
