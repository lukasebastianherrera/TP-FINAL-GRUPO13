using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;

namespace Negocio
{
    public class ProvinciaNegocio
    {
        private DatosProvincia  datos = new DatosProvincia();

        public ProvinciaNegocio() { }
        public List<Provincia> ObtenerProvincias()
        {
            return datos.ObtenerProvincias();
        }
    }
}
