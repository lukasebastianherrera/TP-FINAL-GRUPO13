using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    class AccesoDatos
    {
        //private const string Conexion = "Data Source=GERSONGUTIERREZ\\SQLEXPRESS;Initial Catalog=clinica;Integrated Security=True;Encrypt=False";
        private const string Conexion = "Data Source=localhost\\sqlexpress; Initial Catalog=clinica;Integrated Security = True";
        //private const string Conexion = "Data Source=LENOVO\\SQLEXPRESS;Initial Catalog=clinica;Integrated Security=True";
        //private const string Conexion = "Data Source=DESKTOP-IN37CD7\\SQLEXPRESS;Initial Catalog=clinica;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";
        public AccesoDatos() { }

        public SqlConnection ObtenerConexion()
        {
            SqlConnection conexion = new SqlConnection(Conexion);
            try
            {
                conexion.Open();
                return conexion;
            }
            catch (Exception ex)
            {
                throw new Exception("Error al abrir la conexión con la base de datos");
            }
        }

        public SqlDataReader ObtenerReader(string consultaSql)
        {
            SqlConnection conexion = ObtenerConexion();

            SqlCommand command = new SqlCommand(consultaSql, conexion);
            return command.ExecuteReader();
        }
    }
}
