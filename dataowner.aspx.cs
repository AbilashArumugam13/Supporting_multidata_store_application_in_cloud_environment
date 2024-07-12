using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class dataowner : System.Web.UI.Page
{
    string uid = "";
    sqlquery kk = new sqlquery();
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Session["user"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                string folderPath = Server.MapPath("~/Files/");
                string folderPath1 = Server.MapPath("~/keyword/");

                FileUpload1.SaveAs(folderPath1 + Path.GetFileName(FileUpload1.FileName));
                FileUpload2.SaveAs(folderPath + Path.GetFileName(FileUpload2.FileName));
                string keyword = FileUpload1.FileName;
                string file = FileUpload2.FileName;
                string fname = TextBox1.Text;
                string status = "pending";
                string count = "0";
                string query = "insert into filelist(fname,keys,uid,location,status,dcount,vcount) values('" + fname + "','" + keyword + "','" + uid + "','" + file + "','" + status + "','"+count+"','"+count+"')";

                bool jj1 = kk.insert_Docdb(query);
                System.Text.StringBuilder sb = kk.messagedisplay("Sucessfully Inserted");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                Response.Redirect("dataowner.aspx");



           

    }
}