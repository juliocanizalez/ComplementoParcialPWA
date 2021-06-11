using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ComplementoPArcial.Models
{
    public class DetallePedidos
    {
        public int IdDetalle { set; get; }
        public int IdPedido { set; get; }
        public int IdDiscos { set; get; }
        public int Cantidad { set; get; }
        public double PrecioVenta { set; get; }
    }
}