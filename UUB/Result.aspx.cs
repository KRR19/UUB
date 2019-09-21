using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UUB
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new UUBContext();
            FirstName.Value = context.orders.ToList().Last().frist_name;
            SecondName.Value = context.orders.ToList().Last().second_name;
            Adress.SelectedIndex = (int)context.orders.ToList().Last().adress-1;
            Weight.Value = context.orders.ToList().Last().weight + "г.";
            Comment.Value = context.orders.ToList().Last().comment;
            Type.SelectedIndex = (int)context.orders.ToList().Last().type-1;
            Cost.Text = context.orders.ToList().Last().cost_value.ToString() + "грн.";
        }
    }
}