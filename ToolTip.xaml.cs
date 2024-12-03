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
    /// Логика взаимодействия для ToolTip.xaml
    /// </summary>
    public partial class ToolTip : Page
    {
        public ToolTip()
        {
            InitializeComponent();
            ToolTip toolTip = new ToolTip();
            TextBlock TB1 = new TextBlock { Text = "Заголовок", FontSize = 16 };
            StackPanel stpan2 = new StackPanel();
            stpan2.Children.Add(TB1);
            stpan2.Children.Add(new TextBlock { Text = "Текст" });
            toolTip.Content = stpan2;
            but1.ToolTip = toolTip;
        }

        private void but_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
