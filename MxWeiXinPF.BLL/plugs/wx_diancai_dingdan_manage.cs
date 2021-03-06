﻿using System;
using System.Data;
using System.Collections.Generic;
using MxWeiXinPF.Common;
using MxWeiXinPF.Model;
namespace MxWeiXinPF.BLL
{
	/// <summary>
	/// 订单管理
	/// </summary>
	public partial class wx_diancai_dingdan_manage
	{
		private readonly MxWeiXinPF.DAL.wx_diancai_dingdan_manage dal=new MxWeiXinPF.DAL.wx_diancai_dingdan_manage();
		public wx_diancai_dingdan_manage()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
			return dal.GetMaxId();
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int id)
		{
			return dal.Exists(id);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int  Add(MxWeiXinPF.Model.wx_diancai_dingdan_manage model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(MxWeiXinPF.Model.wx_diancai_dingdan_manage model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int id)
		{
			
			return dal.Delete(id);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string idlist )
		{
			return dal.DeleteList(idlist );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public MxWeiXinPF.Model.wx_diancai_dingdan_manage GetModel(int id)
		{
			
			return dal.GetModel(id);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<MxWeiXinPF.Model.wx_diancai_dingdan_manage> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<MxWeiXinPF.Model.wx_diancai_dingdan_manage> DataTableToList(DataTable dt)
		{
			List<MxWeiXinPF.Model.wx_diancai_dingdan_manage> modelList = new List<MxWeiXinPF.Model.wx_diancai_dingdan_manage>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				MxWeiXinPF.Model.wx_diancai_dingdan_manage model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = dal.DataRowToModel(dt.Rows[n]);
					if (model != null)
					{
						modelList.Add(model);
					}
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			return dal.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return dal.GetListByPage( strWhere,  orderby,  startIndex,  endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
		#region  ExtensionMethod
        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            return dal.GetList(pageSize, pageIndex, strWhere, filedOrder, out recordCount);
        }

        public DataSet GetListList(string openid)
        {
            return dal.GetListList(openid);
        }


        public bool Update(int id, decimal payAmount)
        {
            return dal.Update(id, payAmount);
        }

        public DataSet Getcaopin(string dingdan)
        {
            return dal.Getcaopin(dingdan);
        }

        public DataSet Getcaopin(int id)
        {
            return dal.Getcaopin(id);
        }

        public MxWeiXinPF.Model.wx_diancai_dingdan_manage GetModeldingdan(string dingdan)
        {

            return dal.GetModeldingdan(dingdan);
        }

        public MxWeiXinPF.Model.wx_diancai_dingdan_manage GetModeldingdan(int  id)
        {

            return dal.GetModeldingdan(id);
        }

        public DataSet GetListshop(int shopid)
        {
            return dal.GetListshop(shopid);
        }


        public bool Updatestatus(string id, string state)
        {
            return dal.Updatestatus(id, state);
        }

        public bool Delete(string dingdan)
        {

            return dal.Delete(dingdan);
        }

		#endregion  ExtensionMethod
	}
}

