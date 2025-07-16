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
    }
    //aa
}
