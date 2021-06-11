using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComplementoPArcial.Models
{
    public class Clientes
    {
        public int IdCliente { set; get; }
        public string Nombres { set; get; }
        public string Apellidos { set; get; }
        public string Direccion { set; get; }
    }
}