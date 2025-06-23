using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidades;

namespace Negocio
{
    public class PersonaNegocio
    {
        private DatosPersona datos = new DatosPersona();
        public PersonaNegocio() { }

        public bool ExisteDni(string dni)
        {
            return datos.ExisteDni(dni);
        }
    }
}
