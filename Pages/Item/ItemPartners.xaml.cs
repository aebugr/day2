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

namespace UP01.Pages.Item
{
    /// <summary>
    /// Логика взаимодействия для ItemPartners.xaml
    /// </summary>
    public partial class ItemPartners : UserControl
    {
        Models.Partners partners;
        PagePartners pagePartners;
        public ItemPartners(Models.Partners Partners, PagePartners pagePartners)
        {
            InitializeComponent();
            this.partners = Partners;
            this.pagePartners = pagePartners;
            typeLbl.Content = Partners.type_partn;
            nameLbl.Content = Partners.company_name;
            directorLbl.Content = Partners.fio_director;
            phoneLbl.Content = Partners.number_phone;
            raytingLbl.Content = "Рейтинг : " + Partners.rayting;
            saleLbl.Content = Partners.skidka + " % ";
        }
    }
}
