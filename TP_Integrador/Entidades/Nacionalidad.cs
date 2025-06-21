using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Nacionalidad
    {
        private int idNacionalidad;
        private string nombreNacionalidad;

        public Nacionalidad() { }

        public int IdNacionalidad
        {
            get { return idNacionalidad; }
            set { idNacionalidad = value; }
        }

        public string NombreNacionalidad
        {
            get { return nombreNacionalidad; }
            set { nombreNacionalidad = value; }
        }
    }
}
