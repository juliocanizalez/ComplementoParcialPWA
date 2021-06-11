using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComplementoPArcial.Models
{
    public class Discos
    {
        public int IdDisco { get; set; }
        public int IdCategoria { get; set; }
        public int IdArtista { get; set; }
        public string Titulo { get; set; }
        public DateTime Fecha { get; set; }
        public string Formato { get; set; }
        public int NumeroCanciones { get; set; }
        public double Precio { get; set; }
        public string Observaciones { get; set; }
    }
}