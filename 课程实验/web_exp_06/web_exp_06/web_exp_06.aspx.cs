using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

using MySql.Data.MySqlClient;
using System;
using System.Web.Configuration;


namespace web_exp_06
{
    public partial class web_exp_06 : System.Web.UI.Page
    {
        public static MySqlConnection CreateConn()
        {
            string _conn = WebConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(_conn);
            return conn;
        }
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    MySqlConnection conn = CreateConn();
        //    string sqlQuery = "SELECT * FROM edi_sign";
        //    MySqlCommand comm = new MySqlCommand(sqlQuery, conn);
        //    conn.Open();
        //    MySqlDataReader dr = comm.ExecuteReader();
        //    if (dr.Read())
        //    {
        //        Label1.Text = (String)dr[1].ToString().Trim();
        //    }
        //    conn.Close();
        //}
        //MySqlConnection conn;
        //MySqlCommand comm;
        //string strCon = "Data Source=(local);Database=数据库名;Uid=帐号;Pwd=密码";
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["SortOrder"] = "we_id";
                ViewState["OrderDire"] = "ASC";
                bind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }

        //删除
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            string sqlstr = "delete from wb_essay_test where we_id=  '" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            MySqlConnection conn = CreateConn();
            MySqlCommand comm = new MySqlCommand(sqlstr, conn);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            bind();


        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        //更新
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            MySqlConnection conn = CreateConn();
            string sqlstr = "update wb_essay_test set we_theme='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim() + "',we_title='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim() + "',we_content='"
                + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim() + "' where we_id='"
                + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            MySqlCommand comm = new MySqlCommand(sqlstr, conn);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
           
            bind();
        }
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = CreateConn();

            string sql = "insert into wb_essay_test(we_id,we_theme,we_title,we_content) values('" + we_id.Text + "','" + we_theme.Text + "','" + we_title.Text + "','" + we_content.Text + "')";
            MySqlCommand comm = new MySqlCommand(sql, conn);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            bind();

        }
        //取消
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //执行循环，保证每条数据都可以更新
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                //首先判断是否是数据行
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //当鼠标停留时更改背景色
                    e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#80BCEB'");
                    //当鼠标移开时还原背景色
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
                }
            }
            if (e.Row.RowState == (DataControlRowState.Edit | DataControlRowState.Alternate) || e.Row.RowState == DataControlRowState.Edit)
            {
                TextBox tbUpdate;
                for (int i = 1; i < e.Row.Cells.Count; i++)
                {
                    if (e.Row.Cells[i].Controls.Count != 0)
                    {
                        tbUpdate = e.Row.Cells[i].Controls[0] as TextBox;
                        if (tbUpdate != null)
                        {
                            tbUpdate.Height = Unit.Pixel(50);
                            tbUpdate.TextMode = TextBoxMode.MultiLine;
                        }
                        tbUpdate = e.Row.Cells[3].Controls[0] as TextBox;
                        tbUpdate.Width = Unit.Pixel(1000);

                    }
                }
            }
        }
        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            string sPage = e.SortExpression;
            if (ViewState["SortOrder"].ToString() == sPage)
            {
                if (ViewState["OrderDire"].ToString() == "Desc")
                    ViewState["OrderDire"] = "ASC";
                else
                    ViewState["OrderDire"] = "Desc";
            }
            else
            {
                ViewState["SortOrder"] = e.SortExpression;
            }
            bind();
        }
        //绑定
        public void bind()
        {
            string sqlstr = "select * from wb_essay_test";
            MySqlConnection conn = CreateConn();
             //实例化SqlDataAdapter对象
            MySqlDataAdapter da = new MySqlDataAdapter(sqlstr, conn);
             //实例化数据集DataSet
            DataSet ds = new DataSet();
             //将返回的数据存放到DataSet中名为LoanMaterial的DataTable中
            conn.Open();
            da.Fill(ds, "wb_essay_test");
            DataView view = ds.Tables["wb_essay_test"].DefaultView;
            string sort = (string)ViewState["SortOrder"] + " " + (string)ViewState["OrderDire"];
            view.Sort = sort;

            //设置数据源，用于填充控件中的项的值列表
            GridView1.DataSource = view;
            // GridView1.DataKeyNames = new string[] { "we_id" };//主键
            GridView1.DataBind();
            conn.Close();
        }

    }
}