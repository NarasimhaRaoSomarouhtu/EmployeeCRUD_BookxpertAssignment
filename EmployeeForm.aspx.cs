using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeCRUD_BookxpertAssignment
{
    public partial class EmployeeForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=NARASIMHANAIDU;Initial Catalog=EmployeeData;Integrated Security=True");
        

        public object ConfigurationManager { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(txtId.Text) || !int.TryParse(txtId.Text, out int id))
            {
                Label1.Text = "Valid Id is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtName.Text))
            {
                Label3.Text = "Name is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtDesig.Text))
            {
                Label4.Text = "Designation is required.";
                return;
            }

            if (DropDownList2.SelectedIndex == 0)
            {
                Label8.Text = "Gender is required.";
                return;
            }

            if (DropDownList1.SelectedIndex == 0)
            {
                Label7.Text = "State is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtSal.Text) || !decimal.TryParse(txtSal.Text, out decimal salary))
            {
                Label5.Text = "Valid Salary is required.";
                return;
            }


            string checkQuery = "SELECT COUNT(1) FROM Employees WHERE Id = @Id";
            using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
            {
                checkCmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                int count = (int)checkCmd.ExecuteScalar();
                con.Close();

                if (count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Id already exists');", true);
                    return;
                }
            }

            
            string insertQuery = "INSERT INTO Employees (Id, Name, Designation, DateOfJoining, Salary, Gender, State) " +
                                 "VALUES (@Id, @Name, @Designation, @DateOfJoining, @Salary, @Gender, @State)";

            using (SqlCommand cmd = new SqlCommand(insertQuery, con))
            {
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Designation", txtDesig.Text);
                cmd.Parameters.AddWithValue("@DateOfJoining", Convert.ToDateTime(Calendar1.SelectedDate));
                cmd.Parameters.AddWithValue("@Salary", Convert.ToDecimal(txtSal.Text));
                cmd.Parameters.AddWithValue("@Gender", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                LoadRecord(); 
            }

            ClearForm(); 
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Employees order by Id", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource= dt;
            GridView2.DataBind();
        }

        private void ClearForm()
        {
            txtName.Text = "";
            txtDesig.Text = "";
            Calendar1.SelectedDate = DateTime.Now;
            txtSal.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            if (string.IsNullOrWhiteSpace(txtId.Text) || !int.TryParse(txtId.Text, out int id))
            {
                Label1.Text = "Valid Id is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtName.Text))
            {
                Label3.Text = "Name is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtDesig.Text))
            {
                Label4.Text = "Designation is required.";
                return;
            }

            if (DropDownList2.SelectedIndex == 0) 
            {
                Label8.Text = "Gender is required.";
                return;
            }

            if (DropDownList1.SelectedIndex == 0) 
            {
                Label7.Text = "State is required.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtSal.Text) || !decimal.TryParse(txtSal.Text, out decimal salary))
            {
                Label5.Text = "Valid Salary is required.";
                return;
            }

            try
            {
                
                string checkQuery = "SELECT COUNT(1) FROM Employees WHERE Id = @Id";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                {
                    checkCmd.Parameters.AddWithValue("@Id", id);
                    con.Open();
                    int count = (int)checkCmd.ExecuteScalar();
                    con.Close();

                    if (count == 0)
                    {
                        Label1.Text = "Id does not exist.";
                        return;
                    }
                }

               
                string updateQuery = "UPDATE Employees SET Name = @Name, Designation = @Designation, DateOfJoining = @DateOfJoining, " +
                                     "Salary = @Salary, Gender = @Gender, State = @State " +
                                     "WHERE Id = @Id";

                using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                {
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Designation", txtDesig.Text);
                    cmd.Parameters.AddWithValue("@DateOfJoining", Convert.ToDateTime(Calendar1.SelectedDate));
                    cmd.Parameters.AddWithValue("@Salary", salary);
                    cmd.Parameters.AddWithValue("@Gender", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedValue);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        Label1.Text = "Record updated successfully.";
                    }
                    else
                    {
                        Label1.Text = "An unexpected error occurred. Please try again.";
                    }
                }
            }
            catch (Exception ex)
            {
                Label2.Text = "An error occurred: " + ex.Message;
            }

            LoadRecord(); 
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "DELETE FROM Employees WHERE Id = @Id";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {

                    int id;
                    if (int.TryParse(txtId.Text, out id))
                    {
                        cmd.Parameters.AddWithValue("@Id", id);


                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Label1.Text = "Record deleted successfully.";
                        }
                        else
                        {
                            Label1.Text = "No record found with the specified Id.";
                        }
                    }
                    else
                    {
                        Label1.Text = "Invalid Id format. Please enter a valid integer.";
                    }
                }
            }
            catch (Exception ex)
            {
                Label2.Text = "An error occurred: " + ex.Message;
            }
            LoadRecord();
        }
    }
}
