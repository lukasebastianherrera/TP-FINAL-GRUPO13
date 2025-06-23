using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;

namespace Negocio
{
    public class LocalidadNegocio
    {
        private DatosLocalidades datos = new DatosLocalidades();

        public LocalidadNegocio() { }
        public List<Localidad> ObtenerLocalidades()
        {
            return datos.ObtenerLocalidades();
        }

        public List<Localidad> ObtenerLocalidades(int idProvincia)
        {
            return datos.ObtenerLocalidadesPorProvincia(idProvincia);
        }
    }
}