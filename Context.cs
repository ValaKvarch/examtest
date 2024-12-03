using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ISPp_1_22_Yuritsyna
{
    internal class Context
    {
        private static Master_polEntities context;
        public static Master_polEntities GetContext()
        {
            if (context == null) context = new Master_polEntities(); return context;
        }
    }
}
