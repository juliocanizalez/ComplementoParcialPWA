//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ComplementoPArcial.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class pedido
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public pedido()
        {
            this.detallepedidoes = new HashSet<detallepedido>();
        }
    
        public int idpedido { get; set; }
        public Nullable<System.DateTime> fechaPedido { get; set; }
        public Nullable<int> idcliente { get; set; }
        public Nullable<int> idempleado { get; set; }
        public string direccionEntrega { get; set; }
        public Nullable<int> estado { get; set; }
    
        public virtual cliente cliente { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<detallepedido> detallepedidoes { get; set; }
        public virtual empleado empleado { get; set; }
    }
}
