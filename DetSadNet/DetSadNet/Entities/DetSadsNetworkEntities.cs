using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DetSadNet.Entities
{
    public partial class SadNetEntities
    {
        private static SadNetEntities _context;
        public static SadNetEntities GetContext()
        {
            if (_context is null)
                _context = new SadNetEntities();
            return _context;
        }
    }
}
