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
     
            return datosPaciente.ObtenerTodosLosPacientes();

        }

        public DataTable BuscarPacienteConDNI(string dni)
        {
            return datosPaciente.BuscarPacienteConDNI(dni);

        }

        public DataTable ListarTodosLosPacientesPorApellido(string apellido)
        {
            return datosPaciente.ListarTodosLosPacientesPorApellido(apellido);
        }

        public DataTable BuscarPacientePorApellido(string apellido)
        {
            return datosPaciente.BuscarPacientePorApellido(apellido);
        }
        public DataTable BuscarPacientePorDNI(string dni)
        {
            return datosPaciente.BuscarPacientePorDNI(dni);
        }

        public bool BajaLogicaPacientePorDni(string dni)
        {
            return datosPaciente.BajaLogicaPaciente(dni);
        }
        /*  public DataTable obtenerTodosLosPacientesyDatos()
          {
              return datosPaciente.obtenerTodosLosPacientesyDatos();
          }*/

        /* public bool modificarPaciente(string nombre, string apellido, string dni , string sexo, string nacionalidad, DateTime fechaNacimiento, string correoElectronico, string telefono, string direccion, bool estado )
         {
             return datosPaciente.modificarPaciente(nombre, apellido, dni, sexo, nacionalidad, fechaNacimiento, correoElectronico, telefono, direccion, estado);
         }*/

        /*-----------------------------------------------------*/

        public DataTable BuscarPacienteconApellido(string apellido)
        {
            return datosPaciente.BuscarPacienteconApellido(apellido);
        }



        public DataTable obtenerTodosLosPacientesyDatos()
        {
            return datosPaciente.obtenerTodosLosPacientesyDatos();
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


