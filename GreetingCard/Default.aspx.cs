using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreetingCard
{

    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                // set the color options
                lstBackColor.Items.Add("White");
                lstBackColor.Items.Add("Red");
                lstBackColor.Items.Add("Green");
                lstBackColor.Items.Add("Blue");
                lstBackColor.Items.Add("Yellow");

                // set font options
                lstFontName.Items.Add("Times New Roman");
                lstFontName.Items.Add("Ariel");
                lstFontName.Items.Add("Verdana");
                lstFontName.Items.Add("Tahoma");

                // set border style options by adding a series of
                // ListItem Objects
                ListItem item = new ListItem();

                // the item text indicates the name
                item.Text = BorderStyle.None.ToString();

                // The item value records the correspondences integer
                // from the enumeration. To obtain the value, you
                // must cast the enumeration value to an integer,
                // and then convert the number to a string so it
                // can be placed in the HTML page
                item.Value = ((int)BorderStyle.None).ToString();

                // Add the item
                lstBorder.Items.Add(item);

                // now repeat for the remander two borders
                item = new ListItem();
                item.Text = BorderStyle.Double.ToString();
                item.Value = ((int)BorderStyle.Double).ToString();
                lstBorder.Items.Add(item);

                item = new ListItem();
                item.Text = BorderStyle.Solid.ToString();
                item.Value = ((int)BorderStyle.Solid).ToString();
                lstBorder.Items.Add(item);

                // select the first border options
                lstBorder.SelectedIndex = 0;

                // set the option.
                imgDefault.ImageUrl = "default.png";
            }
        }

        public void cmdUpdate_Click(object sender, EventArgs args)
        {
            // Update the color
            pnlCard.BackColor = System.Drawing.Color.FromName(lstBackColor.SelectedItem.Text);

            // update font
            lblGreeting.Font.Name = lstFontName.SelectedItem.Text;

            if (Int32.Parse(txtFontSize.Text) > 0)
            {
                lblGreeting.Font.Size = FontUnit.Point(Int32.Parse(txtFontSize.Text));
            }

            // update the border style requires two conversion steps
            // first, the value of the list item is converted from a string
            // to an integer. Next, the integer is converted into a value in
            // the BorderStyle enumeration
            int borderValue = Int32.Parse(lstBorder.SelectedItem.Value);
            pnlCard.BorderStyle = (BorderStyle)borderValue;

            // update the picture
            if (chkPicture.Checked)
            {
                imgDefault.Visible = true;
            }
            else
            {
                imgDefault.Visible = false;
            }

            // set the text
            lblGreeting.Text = txtGreeting.Text;
        }
    }
}
