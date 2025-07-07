using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;

namespace Negocio
{
    public class EspecialidadNegocio
    {
        private DatosEspecialidad datos = new DatosEspecialidad();
        
        public List<Especialidad> ObtenerEspecialidades()
        {
            return datos.ObtenerEspecialidades();
        }
    }
}
