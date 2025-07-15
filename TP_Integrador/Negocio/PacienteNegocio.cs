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

        public PacienteNegocio() { }

        public bool AltaPaciente(Paciente paciente)
        {
            return datosPaciente.AltaPaciente(paciente);
        }

        public DataTable ObtenerTodosLosPacientesyDatos()
        {
            return datosPaciente.ObtenerTodosLosPacientesyDatos();
        }

        public DataTable ObtenerTodosLosPacientesActivos()
        {
            return datosPaciente.ObtenerTodosLosPacientesActivos();
        }
        public DataTable BuscarPacientePorApellido(string apellido)
        {
            return datosPaciente.BuscarPacientePorApellido(apellido);
        }

        public DataTable ListarTodosLosPacientesPorApellido(string apellido)
        {
            return datosPaciente.ListarTodosLosPacientesPorApellido(apellido);
        }

        public bool BajaLogicaPacientePorDni(string dni)
        {
            return datosPaciente.BajaLogicaPacientePorDni(dni);
        }

        public DataTable BuscarPacienteConDNI(string dni)
        {
            return datosPaciente.BuscarPacienteConDNI(dni);
        }

        public DataTable BuscarPacientePorDNI(string dni)
        {
            return datosPaciente.BuscarPacientePorDNI(dni);
        }

        public DataTable BuscarPacienteconApellido(string apellido)
        {
            return datosPaciente.BuscarPacienteconApellido(apellido);
        }

        public bool modificarPaciente(
            int idPersona, string nombre, string apellido,
            string dniOriginal, string dniNuevo,
            string sexo, string nacionalidad,
            DateTime fechaNacimiento, string correoElectronico,
            string telefono, string direccion, bool estado)
        {
            if (dniOriginal != dniNuevo && datosPaciente.ExisteDni(dniNuevo, idPersona))
                return false;

            if (datosPaciente.ExisteCorreo(correoElectronico, idPersona))
                return false;

            if (datosPaciente.ExisteTelefono(telefono, idPersona))
                return false;

            return datosPaciente.modificarPaciente(
                idPersona, nombre, apellido, dniNuevo, sexo, nacionalidad,
                fechaNacimiento, correoElectronico, telefono, direccion, estado);
        }

        public bool EsDniDuplicado(string dni, int idPersona)
        {
            return datosPaciente.ExisteDni(dni, idPersona);
        }

        public bool EsCorreoDuplicado(string correo, int idPersona)
        {
            return datosPaciente.ExisteCorreo(correo, idPersona);
        }

        public bool EsTelefonoDuplicado(string telefono, int idPersona)
        {
            return datosPaciente.ExisteTelefono(telefono, idPersona);
        }
    }
}


