using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComplementoPArcial.Models
{
    public class Pedidos
    {
        public int Idpedido { set; get; }
        public DateTime Fechapedido { set; get; }
        public int Idcliente { set; get; }
        public int Idempleado { set; get; }
        public string Direccionentrega { set; get; }
        public int Estado { set; get; }
    }
}