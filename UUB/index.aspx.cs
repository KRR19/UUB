using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UUB
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected double CostCalc()
        {
            int adress = Adress.SelectedIndex;
            int adressPrice=0;
            double cost;

            switch (adress)
            {
                case 1:
                    adressPrice = 20;
                    break;
                case 2:
                    adressPrice = 60;
                    break;
                case 3:
                    adressPrice = 40;
                    break;
            }
            cost = Convert.ToDouble(Weight.Value) / 1000 * 30 + adressPrice;
            cost = Math.Round(cost, 2);
            return cost;
                
        }

        protected void Button_Click(object sender, EventArgs e)
        {
         
            var context = new UUBContext();
            orders newOrder = new orders()
            {
                
                frist_name = FirstName.Value,
                second_name = SecondName.Value,
                adress = Adress.SelectedIndex,
                weight = Convert.ToInt32(Weight.Value),
                comment = Comment.Value,
                type = Type.SelectedIndex,
                cost_value = CostCalc()
                
            };
            context.orders.Add(newOrder);
            context.SaveChanges();
            Server.Transfer("Result.aspx", true);
        }
        
    }
}