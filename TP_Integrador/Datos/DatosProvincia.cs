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

        public List<Provincia> ObtenerProvincias()
        {
            List<Provincia> lista = new List<Provincia>();
            string consulta = "SELECT * FROM Provincias";

            SqlDataReader sqlDataReader = accesoDatos.ObtenerReader(consulta);
            while (sqlDataReader.Read())
            {
                lista.Add(new Provincia
                {
                    Id_provincia = Convert.ToInt32(sqlDataReader["id_provincia"]),
                    Nombre_provincia = sqlDataReader["nombre_provincia"].ToString()
                });
            }
            return lista;
        }

    }
}
