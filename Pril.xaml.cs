using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ISPp_1_22_Yuritsyna
{
    /// <summary>
    /// Логика взаимодействия для Pril.xaml
    /// </summary>
    public partial class Pril : Page
    {
        public static Master_polEntities context = new Master_polEntities();
        public Pril()
        {
            InitializeComponent();
        }
        //Поиск
        private void Posc_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateMenu();
        }
        private void UpdateMenu()
        {
            qw.ItemsSource = context.Production.Where(i => i.ProductName.Contains(poisc.Text)
            || i.PricePartner.ToString().Contains(poisc.Text)).ToList();
        }
        //Сортировка
        private void box1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (box1.SelectedIndex == 0)
            {
                qw.ItemsSource = Context.GetContext().Production.OrderBy(s => s.ProductType).ToList();
            }
            if (box1.SelectedIndex == 1)
            {
                qw.ItemsSource = Context.GetContext().Production.OrderBy(s => s.ProductName).ToList();
            }
            if (box1.SelectedIndex == 2)
            {
                qw.ItemsSource = Context.GetContext().Production.OrderBy(s => s.Article).ToList();
            }
            if (box1.SelectedIndex == 3)
            {
                qw.ItemsSource = Context.GetContext().Production.OrderBy(s => s.PricePartner).ToList();
            }
        }
    }
}
