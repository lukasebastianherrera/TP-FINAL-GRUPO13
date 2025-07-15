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

        public DataTable ObtenerTodosLosPacientesActivos()
        {
            return datosPaciente.ObtenerTodosLosPacientesActivos();
        }

        public DataTable BuscarPacientePorApellidoActivos(string apellido)
        {
            return datosPaciente.BuscarPacientePorApellidoActivos(apellido);
        }

        public DataTable ObtenerTodosLosPacientesyDatos()
        {
            return datosPaciente.ObtenerTodosLosPacientesyDatos();
        }

        public DataTable ListarTodosLosPacientesPorApellido(string apellido)
        {
            return datosPaciente.ListarTodosLosPacientesPorApellido(apellido);
        }

        public bool BajaLogicaPacientePorDni(string dni)
        {
            return datosPaciente.BajaLogicaPaciente(dni);
        }

        public bool ModificarPaciente(string nombre, string apellido, string dni , string sexo, string nacionalidad, DateTime fechaNacimiento, string correoElectronico, string telefono, string direccion, bool estado )
        {
            return datosPaciente.ModificarPaciente(nombre, apellido, dni, sexo, nacionalidad, fechaNacimiento, correoElectronico, telefono, direccion, estado);
        }

    }
}

