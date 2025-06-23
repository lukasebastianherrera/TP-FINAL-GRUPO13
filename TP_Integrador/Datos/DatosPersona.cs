using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DatosPersona
    {
        private AccesoDatos accesoDatos = new AccesoDatos();

        public DatosPersona() { }

        public bool ExisteDni(string dni)
        {
            const string consulta = @"SELECT COUNT(*) FROM dbo.Persona WHERE dni = @dni";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand(consulta, conexion))
            {
                cmd.Parameters.AddWithValue("@dni", dni);
                int cantidad = Convert.ToInt32(cmd.ExecuteScalar());
                return cantidad > 0;
            }
        }
    }
}
