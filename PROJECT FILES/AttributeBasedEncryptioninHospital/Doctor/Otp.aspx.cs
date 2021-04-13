using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Device.Location;

public partial class Doctor_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Intrusiondetection"].ConnectionString);
    save s = new save();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Sendotp_Click(object sender, EventArgs e)
    {
        string number = "";
        Random random = new Random();
        int n = random.Next(0, 1000);
        number = n.ToString("D4");
        SendEmail(ddlpatientid.Text, "OTP", Convert.ToString(n));       
        Button1.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select otp from otp where email='" + ddlpatientid.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            s.insert("delete from otp where email='"+ddlpatientid.Text+"'");
            Session["userid"] = ddlpatientid.Text;
            Response.Redirect("PatientProfile.aspx",true);           
        }
    }

    protected string SendEmail(string toAddress, string subject, string body)
    {
        string result = "Message Sent Successfully..!!";
        string senderID = "trynew101102@gmail.com";// use sender’s email id here..
        const string senderPassword = "trynew123"; // sender password here…
        try
        {
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com", // smtp server address here…
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                Timeout = 30000,
            };
            MailMessage message = new MailMessage(senderID, toAddress, subject, body);
            smtp.Send(message);
        }
        catch (Exception ex)
        {
            result = "Error sending email.!!!";
        }
        return result;
    }
}