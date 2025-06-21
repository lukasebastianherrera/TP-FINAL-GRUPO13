using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosNacionalidad
    {
        private AccesoDatos accesoDatos = new AccesoDatos();

        public DataTable ObtenerNacionalidades()
        {
            string consulta = "SELECT id_nacionalidad, nombre_nacionalidad FROM Nacionalidades ORDER BY nombre_nacionalidad";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            {
                using (SqlCommand comando = new SqlCommand(consulta, conexion))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(comando))
                    {
                        DataTable tabla = new DataTable();
                        adapter.Fill(tabla);
                        return tabla;
                    }
                }
            }
        }
    }
}
