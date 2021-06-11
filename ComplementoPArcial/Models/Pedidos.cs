using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComplementoPArcial.Models
{
    public class Pedidos
    {
        public int IdPedido { set; get; }
        public DateTime FechaPedido { set; get; }
        public int IdCliente { set; get; }
        public int IdEmpleado { set; get; }
        public string DireccionEntrega { set; get; }
        public int Estado { set; get; }
    }
}