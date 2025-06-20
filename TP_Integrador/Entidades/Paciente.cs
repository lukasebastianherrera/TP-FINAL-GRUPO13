using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Paciente : Persona
    {
        private int id_paciente;
        private bool estado;

        public Paciente() { }

        public int Id_paciente { get => id_paciente; set => id_paciente = value; }
        public bool Estado { get => estado; set => estado = value; }
    }
}
