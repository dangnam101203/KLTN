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
    
    public partial class CUSTOMER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CUSTOMER()
        {
            this.THE_ORDER = new HashSet<THE_ORDER>();
        }
    
        public string ID { get; set; }
        public string LAST_NAME { get; set; }
        public string FIRST_NAME { get; set; }
        public string PHONE_NUMBER { get; set; }
        public string ORDER_ADDRESS { get; set; }
        public string EMAIL { get; set; }
        public string USER_NAME { get; set; }
        public string PASSWORD { get; set; }
        public Nullable<System.DateTime> time_create { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<THE_ORDER> THE_ORDER { get; set; }
    }
}
