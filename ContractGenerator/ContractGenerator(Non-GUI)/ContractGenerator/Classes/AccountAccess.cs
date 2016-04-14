using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{

    public class AccountAccess
    {
        private int UserID;
        private String IPAddress;
        private DateTime DateTime;

        public int getUserID()
        {
            return UserID;
        }

        public String getIpAddress()
        {
            return IPAddress;
        }

        public DateTime getDateTime()
        {
            return DateTime;
        }

        public void setUserID(int userID)
        {
            UserID = userID;
        }

        public void setIPAddress(String ipAddress)
        {
            IPAddress = ipAddress;
        }

        public void setDateTime(DateTime dateTime)
        {
            DateTime = dateTime;
        }
    }
}
