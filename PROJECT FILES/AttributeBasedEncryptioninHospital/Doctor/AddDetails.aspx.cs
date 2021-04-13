using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        fi.SaveAs(Server.MapPath("~/Files/" + fi.PostedFile.FileName));
        save s = new save();
        s.insert("insert into Comment(Patientid,Test,Comment,DoctorName,Price,Files) values('" + ddlpatientid.Text + "','" + ddltest.Text + "','" + txtcomment.Text + "','" + Session["doctor"] + "','"+fi.PostedFile.FileName+"')");
        save.ShowAlertMessage("Information saved Successfully");
    }
}