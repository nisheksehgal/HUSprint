using System;

namespace BusinesslayerHUSprint
{
    public class StudentInfo
    {


        public static List<DemographicInformation> GetDemoForIndiv()
        {
            //Declare and iniaite the object
            DemographicInformation IndivDemo = new DemographicInformation();
            var ListOfIndivDemo = new List<DemographicInformation>();

            //Call Data Access Layer OR Web Service Layer and Get the data back as Dataset
            DataSet dsIndivDemo = new DataSet();
            dsIndivDemo = DADemographicsInformation.GetDemographicsUsingDBWithConfig();

            //Transfer the data from Dataaccess (Dataset) to Model object
            if (dsIndivDemo.Tables.Count > 0)
            {
                ListOfIndivDemo = dsIndivDemo.Tables[0].AsEnumerable().Select(m => new DemographicInformation
                {
                    FirstName = Convert.ToString(m["FirstName"]),
                    LastName = Convert.ToString(m["LastName"]),
                    Sex = Convert.ToString(m["Sex"]),
                    Address = Convert.ToString(m["Address"])

                }).ToList();

            }


            return ListOfIndivDemo;
        }

        public static List<DemographicInformation> GetIndividulDemographicData()
        {
            DemographicInformation IndivDemo = new DemographicInformation();
            var IndivDemoList = new List<DemographicInformation>();
            DataSet dsGetDemographicsReport = new DataSet();

            //Calling service
            //var testService =  new MyDemographicsInfoService.MyDemographicsInfoServiceClient();
            //var testServ = new DemoInformationService.DemoInformationServiceClient();
            //Get the demographics data by NOT USING the database
            //dsGetDemographicsReport = DADemographicsInformation.GetDemographicsWithOutDB();
            //dsGetDemographicsReport = testService.GetDemographicsWithOutDB();

            //Get the demographics from database but get the connection string details from web.Config file
            //dsGetDemographicsReport = DADemographicsInformation.GetDemographicsUsingDBWithConfig();
            //dsGetDemographicsReport = testService.GetDemographicsUsingDBWithConfig();

            //Get the demographics from database but define the connection string in this method
            dsGetDemographicsReport = DADemographicsInformation.GetDemographicsUsingDBWithOutConfig();
            //dsGetDemographicsReport = testService.GetDemographicsUsingDBWithOutConfig();

            if (dsGetDemographicsReport.Tables.Count > 0)
            {
                IndivDemoList = dsGetDemographicsReport.Tables[0].AsEnumerable().Select(m => new DemographicInformation
                {

                    FirstName = Convert.ToString(m["FirstName"]),
                    LastName = Convert.ToString(m["LastName"]),
                    Sex = Convert.ToString(m["Sex"]),
                    Address = Convert.ToString(m["Address"])
                }).ToList();

            }

            //Build the Business Logic here based on the requirements from the client

            return IndivDemoList;

        }

        public static List<DemographicInformation> GetEmployeeInformationData()
        {
            //Initiate the object - Demographics, list, datase
            DemographicInformation IndivDemo = new DemographicInformation();
            var IndivDemoList = new List<DemographicInformation>();

            DataSet dsGetEmployeeInformationReport = new DataSet();

            //Call the service and get the dataset back
            var testService = new MyDemographicsInfoService.MyDemographicsInfoServiceClient();
            //Get the demographics from database but define the connection string in this method
            //dsGetEmployeeInformationReport = DADemographicsInformation.GetDemographicsUsingDBWithOutConfig();
            dsGetEmployeeInformationReport = testService.GetDemographicsUsingDBWithOutConfig();

            //Transfer the data into list object
            if (dsGetEmployeeInformationReport.Tables.Count > 0)
            {
                IndivDemoList = dsGetEmployeeInformationReport.Tables[0].AsEnumerable().Select(m => new DemographicInformation
                {
                    EmployeeId = Convert.ToString(m["Employee Number"]),
                    EmployeeName = Convert.ToString(m["Employee Name"]),
                    DOB = Convert.ToString(m["Emp Date of Birth"]),
                    Gender = Convert.ToString(m["Gender"]),

                }).ToList();








            }

            return IndivDemoList;

        }

    }
}
}
