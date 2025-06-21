using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Entidades;

namespace Datos
{
    public class DatosLocalidades
    {
        AccesoDatos accesoDatos = new AccesoDatos();
        public DatosLocalidades() { }

        public Localidad[] ObtenerLocalidades()
        {
            string consulta = "SELECT * FROM dbo.Localidades";
            SqlDataReader sqlDataReader = accesoDatos.ObtenerReader(consulta);

            int cantidad = 0;
            while (sqlDataReader.Read())
            {
                cantidad++;
            }
            sqlDataReader.Close();

            Localidad[] localidades = new Localidad [cantidad];

            sqlDataReader = accesoDatos.ObtenerReader(consulta);
            int i = 0;
            while (sqlDataReader.Read())
            {
                localidades[i] = new Localidad
                {
                    Id_localidad = Convert.ToInt32(sqlDataReader["id_localidad"]),
                    Nombre_localidad = sqlDataReader["nombre_localidad"].ToString()
                };
                i++;
            }
            sqlDataReader.Close();
            return localidades;
        }

    }
}
