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

        public List<Localidad> ObtenerLocalidades()
        {
            List<Localidad> lista = new List<Localidad>();
            string consulta = @"SELECT * FROM Localidades";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand(consulta, conexion))
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                while (dr.Read())
                {
                    lista.Add(new Localidad
                    {
                        Id_localidad = Convert.ToInt32(dr["id_localidad"]),
                        Nombre_localidad = dr["nombre_localidad"].ToString(),
                        Id_provincia = Convert.ToInt32(dr["id_provincia"])
                    });
                }
            }
            return lista;
        }

        public List<Localidad> ObtenerLocalidadesPorProvincia(int idProvincia)
        {
            List<Localidad> lista = new List<Localidad>();
            string consulta = @"SELECT * FROM Localidades WHERE id_provincia = @prov";

            using (SqlConnection conexion = accesoDatos.ObtenerConexion())
            using (SqlCommand cmd = new SqlCommand(consulta, conexion))
            {
                cmd.Parameters.AddWithValue("@prov", idProvincia);

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        lista.Add(new Localidad
                        {
                            Id_localidad = Convert.ToInt32(dr["id_localidad"]),
                            Nombre_localidad = dr["nombre_localidad"].ToString(),
                            Id_provincia = Convert.ToInt32(dr["id_provincia"])
                        });
                    }
                }
            }

            return lista;
        }

        /*public Localidad[] ObtenerLocalidades()
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
        }*/

    }
}
