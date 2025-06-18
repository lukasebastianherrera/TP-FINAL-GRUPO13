using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Medico : Persona
    {
        private int id_medico;
        private int id_persona;
        private int id_especialidad;
        private string legajo;
        private bool estado;

        public Medico() { }

        public int Id_medico { get => id_medico; set => id_medico = value; }
        public int Id_persona { get => id_persona; set => id_persona = value; }
        public int Id_especialidad { get => id_especialidad; set => id_especialidad = value; }
        public string Legajo { get => legajo; set => legajo = value; }
        public bool Estado { get => estado; set => estado = value; }
    }
}
