using System.ComponentModel;


namespace Model
{
    public class StudentAccountInfo
    {
        [DisplayName("First Name")]
        public string FirstName { get; set; }

        [DisplayName("Last Name")]
        public string LastName { get; set; }

        [DisplayName("StudentID")]
        public string StudentID { get; set; }

        [DisplayName("Password")]
        public string Password { get; set; }

        //Place orders//

        [DisplayName("Order No")]
        public string OrderNo { get; set; }

        [DisplayName("Date")]
        public string Date { get; set; }

        [DisplayName("File")]
        public string File { get; set; }

        [DisplayName("Pages")]
        public string Pages { get; set; }

        [DisplayName("Print Type")]
        public string PrintType { get; set; }

        [DisplayName("Print color")]
        public string Printcolor { get; set; }
    }
}

