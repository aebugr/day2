using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml.Linq;
using UP01.Classes;

namespace UP01.Pages
{
    /// <summary>
    /// Логика взаимодействия для PagePartners.xaml
    /// </summary>
    public partial class PagePartners : Page
    {
        public ContextPartners contextPartners = new ContextPartners();
        public PagePartners()
        {
            InitializeComponent();
            CreateUI();
        }
        public void CreateUI()
        {
            foreach (Models.Partners partners in contextPartners.Partners)
            {
                partners.CalculateDiscount(); 
                parent.Children.Add(new Pages.Item.ItemPartners(partners, this));
            }
        }
    }
}
