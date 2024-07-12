using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    sqlquery kk = new sqlquery();
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string ss = "select * from register where emailid='" + TextBox2.Text + "'";
        bool jj=kk.check("select * from register where emailid='"+TextBox2.Text+"'");
      
        if (jj == false)
        {

            System.Text.StringBuilder sb = kk.messagedisplay("already Existed");
           
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

        }
        else
        {
         
            string status = " ";
            string ss1 = "insert into register(name,emailid,mno,password,role1,status) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + status + "')";
     
            if (DropDownList1.SelectedItem.Text == "Dataowner")
            {
                status = "complete";
            }
            else
            {
                status = "pending";
            }
         
            bool jj1 = kk.insert_Docdb("insert into register(name,emailid,mno,password,role1,status) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+DropDownList1.SelectedItem.ToString()+"','"+status+"')");
         
            
            if (jj1 == true)
            {
                System.Text.StringBuilder sb = kk.messagedisplay("Sucessfully Account Created");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
        }
    }
    login jjk = new login();
    protected void Button2_Click(object sender, EventArgs e)
    {
        string  status = "complete";
      
       string mm = "select * from register where emailid='" + TextBox5.Text + "' and password='" + TextBox6.Text + "' and role1='" + DropDownList2.SelectedItem.ToString() + "' and status='" + status + "'";
       string dd = kk.logincheck("select * from register where emailid='" + TextBox5.Text + "' and password='" + TextBox6.Text + "' and status='" + status + "'");
        if (dd!="")
        {
            if (DropDownList2.SelectedItem.ToString() == "Dataowner")
            {

                Session["user"] = dd;
             
                Response.Redirect("dataowner.aspx");

            }
            else if (DropDownList2.SelectedItem.ToString() == "Data user")
            {

                Session["user"] = TextBox5.Text;
             
                Response.Redirect("datauser.aspx");
            }
        }
        else
        {
            if (DropDownList2.SelectedItem.ToString() == "Data user")
            {
                bool jj1 = kk.check("select * from register where emailid='" + TextBox5.Text + "' and password='" + TextBox6.Text + "' and role='" + DropDownList2.SelectedItem.ToString() + "'");
                if (jj1 == false)
                {
                    System.Text.StringBuilder sb = kk.messagedisplay("Secrete key not generated");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }
                else
                {
                    System.Text.StringBuilder sb = kk.messagedisplay("Login Failed");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }

            }

            if (DropDownList2.SelectedItem.ToString() == "Attribute Center" && TextBox5.Text=="AC@gmail.com" && TextBox6.Text=="AC1234567890")
            {
                Response.Redirect("attributecenter.aspx");
                Session["userid"] = TextBox5.Text;
                
            }
            else if (DropDownList2.SelectedItem.ToString() == "Token Generator" && TextBox5.Text == "TG@gmail.com" && TextBox6.Text == "TG1234567890")
            {
                Response.Redirect("tokrngenerator.aspx");
                Session["userid"] = TextBox5.Text;
            }
            else
            {
                System.Text.StringBuilder sb = kk.messagedisplay("Login Failed");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
        }

    }
}