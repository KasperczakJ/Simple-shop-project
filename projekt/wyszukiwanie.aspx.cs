using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projekt
{
    public partial class wyszukiwanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // Sprawdź, czy pole tekstowe jest puste
            string searchValue = txtSearch.Text.Trim();

            if (string.IsNullOrEmpty(searchValue))
            {
                // Jeśli pole tekstowe jest puste, usuń warunek WHERE z zapytania
                SqlDataSource1.SelectCommand = "SELECT [Id], [NazwaProduktu], [Cena], [Ilosc], [NazwaGrupy] FROM [View]";
            }
            else
            {
                // Jeśli pole tekstowe nie jest puste, dodaj warunek WHERE
                SqlDataSource1.SelectCommand = "SELECT [Id], [NazwaProduktu], [Cena], [Ilosc], [NazwaGrupy] FROM [View] WHERE [NazwaProduktu] LIKE @Search + '%'";
                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("Search", searchValue);
            }

            // Odśwież GridView
            GridView1.DataBind();
        }


    }
}