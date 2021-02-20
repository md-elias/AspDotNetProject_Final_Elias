using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject_Final_Elias.DataSourceControls
{
    public partial class InstractorInformation : System.Web.UI.Page
    {
        InstractorInformationDataContext instractor = new InstractorInformationDataContext();


        private void ClearData()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            ddlGender.Text = ddlGender.Items[0].Text;
            txtDOB.Text = DateTime.Today.Date.ToString();
            txtPassword.Text = "";
            txtConfirmPass.Text = "";
        }

        private void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (instractor = new InstractorInformationDataContext())
            {
                Instractor ins = new Instractor
                {
                    InstractorName = txtName.Text,
                    Email = txtEmail.Text,
                    Gender = ddlGender.SelectedValue,
                    DOB = Convert.ToDateTime(txtDOB.Text),
                    Password = txtPassword.Text
                };
                instractor.Instractors.InsertOnSubmit(ins);
                instractor.SubmitChanges();
            }
            DataLoad();
            ClearData();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int instractorid = Convert.ToInt32(lblTid.Text);
            string name = (FindControl("txtName") as TextBox).Text;
            string email = (FindControl("txtEmail") as TextBox).Text;
            string gender = (FindControl("ddlGender") as DropDownList).Text;
            string dob = (FindControl("txtDOB") as TextBox).Text;
            string password = (FindControl("txtPassword") as TextBox).Text;

            using (instractor = new InstractorInformationDataContext())
            {
                Instractor ins = (from x in instractor.Instractors
                                   where x.InstractorID == instractorid
                                  select x).FirstOrDefault();
                ins.InstractorName = name;
                ins.Email = email;
                ins.Gender = gender;
                ins.DOB = Convert.ToDateTime(dob);
                ins.Password = password;

                instractor.SubmitChanges();
            }
            DataLoad();
            ClearData();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int instractorid = Convert.ToInt32(lblTid.Text);
            using (instractor = new InstractorInformationDataContext())
            {
                Instractor ins = (from x in instractor.Instractors
                                   where x.InstractorID == instractorid
                                  select x).FirstOrDefault();
                instractor.Instractors.DeleteOnSubmit(ins);
                instractor.SubmitChanges();
            }

            DataLoad();
            ClearData();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblTid.Text = GridView1.SelectedRow.Cells[1].Text;
            txtName.Text = GridView1.SelectedRow.Cells[2].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[3].Text;
            ddlGender.Text = GridView1.SelectedRow.Cells[4].Text;
            txtDOB.Text = GridView1.SelectedRow.Cells[5].Text;
            txtPassword.Text = GridView1.SelectedRow.Cells[6].Text;
        }
    }
}