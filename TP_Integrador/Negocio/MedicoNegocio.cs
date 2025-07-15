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

        public bool AltaMedicoConHorario(Medico medico, List<string> dias, TimeSpan desde, TimeSpan hasta)
        {
            int idMed = datosMedico.AltaMedico(medico);

            if (idMed <= 0) return false;

            foreach (string dia in dias)
            {
                datosMedico.AltaHorarioMedico(idMed, dia, desde, hasta);
            }
            return true;
        }

        public DataTable ObtenerTodosLosMedicos()
        {
            return datosMedico.ObtenerTodosLosMedicos();
        }

        public DataTable ObtenerTodosLosMedicosActivos()
        {
            return datosMedico.ObtenerTodosLosMedicosActivos();
        }

        public DataTable BuscarMedicoPorApellido(string apellido)
        {
            return datosMedico.BuscarMedicoPorApellido(apellido);
        }

        public DataTable ListarTodosLosMedicosPorApellido(string apellido)
        {
            return datosMedico.ListarTodosLosMedicosPorApellido(apellido);
        }

        public bool CrearUsuarioMedico(int idPersona, string usuario, string contrasenia)
        {
            return datosMedico.CrearUsuarioMedico(idPersona, usuario, contrasenia);
        }

        public DataTable ObtenerMedicosSinUsuario()
        {
            return datosMedico.ObtenerMedicosSinUsuario();
        }

        public DataTable ObtenerMedicosSinUsuarioPorApellido(string apellido)
        {
            return datosMedico.ObtenerMedicosSinUsuarioPorApellido(apellido);
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

        public bool TurnoMedicoAsistencia(string DNI, string observacion, bool asistencia, bool estado)
        {
            return datosMedico.TurnoMedicoAsistencia(DNI, observacion, asistencia, estado);
        }
        public DataTable TurnosMedicoporDNI(int id_persona, string dni)
        {
            return datosMedico.TurnosMedicoporDNI(id_persona, dni);
        }
        public DataTable TurnosMedicoPorEstado(int id_persona, int asistencia)
        {
            return datosMedico.TurnosMedicoPorEstado(id_persona, asistencia);

        }
    }
}
