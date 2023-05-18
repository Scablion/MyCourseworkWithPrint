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
using DetSadNet.Pages;
using DetSadNet.Entities;

namespace DetSadNet
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Content = new SadNetPage();
        }

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void BtnDetSads_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Content = new DetSadPage();
        }

        private void BtnDirectors_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Content = new DirectorPage();
        }

        private void BtnNetsDetSads_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Content = new SadNetPage();
        }
    }
}
