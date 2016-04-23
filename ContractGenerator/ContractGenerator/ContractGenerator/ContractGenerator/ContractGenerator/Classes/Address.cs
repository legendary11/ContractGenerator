using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class Address
    {
        private string _companyName;
        private string _primaryContact;
        private string _street1;
        private string _street2;
        private string _city;
        private string _state;
        private string _email;
        private string _domainName;
        private string _phone;
        private int _zip;

        public string CompanyName { get; set; }

        public string PrimaryContact { get; set; }

        public string Street1 { get; set; }

        public string Street2 { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public string Email { get; set; }

        public string DomainName { get; set; }

        public string Phone { get; set; }

        public int Zip { get; set; }

    }
}