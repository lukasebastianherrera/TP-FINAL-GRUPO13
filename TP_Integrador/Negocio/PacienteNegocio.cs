using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class PacienteNegocio
    {
        private DatosPaciente datosPaciente = new DatosPaciente();

        public bool AltaPaciente(Paciente paciente)
        {
            return datosPaciente.AltaPaciente(paciente);
        }

        public DataTable ObtenerTodosLosPacientes()
        {
            //cambie aca obtenertodoslospacientes
            return datosPaciente.obtenerTodosLosPacientesyDatos();
        }

        public DataTable BuscarPacientePorDNI(string dni)
        {
            return datosPaciente.BuscarPacientePorDNI(dni);
        }

        public bool BajaLogicaPacientePorDni(string dni)
        {
            return datosPaciente.BajaLogicaPaciente(dni);
        }
        public DataTable obtenerTodosLosPacientesyDatos()
        {
            return datosPaciente.obtenerTodosLosPacientesyDatos();
        }

        public bool modificarPaciente(string nombre, string apellido, string dni , string sexo, string nacionalidad, DateTime fechaNacimiento, string correoElectronico, string telefono, string direccion, bool estado )
        {
            return datosPaciente.modificarPaciente(nombre, apellido, dni, sexo, nacionalidad, fechaNacimiento, correoElectronico, telefono, direccion, estado);
        }

    }
}

