//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Calobye.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class THE_ORDER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public THE_ORDER()
        {
            this.ORDER_DETAILS = new HashSet<ORDER_DETAILS>();
        }
    
        public string ID { get; set; }
        public string CUSTOMER_ID { get; set; }
        public System.DateTime DATE_ORDER { get; set; }
        public bool IS_PAID { get; set; }
        public bool DELIVERY_STATUS { get; set; }
    
        public virtual CUSTOMER CUSTOMER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ORDER_DETAILS> ORDER_DETAILS { get; set; }
    }
}
