using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspDotNetProject_Final_Elias.UserControls
{
    public partial class TraineeInfoUsrCtrl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView.DataBind();
            }
        }

        public void CleanAllControl()
        {
            txtDOB.Text = DateTime.Today.Date.ToString();
            txtEmail.Text = "";
            txtName.Text = "";
            txtCourseId.Text = "";
            chkAgree.Checked = false;
            ddlGender.Text = ddlGender.Items[0].ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtName.Text != "" && txtDOB.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO TraineeInformation(TraineeName,Email,Gender,DOB,CourseID) VALUES(@traineeName,@email,@gender,@dob,@courseID)", con);
                    cmd.Parameters.AddWithValue("@traineeName", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@dob", txtDOB.Text);
                    cmd.Parameters.AddWithValue("@courseID", txtCourseId.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Values";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtName.Text != "" && txtDOB.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE TraineeInformation SET TraineeName=@traineeName,Email=@email,Gender=@gender,DOB=@dob,CourseID=@courseID WHERE TraineeId=@traineeid)", con);
                    cmd.Parameters.AddWithValue("@traineeName", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@dob", txtDOB.Text);
                    cmd.Parameters.AddWithValue("@courseID", txtCourseId.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Values";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("DELETE FROM TraineeInformation WHERE TraineeId=@traineeid", con);
                cmd.Parameters.AddWithValue("@traineeid", lblTid.Text);

                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }

        protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = GridView.SelectedRow.Cells[2].Text;
            txtEmail.Text = GridView.SelectedRow.Cells[3].Text;
            ddlGender.Text = GridView.SelectedRow.Cells[4].Text;
            txtDOB.Text = GridView.SelectedRow.Cells[5].Text;
            txtCourseId.Text = GridView.SelectedRow.Cells[6].Text;

            lblTid.Text = GridView.SelectedRow.Cells[1].Text;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            CleanAllControl();
        }
    }
}