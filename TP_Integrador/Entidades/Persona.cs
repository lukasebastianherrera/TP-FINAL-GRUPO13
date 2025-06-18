using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Persona
    {
        public string DNI;
        private string Nombre;
        private string Apellido;
        private char Sexo;
        private string Nacionalidad;
        private string FechaDeNacimiento;
        private string CorreoElectronico;
        private string Telefono;
        private string Direccion;
        private int Id_Localidad;

        public Persona() { }



        public string DNI1 { get => DNI; set => DNI = value; }
        public string Nombre1 { get => Nombre; set => Nombre = value; }
        public string Apellido1 { get => Apellido; set => Apellido = value; }
        public char Sexo1 { get => Sexo; set => Sexo = value; }
        public string Nacionalidad1 { get => Nacionalidad; set => Nacionalidad = value; }
        public string FechaDeNacimiento1 { get => FechaDeNacimiento; set => FechaDeNacimiento = value; }
        public string CorreoElectronico1 { get => CorreoElectronico; set => CorreoElectronico = value; }
        public string Telefono1 { get => Telefono; set => Telefono = value; }
        public string Direccion1 { get => Direccion; set => Direccion = value; }
        public int IdLocalidad { get => Id_Localidad; set => Id_Localidad = value; }
    }

}
