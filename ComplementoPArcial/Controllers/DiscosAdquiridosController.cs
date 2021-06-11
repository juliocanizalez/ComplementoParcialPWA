using ComplementoPArcial.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ComplementoPArcial.Controllers
{
    public class DiscosAdquiridosController : Controller
    {

        // GET: DiscosAdquiridos
        public ActionResult Index()
        {
            using (complementoEntities db = new complementoEntities())
            {
                List<ViewModel> viewModel = db.Database
                    .SqlQuery<ViewModel>("Select c.nombres, d.titulo FROM cliente c " +
                    "INNER JOIN pedido p ON p.idcliente=c.idcliente " +
                    "INNER JOIN detallepedido dp ON p.idpedido = dp.idpedido " +
                    "INNER JOIN discos d ON d.iddisco = dp.iddisco").ToList();
                
                return View(viewModel);
            }
     
        }
    }
}