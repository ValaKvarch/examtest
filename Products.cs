//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ISPp_1_22_Yuritsyna
{
    using System;
    using System.Collections.Generic;
    
    public partial class Products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Products()
        {
            this.Production = new HashSet<Production>();
        }
    
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string Partner { get; set; }
        public Nullable<int> NumberProducts { get; set; }
        public Nullable<System.DateTime> DateSale { get; set; }
        public Nullable<int> SupplierID { get; set; }
    
        public virtual Partners Partners { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Production> Production { get; set; }
    }
}
