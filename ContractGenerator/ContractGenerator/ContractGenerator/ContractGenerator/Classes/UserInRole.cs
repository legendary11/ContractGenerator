using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class UserInRole
    {
       
        private User user;
        private Role role;


        public int getUserID()
        {
            return user.getUserID();
        }

        public int getRoleID()
        {
            return role.getRoleID();
        }

    }
}