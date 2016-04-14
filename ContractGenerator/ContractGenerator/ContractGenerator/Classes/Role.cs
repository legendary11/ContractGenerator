using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class Role
    {
        private int _roleID;
        private string _roleName;
        private string _roleDes;

        public Role()
        {
            //constructor
        }

        public int RoleID { get; set; }
        public string RoleName { get; set; }
        public string RoleDes{get; set;}
        
    }
}