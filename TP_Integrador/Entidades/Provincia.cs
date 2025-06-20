using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Provincia
    {
        private int id_provincia;
        private string nombre_provincia;

        public Provincia() { }

        public int Id_provincia { get => id_provincia; set => id_provincia = value; }
        public string Nombre_provincia { get => nombre_provincia; set => nombre_provincia = value; }
    }
}
