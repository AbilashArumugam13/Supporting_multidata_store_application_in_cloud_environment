using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Org.BouncyCastle.Math;
using Org.BouncyCastle.Math.EC;
using System;
using System.IO;
public partial class attributecenter : System.Web.UI.Page
{
    sqlquery kk = new sqlquery();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        string sql = "select * from keys";
        bool k1 = kk.check(sql);
        if (k1 == true)
        {
            Setup nn = new Setup();
            
            int n = nn.n1;
            int s = nn.s1;
            BigInteger p = nn.p1;
            BigInteger k = nn.k1;
            BigInteger a = nn.a1;
            BigInteger b = nn.b1;
            BigInteger x1 = nn.x11;
            BigInteger y1 = nn.y11;
            BigInteger mtp = nn.mtp1;
            string sql1 = "insert into keys(n,s,p,k,a,b,x1,y1,mtp) values('" + n + "','" + s + "','" + p + "','" + k + "','" + a + "','" + b + "','" + x1 + "','" + y1 + "','" + mtp + "')";

            bool jj1 = kk.insert_Docdb(sql1);
// System.Text.StringBuilder sb = kk.messagedisplay("Sucessfully Creating the Master and public key");

          //  ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }
        else
        {
            
               
            System.Text.StringBuilder sb = kk.messagedisplay("Already Created the Master and Public key");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        // tajni ključ
        
    }
    protected void Button3_Click(object sender, System.EventArgs e)
    {
        Setup setup = new Setup();
        string sql11 = "select * from keys";
        setup.keydetails(sql11);
        FpPoint d_id = setup.Exctract("TG@gmail.com");

        string sql = "select * from TSk";
        bool k1 = kk.check(sql);
        if (k1 == true)
        {


            BigInteger x = setup.x2;
            BigInteger y = setup.y2;
            BigInteger mtp = setup.mtp2;

            string sql1 = "insert into TSk(x,y,mtp) values('" + x + "','" + y + "','" + mtp + "')";
            bool jj1 = kk.insert_Docdb(sql1);
            System.Text.StringBuilder sb = kk.messagedisplay("Sucessfully Creating the TSK private key");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }
        else
        {
            
            System.Text.StringBuilder sb = kk.messagedisplay("Already Creating the TSK private key");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

    
    }
    protected void Button4_Click(object sender, System.EventArgs e)
    {
        Setup setup = new Setup();
        string sql11 = "select * from keys";
        setup.keydetails(sql11);
        string status = "pending";
        string role="Data user";

        string sql1 = "select * from register where role1='"+role+"' and status='"+status+"' ";

        getdata k = kk.datacollection(sql1);
        List<string> m = k.getda();
        List<string> m1 = k.getdb();
        List<string> m2 = k.getdc();
        for (int i = 0; i < m.Count; i++)
        {
            string status1 = "complete";
            string data = m[i].ToString();
            FpPoint d_id = setup.Exctract(data);
            string sql = "update register set status='"+status1+"' where emailid='"+data+"'";
          kk.insert_Docdb(sql);
               BigInteger x = setup.x2;
            BigInteger y = setup.y2;
            BigInteger mtp = setup.mtp2;
            sql = "insert into datausersecrete(uid,attributename,x,y,mtp) values('"+m1[i].ToString()+"','"+data+"','" + x + "','" + y + "','" + mtp + "')";
            bool jj1 = kk.insert_Docdb(sql);
            

        }
        
        System.Text.StringBuilder sb = kk.messagedisplay("Sucessfully Creating Data User Secrete key");
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        Response.Redirect("attributecenter.aspx");
         
    

    }
}