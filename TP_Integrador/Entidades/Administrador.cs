using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Administrador : Persona
    {
        private int id_administrador;
        private bool estado;

        public Administrador() { }

        public int Id_administrador { get => id_administrador; set => id_administrador = value; }
        public bool Estado { get => estado; set => estado = value; }
    }
}
