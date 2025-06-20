using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Localidad
    {
        private int id_localidad;
        private string nombre_localidad;
        private int id_provincia;

        public Localidad() { }

        public int Id_localidad { get => id_localidad; set => id_localidad = value; }
        public string Nombre_localidad { get => nombre_localidad; set => nombre_localidad = value; }
        public int Id_provincia { get => id_provincia; set => id_provincia = value; }
    }
}
