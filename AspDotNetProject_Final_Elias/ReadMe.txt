Create project=>web form=>individual user account=>
Create folder=>Masterpages,Dal,BL,UserControls,ContentPages,Management

==========================================================================================
===>Register to email===>
	=>must open your email with less secure
	=>run your project
	=>click on register=>give email id, pass, confirm pass, as your choice 
==========================================================================================
==========================================================================================
===>Connect Default DataBase via App_Data===>
	=>click show all file icon under solution explorer
	=>r8 click on mdf file=>click include on project
	=>Double click on mdf file and see server explorer
===========================================================================================
MasterPages=>Take master page(OnlineAdmission.Master)
==========================================================================================
ContentPages=>Take web form with master page(OnlineAdmissionRegistration) by OnlineAdmission.Master page
==========================================================================================
UserConrols=>Take userconrol(OnlineAdmissionRegUserCtrl.ascx)
Link usercontrol in web form with master page by dragging
Design UserContrl => Write essential code in cs file
==========================================================================================
Create Table TraineeRegistrations under DefultConnection Database
==========================================================================================
DAL=>Add Class ConString=> and write essential code
===========================================================================================
                         [AUTHENTICATION SECTION]
-------------------------------------------------------------------------------------------
create 2 Web form with master page by OnlineAdmission.Master page in Masterpages folder && web.config file
Masterpages=>EmployeeRoleManageManagement.aspx;
			RegisteredTraineeInfo.aspx;
			web.config;
web.config=><authorization>
      <allow roles="Admin"/>
      <deny users="*"/>
    </authorization> include in <system.web>

UserControls=>Add RegisteredTraineeInfo.ascx=>Link with RegisteredTraineeInfo.aspx;
Design RegisteredTraineeInfo.ascx and write code in cs file