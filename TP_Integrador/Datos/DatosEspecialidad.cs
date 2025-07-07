using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Entidades;

namespace Datos
{
    public class DatosEspecialidad
    {
        private AccesoDatos accesoDatos = new AccesoDatos();

        public DatosEspecialidad() { }
        public List<Especialidad> ObtenerEspecialidades()
        {
            List<Especialidad> lista = new List<Especialidad>();
            string consulta = "SELECT * FROM Especialidades";

            SqlDataReader sqlDataReader = accesoDatos.ObtenerReader(consulta);
            while (sqlDataReader.Read())
            {
                lista.Add(new Especialidad
                {
                    Id_especialidad = Convert.ToInt32(sqlDataReader["id_especialidad"]),
                    Nombre_especialidad = sqlDataReader["nombre_especialidad"].ToString()
                });
            }
            return lista;
        }

    }
}
