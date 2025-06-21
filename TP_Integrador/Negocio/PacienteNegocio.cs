using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class PacienteNegocio
    {
        DatosPaciente datos = new DatosPaciente();

        public List<Paciente> BuscarPorDni(string dni)
        {
            return datos.ObtenerPorDni(dni);
        }

        public void BajaLogicaPaciente(int idPaciente)
        {
            datos.EliminarPaciente(idPaciente);
        }
    }
}
