using AspDotNetProject_Final_Elias.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspDotNetProject_Final_Elias.BL
{
    public class TraineeRegBL
    {
        private string _Name;
        private string _Gender;
        private string _Email;
        private string _DOB;
        private string _MobileNo;
        private string _Address;
        private string _Password;

        public string Name { get => _Name; set => _Name = value; }
        public string Gender { get => _Gender; set => _Gender = value; }
        public string Email { get => _Email; set => _Email = value; }
        public string DOB { get => _DOB; set => _DOB = value; }
        public string MobileNo { get => _MobileNo; set => _MobileNo = value; }
        public string Address { get => _Address; set => _Address = value; }
        public string Password { get => _Password; set => _Password = value; }

        public bool Save()
        {
            try
            {
                TraineeRegistration reg = new TraineeRegistration();
                reg.RegisterData(_Name, _Gender, _Email, _DOB, _MobileNo, _Address, _Password);
                return true;
            }
            catch (Exception)
            {
                throw new Exception("Not Executed");
            }
        }
    }
}