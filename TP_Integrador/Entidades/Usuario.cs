using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Usuario
    {
        private int id_usuario;
        private int id_persona;
        private string nombre_usuario;
        private string contrasenia;
        private string tipo_usuario;

        public Usuario() { }

        public int Id_usuario { get => id_usuario; set => id_usuario = value; }
        public int Id_persona1 { get => id_persona; set => id_persona = value; }
        public string Nombre_usuario { get => nombre_usuario; set => nombre_usuario = value; }
        public string Contrasenia { get => contrasenia; set => contrasenia = value; }
        public string Tipo_usuario { get => tipo_usuario; set => tipo_usuario = value; }
    }
}
