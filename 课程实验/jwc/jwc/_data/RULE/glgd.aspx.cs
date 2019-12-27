using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using KingosoftFrame;
namespace KingosoftFrame._data.RULE
{
	/// <summary>
	/// glgd 的摘要说明。
	/// </summary>
	public class glgd : System.Web.UI.Page
	{
		protected string TheTitle="";
		protected string TheContent="";
		protected System.Web.UI.WebControls.Literal TheAffiche;
		private void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
			DataSet ds=new DataSet();
			DAL.Base conn=new DAL.Base();
			string filePath=Page.Server.MapPath("./");
			string xmlFileName="";
			try{
				xmlFileName=this.Request.QueryString["href"].ToString();}
			catch(Exception){}

			if(xmlFileName!="")
			{
				try
				{
					xmlFileName=filePath+xmlFileName; 
					ds.ReadXml(xmlFileName); 
					if(ds.Tables[0].Rows.Count>0)
					{
						this.TheTitle=ds.Tables[0].Rows[0][0].ToString(); 
						this.TheAffiche.Text=ds.Tables[0].Rows[0][0].ToString();
						string vContent=ds.Tables[0].Rows[0][1].ToString();
						this.TheContent=(new KingosoftFrame.kingoEditTextArea().ReplaceStr("1",vContent));
					}
				}
				catch(Exception){}
			}
		}

		#region Web 窗体设计器生成的代码
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
