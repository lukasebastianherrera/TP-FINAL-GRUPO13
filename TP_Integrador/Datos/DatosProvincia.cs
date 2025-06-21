using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Entidades;

namespace Datos
{
    public class DatosProvincia
    {
        AccesoDatos accesoDatos = new AccesoDatos();
        public DatosProvincia() { }

        public Provincia[] ObtenerProvincias()
        {
            string consulta = "SELECT * FROM dbo.Provincias";
            SqlDataReader sqlDataReader = accesoDatos.ObtenerReader(consulta);

            int cantidad = 0;
            while (sqlDataReader.Read())
            {
                cantidad++;
            }
            sqlDataReader.Close();

            Provincia[] provincias = new Provincia[cantidad];

            sqlDataReader = accesoDatos.ObtenerReader(consulta);
            int i = 0;
            while (sqlDataReader.Read())
            {
                provincias[i] = new Provincia
                {
                    Id_provincia = Convert.ToInt32(sqlDataReader["id_provincia"]),
                    Nombre_provincia = sqlDataReader["nombre_provincia"].ToString()
                };
                i++;
            }

            sqlDataReader.Close();
            return provincias;
        }

    }
}
