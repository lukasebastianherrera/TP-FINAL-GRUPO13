using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Datos
{
    
    public class DatosUsuario
    {
        public DatosUsuario() { }

        private AccesoDatos acceso = new AccesoDatos();
        public int TipoUsuario(string user, string pass) {
            //busca en la base de datos si existe y trae el codigo tipo de usuario
            int tipo;
            using (SqlConnection conexion = acceso.ObtenerConexion())
            {
                string consulta = @"SELECT tipo_usuario FROM Usuarios WHERE @USUARIO = nombre_usuario AND @CONTRASENIA = contrasenia";
                SqlCommand cmd = new SqlCommand(consulta, conexion);
                cmd.Parameters.AddWithValue("@USUARIO", user);
                cmd.Parameters.AddWithValue("@CONTRASENIA", pass);


                SqlDataReader sqlDataReader = acceso.ObtenerReader(cmd.ToString());
                

                sqlDataReader.Read();


                tipo = Convert.ToInt32(sqlDataReader["tipo_usuario"]);

                return tipo;
            }
        }

        public string UsuarioLogueado(string user, string password) { 
        //busca en la base de datos y trae el nombre que lo guarda en la sesion
        string nombre = "";
            /*
           using (SqlConnection conexion = acceso.ObtenerConexion())
            {
                string consulta = @"SELECT id_persona FROM Usuarios WHERE " + user + " = nombre_usuario AND " + pass + " = contrasenia";
                SqlDataReader sqlDataReader = acceso.ObtenerReader(consulta);

                sqlDataReader.Read();

                
                 = Convert.ToInt32(sqlDataReader["tipo_usuario"]);

               
            }
            */
            return nombre;
        }


    }
}
