using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContractGenerator
{
    public class Clients
    {
        private Address clientAddressInfo = new Address();
        private int clientID;
        private int contractID;
        private int projectNumber;
        private char clientInitials;
        private String esignature;

        public Address getAddress()
        {
            return clientAddressInfo;
        }

        public int getClientID()
        {
            return clientID;
        }

        public int getContractID()
        {
            return contractID;
        }

        public int getProjectNumber()
        {
            return projectNumber;
        }

        public char getClientInitials()
        {
            return clientInitials;
        }

        public String getESignature()
        {
            return esignature;
        }
    }
}