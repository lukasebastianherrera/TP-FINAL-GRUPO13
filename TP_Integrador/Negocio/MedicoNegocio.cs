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
    public class MedicoNegocio
    {
        private DatosMedico datosMedico = new DatosMedico();

        public MedicoNegocio() { }

        public bool AltaMedico(Medico medico)
        {
            return datosMedico.AltaMedico(medico);
        }

        public DataTable ObtenerTodosLosMedicos()
        {
            return datosMedico.ObtenerTodosLosMedicos();
        }

        public DataTable ObtenerTodosLosMedicosActivos()
        {
            return datosMedico.ObtenerTodosLosMedicosActivos();
        }

        public DataTable BuscarMedicoPorDNI(string dni)
        {
            return datosMedico.BuscarMedicoPorDNI(dni);
        }

        public DataTable BuscarMedicoConDNI(string dni)
        {
            return datosMedico.BuscarMedicoConDNI(dni);
        }



        public bool BajaLogicaMedico(string dni)
        {
            return datosMedico.BajaLogicaMedico(dni);
        }
        public bool ModificarMedico(string nombre, string apellido, string dni, string legajo, string IdEspecialidad, bool estado)
        {
            return datosMedico.ModificarMedico(nombre, apellido, dni, legajo, IdEspecialidad, estado);
        }

        public DataTable TurnosMedico(int id_persona)
        {
            return datosMedico.TurnosMedico(id_persona);
        }


    }
}
