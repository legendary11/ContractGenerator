using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class Role
    {
        private int RoleID;
        private String RoleName;
        private String RoleDes; 

        public int getRoleID()
        {
            return RoleID;
        }

        public String getRoleName()
        {
            return RoleName;
        }

        public String getRoleDes()
        {
            return RoleDes;
        }
    }
}