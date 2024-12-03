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
    /// Логика взаимодействия для Avtor.xaml
    /// </summary>
    public partial class Avtor : Page
    {
        public Avtor()
        {
            InitializeComponent();
        }

        private void but2_Click(object sender, RoutedEventArgs e)
        {
            Migration.Sop.Navigate(new Pril());
        }

        //private void Canvas_Loaded(object sender, RoutedEventArgs e)
        //{
        //    qwest.ItemsSource = context.СекрктныйВопрос.Select(i => i.СекрктныйВопрос1).ToList();
        //}

        //private void SignIn_Click(object sender, RoutedEventArgs e)
        //{
        //    context.Пользователь.Add(new Пользователь
        //    {
        //        Фамилия = 
        //        Имя = 
        //        ЭлектроннаяПочта =
        //        Пароль = 
        //        КодовоеСлово = 
        //        ОтветНаСекретныйВопрос = 
        //        КодСекретногоВопроса = 
        //    });
            
        //}
    }
} 
