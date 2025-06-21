using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Negocio
{
    public class NacionalidadNegocio
    {
        private DatosNacionalidad datos = new DatosNacionalidad();

        public NacionalidadNegocio() { }

        public List<Nacionalidad> ObtenerNacionalidades()
        {
            DataTable tabla = datos.ObtenerNacionalidades();

            List<Nacionalidad> lista = new List<Nacionalidad>();

            foreach (DataRow fila in tabla.Rows)
            {
                Nacionalidad n = new Nacionalidad
                {
                    IdNacionalidad = Convert.ToInt32(fila["id_nacionalidad"]),
                    NombreNacionalidad = fila["nombre_nacionalidad"].ToString()
                };
                lista.Add(n);
            }

            return lista;
        }
    }
}
