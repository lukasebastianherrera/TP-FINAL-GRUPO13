using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocio
{
    public class NegocioUsuario
    {
        private DatosUsuario datosusuario = new DatosUsuario();
        public NegocioUsuario() { }

        public int TipoUsuario(string user, string pass) {
            return datosusuario.TipoUsuario(user, pass);
        }
    }
}
