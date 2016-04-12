using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class Users
    {
        private int initiatorID;
        private int adminID;
        private int staffID;

        private String adminName;
        private String clientName;
        private String staffName;

        public int getInitiatorID()
        {
            return initiatorID;
        }

        public int getAdminID()
        {
            return adminID;
        }

        public int getStaffID()
        {
            return staffID;
        }

        public String getAdminName()
        {
            return adminName;
        }

        public String getClientName()
        {
            return clientName;
        }

        public String getStaffName()
        {
            return staffName;
        }
    }
}