﻿using System;

namespace Model
{
    public class StudentPrinterInfo
    {


        [DisplayName("First Name")]
        public string FirstName { get; set; }

        [DisplayName("Last Name")]
        public string LastName { get; set; }

        [DisplayName("Sex")]
        public string Sex { get; set; }

        [DisplayName("Address")]
        public string Address { get; set; }

        //Employee Information Properties
        [DisplayName("Employee ID")]
        public string EmployeeId { get; set; }

        [DisplayName("Employee Name")]
        public string EmployeeName { get; set; }

        [DisplayName("DOB")]
        public string DOB { get; set; }

        [DisplayName("Gender")]
        public string Gender { get; set; }
    }
}
}
