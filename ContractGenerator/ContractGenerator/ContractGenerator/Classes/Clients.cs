using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class Clients
    {
        private Address _clientAddressInfo = new Address();
        private int _clientID;
        private int _contractID;
        private int _projectNumber;
        private char _clientInitials;
        private string _esignature;

        public Address Address{get;set;}
        
        public int ClientID{get;set;}

        public int ContractID{get;set;}
      
        public int ProjectNumber{get;set;}

        public char ClientInitials{get;set;}
      
        public string ESignature{get;set;}
      
    }
}