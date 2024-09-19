﻿using System;
using System.Data.SqlClient;

namespace JobPortal
{
    public partial class JobPortalLogin : System.Web.UI.Page
    {
        // Connection string
        string connectionString = "uid=sa; password=manager@123; database=JobPortal; server=C927QV3\\SQLEXPRESS";

        // This variable will store the role (Student, Company, Admin)
        private string userRole = "Student";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Any initial setup can go here
            }
        }

        // This is triggered when the user clicks the Login button
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // Get the username and password input
            string username = UsernameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();

            // Validate input fields
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                // Handle error - display message, etc.
                Response.Write("<script>alert('Please enter both username and password.');</script>");
                return;
            }

            // Based on the selected role, validate login
            bool isValidUser = ValidateUser(username, password, userRole);

            if (isValidUser)
            {
                // Redirect user to respective dashboard or homepage
                if (userRole == "Student")
                {
                    Response.Redirect("LandingPage.aspx");
                }
                else if (userRole == "Company")
                {
                    Response.Redirect("LandingPage.aspx");
                }
                else if (userRole == "Admin")
                {
                    Response.Redirect("LandingPage.aspx");
                }
            }
            else
            {
                // Invalid login - display error message
                Response.Write("<script>alert('Invalid login credentials. Please try again.');</script>");
            }
        }

        // Method to validate user credentials based on the role
        private bool ValidateUser(string username, string password, string role)
        {
            bool isValid = false;

            // Define the query and table based on the role
            string query = "";
            if (role == "Student")
            {
                query = $"SELECT COUNT(*) FROM student WHERE semail = '{username}' AND spassword = '{password}'";
            }
            else if (role == "Company")
            {
                query = $"SELECT COUNT(*) FROM company WHERE cemail = '{username}' AND cpassword = '{password}'";
            }
            else if (role == "Admin")
            {
                query = $"SELECT COUNT(*) FROM admin WHERE aemail = '{username}' AND apassword = '{password}'";
            }

            // Establish SQL connection
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Execute the query and check if a match is found
                        int userCount = (int)cmd.ExecuteScalar();

                        if (userCount > 0)
                        {
                            isValid = true;
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log or handle the exception
                    Response.Write($"<script>alert('Error: {ex.Message}');</script>");
                }
            }

            return isValid;
        }
    }
}
