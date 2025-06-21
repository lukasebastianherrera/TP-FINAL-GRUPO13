using Datos;
using Entidades;
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

        public Nacionalidad[] ObtenerNacionalidades()
        {
            DataTable tabla = datos.ObtenerNacionalidades();
            Nacionalidad[] lista = new Nacionalidad[tabla.Rows.Count];

            int i = 0;
            foreach (DataRow fila in tabla.Rows)
            {
                Nacionalidad n = new Nacionalidad
                {
                    IdNacionalidad = Convert.ToInt32(fila["id_nacionalidad"]),
                    NombreNacionalidad = fila["nombre_nacionalidad"].ToString()
                };
                lista[i] = n;
                i++;
            }

            return lista;
        }
    }
}
