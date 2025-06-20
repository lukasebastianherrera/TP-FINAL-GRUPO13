using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Especialidad
    {
        private int id_especialidad;
        private string nombre_especialidad;

        public Especialidad() { }

        public int Id_especialidad { get => id_especialidad; set => id_especialidad = value; }
        public string Nombre_especialidad { get => nombre_especialidad; set => nombre_especialidad = value; }
    }
}
