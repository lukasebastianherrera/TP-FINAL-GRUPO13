using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;

namespace Negocio
{
    public class NegocioUsuario
    {
        private DatosUsuario datosUsuario = new DatosUsuario();
        public NegocioUsuario() { }

        public Usuario ValidarLogin(string nombreUsuario, string contrasenia)
        {
            return datosUsuario.ObtenerCredenciales(nombreUsuario, contrasenia);
        }
    }
}
