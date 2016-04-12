using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class User
    {
        private int UserID;
        private String FirstName;
        private String MiddleName;
        private String LastName;
        private Address Address;
        private String Email;
        private String Phone;
        private String Fax;
        private String Password;
        private String CreateDate;
        private String LastModified;

        public int getUserID()
        {
            return UserID;
        }
        public String getFirstName()
        {
            return FirstName;
        }

        public String getMiddleName()
        {
            return MiddleName;
        }

        public String getLastName()
        {
            return LastName;
        }

        public Address getAddress()
        {
            return Address;
        }

        public String getEmail()
        {
            return Email;
        }

        public String getPhone()
        {
            return Phone;
        }

        public String getFax()
        {
            return Fax;
        }

        public String getPassword()
        {
            return Password;
        }

        public String getCreateDate()
        {
            return CreateDate;
        }

        public String getLastModified()
        {
            return LastModified;
        }
    }
}