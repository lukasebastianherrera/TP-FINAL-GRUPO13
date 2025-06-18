using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Persona
    {
        private string dni;
        private string nombre;
        private string apellido;
        private char sexo;
        private string nacionalidad;
        private string fechaDeNacimiento;
        private string correoElectronico;
        private string telefono;
        private string direccion;
        private int idLocalidad;

        public Persona() { }

        public string Dni { get => dni; set => dni = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public char Sexo { get => sexo; set => sexo = value; }
        public string Nacionalidad { get => nacionalidad; set => nacionalidad = value; }
        public string FechaDeNacimiento { get => fechaDeNacimiento; set => fechaDeNacimiento = value; }
        public string CorreoElectronico { get => correoElectronico; set => correoElectronico = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public int IdLocalidad { get => idLocalidad; set => idLocalidad = value; }
    }

}
