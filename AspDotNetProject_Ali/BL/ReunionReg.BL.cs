using System;
using AspDotNetProject_Ali.DAL;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspDotNetProject_Ali.BL
{
    public class ReunionReg
    {
        private string _FullName;
        private string _EmailAddress;
        private string _Gender;
        private string _DOB;
        private string _PhoneNo;
        private string _RoundNo;
        private string _Message;

        public string FullName { get => _FullName; set => _FullName = value; }
        public string EmailAddress { get => _EmailAddress; set => _EmailAddress = value; }
        public string Gender { get => _Gender; set => _Gender = value; }
        public string DOB { get => _DOB; set => _DOB = value; }
        public string PhoneNo { get => _PhoneNo; set => _PhoneNo = value; }
        public string RoundNo { get => _RoundNo; set => _RoundNo = value; }
        public string Message { get => _Message; set => _Message = value; }

        public bool Save()
        {
            try
            {
                ReuRegistration reg = new ReuRegistration();
                reg.RegisterData(_FullName, _EmailAddress, _Gender, _DOB, _PhoneNo, _RoundNo, _Message);
                return true;
            }
            catch (Exception)
            {
                throw new Exception("Not Executed");
            }
        }

    }


}