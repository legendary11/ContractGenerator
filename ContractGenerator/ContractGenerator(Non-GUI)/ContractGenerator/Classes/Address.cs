using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class Address
    {
        private String companyName;
        private String primaryContact;
        private String street1;
        private String street2;
        private String city;
        private String state;
        private String email;
        private String domainName;
        private String phone;
        private int zip;

        public String getCompanyName()
        {
            return companyName;
        }

        public String getPrimaryContact()
        {
            return primaryContact;
        }

        public String getStreet1()
        {
            return street1;
        }

        public String getStreet2()
        {
            return street2;
        }

        public String getCity()
        {
            return city;
        }

        public String getState()
        {
            return state;
        }

        public String getEmail()
        {
            return email;
        }

        public String getDomainName()
        {
            return domainName;
        }

        public String getPhone()
        {
            return phone;
        }

        public int getZip()
        {
            return zip;
        }


    }
}