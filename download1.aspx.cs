using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using Org.BouncyCastle.Math;
using Org.BouncyCastle.Math.EC;
using System;
using System.Threading;
using System.Net;

public partial class download : System.Web.UI.Page
{
    string uid = "";
    sqlquery kk = new sqlquery();
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Session["user"].ToString();
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["dbconn"]);


            string query = "select * from filelist where fid='" + Request["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            int count = 0;
            if (dr.Read())
            {

                count = Convert.ToInt32(dr["dcount"].ToString());
            }
            count = count + 1;


            bool jj1 = kk.insert_Docdb("update filelist set dcount='" + count.ToString() + "' where fid='" + Request["id"].ToString() + "'");
           
            string strURL = Server.MapPath("~/Files/") + Request["fname"].ToString();
         
            WebClient req = new WebClient();
            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearContent();
            response.ClearHeaders();
            response.Buffer = true;
            response.AddHeader("Content-Disposition", "attachment;filename=\"" + strURL + "\"");
            byte[] data = req.DownloadData(strURL);
            response.BinaryWrite(data);
            response.End();
            
          
        }
        catch (Exception ex)
        {

        }

    }
    protected void Button1_Click(object sender, System.EventArgs e)
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
        string query = "insert into filelist(fname,keys,uid,location,status,dcount,vcount) values('" + fname + "','" + keyword + "','" + uid + "','" + file + "','" + status + "','" + count + "','" + count + "')";

        bool jj1 = kk.insert_Docdb(query);
        System.Text.StringBuilder sb = kk.messagedisplay("Sucessfully Inserted");

        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        Response.Redirect("dataowner.aspx");
    }
}