using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Persona
    {
        private int id_persona;
        private string dni;
        private string nombre;
        private string apellido;
        private string sexo;
        private string nacionalidad;
        private DateTime fecha_nacimiento;
        private string correo_electronico;
        private string telefono;
        private string direccion;
        private int id_localidad;

        public Persona() { }

        public int Id_persona { get => id_persona; set => id_persona = value; }
        public string Dni { get => dni; set => dni = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Sexo { get => sexo; set => sexo = value; }
        public string Nacionalidad { get => nacionalidad; set => nacionalidad = value; }
        public DateTime Fecha_nacimiento { get => fecha_nacimiento; set => fecha_nacimiento = value; }
        public string Correo_electronico { get => correo_electronico; set => correo_electronico = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public int Id_localidad { get => id_localidad; set => id_localidad = value; }
    }

}
