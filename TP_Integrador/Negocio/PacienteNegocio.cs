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

        public DataTable BuscarPacientePorDNI(string dni)
        {
            return datosPaciente.BuscarPacientePorDNI(dni);
        }

        public bool BajaLogicaPacientePorDni(string dni)
        {
            return datosPaciente.BajaLogicaPaciente(dni);
        }
    }
}

