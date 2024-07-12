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



public partial class tokengenerate : System.Web.UI.Page
{
    sqlquery kk = new sqlquery();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["dbconn"]);
        string fid = Request["id"].ToString();
        string key = Request["keys"].ToString();
        string[] lines = File.ReadAllLines(Server.MapPath("~/keyword/") + key);
        string query = "select * from keys";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        string n1 = "";
        string s1 = "";
        string p1 = "";
       
        string a1 = "";
        string b1 = "";
        string x1 = "";
        string y1 = "";
        string mtp = "";
        if (dr.Read())
        {

            n1 = dr["n"].ToString();
            s1 = dr["s"].ToString();
            p1 = dr["p"].ToString();
            a1 = dr["a"].ToString();
            b1 = dr["b"].ToString();
            x1 = dr["x1"].ToString();
          
            y1 = dr["y1"].ToString();
            mtp = dr["mtp"].ToString();

        }
       int  n = Convert.ToInt32(n1);
       int s = Convert.ToInt32(s1);
        // p i q
       BigInteger p = new BigInteger(p1);
        //q = p.Pow(n);
       BigInteger q = p;

        // E - krivulja secp256k1 - y ^ 2 = x ^ 3 + 0*x + 7
        BigInteger a = new BigInteger(a1);
        BigInteger b = new BigInteger(b1);
        FpCurve E = new FpCurve(q, a, b);

        // P
        BigInteger x11 = new BigInteger(x1);
        BigInteger y11 = new BigInteger(y1);
        FpFieldElement x = (FpFieldElement)E.FromBigInteger(x11); // new FpFieldElement(q, x1);
        FpFieldElement y = (FpFieldElement)E.FromBigInteger(y11); // new FpFieldElement(q, y1);

        FpPoint P = new FpPoint(E, x, y);

        BigInteger mtp1 = new BigInteger(mtp);

        FpPoint Ppub = (FpPoint)P.Multiply(mtp1);
      
      
        BigInteger k = new BigInteger("115792089237316195423570985008687907852837564279074904382605163141518161494337", 10);


        Encrypt e1 = new Encrypt("TG@gmail.com", P, Ppub, p, E, k);
        
        foreach (string line in lines)
        {
            string result = "";

            char[] j = line.ToCharArray();
            for (int i = 0; i < j.Length; i++)
            {
                string poruka = j[i].ToString();
                Cypher c = e1.GetCypher(poruka);
                result = result + c.V;
            }

            bool jj1 = kk.insert_Docdb("insert into encryptedindex(fid,keys) values('" + fid + "','" + result + "')");

            string status="complete";
            jj1 = kk.insert_Docdb("update filelist set status='"+status+"' where fid='"+fid+"'");

            
        }
        Response.Redirect("tokrngenerator.aspx");



    }
}