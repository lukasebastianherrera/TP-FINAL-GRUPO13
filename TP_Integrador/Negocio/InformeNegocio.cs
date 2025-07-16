using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;


namespace Negocio
{
    public class InformeNegocio
    {
        DatosInforme datosInforme = new DatosInforme();

        public InformeNegocio() { }
        public DataTable InformeEspecialidad(int idespec) { return datosInforme.InformePorEspecialidad(idespec); }



        public string TurnosTotalPorMesYAnterior(int idespec)
        {
            string resultado;
            int mes = DateTime.Now.Month;
            int totalMes = datosInforme.ObtenerTurnosPorMes(idespec, mes);
            int totalAnterior = datosInforme.ObtenerTurnosPorMes(idespec, mes - 1);
            if (totalMes > 0) { resultado = "El Total de turnos de este mes fueron: " + totalMes + ". <br>"; } else { resultado = "No hubo turnos de esta especialidad este mes. <br>"; }
            if (totalAnterior > 0) { resultado = resultado + "El Total de turnos del mes anterior fueron: " + totalAnterior + ". <br>"; } else { resultado = resultado + "No hubo turnos de esta especialidad el mes anterior. <br>"; }
            return resultado;
        }


        public string PorcentajeTurnosCancelados(int idespec)
        {
            string resultado;
            int mes = DateTime.Now.Month;
            double mesActual = datosInforme.ObtenerPorcentajeTurnosPorEstado(idespec, mes, 0);
            double mesAnterior = datosInforme.ObtenerPorcentajeTurnosPorEstado(idespec, mes - 1, 0);
            if (mesActual > 0) { resultado = "<br> El porcentaje de turnos cancelados este mes fue de " + mesActual + "%. <br>"; } else { resultado = "<br> No hubo turnos cancelados este mes. <br>"; }
            if (mesAnterior > 0) { resultado = resultado + "El porcentaje de turnos cancelados el mes anterior fue de " + mesAnterior + "%. <br>"; } else { resultado = resultado + "No hubo turnos cancelados el mes anterior. <br>"; }

            return resultado;
        }

        public string listadoMedicosConPendientes(int idespecialidad)
        {
            string medicos = string.Join("\n", datosInforme.ObtenerMedicosConTurnosPendientes(idespecialidad));
            string resultado;

            if (medicos.Length > 0)
            {
                resultado = "Parece que estos Medicos tienen Turnos vencidos sin Obvservacion: <br> " + medicos;
            }
            else { resultado = string.Empty; }

            return resultado;
        }
        public string PromedioPorEspecialidad(int idespec)
        {
            string resultado = "<br> El Porcentaje de Asistencias son: <br>";



            double? presentes = datosInforme.ObtenerPorcentajeAsistencia(idespec, 1);
            double? ausentes = datosInforme.ObtenerPorcentajeAsistencia(idespec, 0);



            if (presentes > 0) { resultado = resultado + presentes + " % Presentes y "; } else { resultado = resultado + "0 % Presentes y "; }
            if (ausentes > 0) { resultado = resultado + ausentes + " % Ausentes. <br>"; } else { resultado = resultado + "0 % Ausentes. <br>"; }

            double? pendientes = datosInforme.ObtenerPorcentajePendientes(idespec);


            if (pendientes > 0)
            {
                resultado = resultado + "<br> El Porcentaje de turnos Pendientes es de: " + pendientes + "%. <br>";
            }
            else { resultado = resultado + "<br> No hay turnos Pendientes. <br>"; }


            if (listadoMedicosConPendientes(idespec).Length > 0)
            {
                resultado = resultado + "<br>" + listadoMedicosConPendientes(idespec);
            }

            return resultado;
        }



        public List<string> PorcentajeAsistenciasYFaltas(int mes)
        {
            return datosInforme.ObtenerInformeAsistenciasPorEspecialidad(mes);
        }

    }
}
