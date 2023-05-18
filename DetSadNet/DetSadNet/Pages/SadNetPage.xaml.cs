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
using DetSadNet.Entities;
using DetSadNet.Pages;
using DetSadNet.Windows;

namespace DetSadNet.Pages
{
    /// <summary>
    /// Логика взаимодействия для SadNetPage.xaml
    /// </summary>
    public partial class SadNetPage : Page
    {
        public SadNetPage()
        {
            InitializeComponent();
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            //SadNetEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            DataGridSadNet.ItemsSource = SadNetEntities.GetContext().SadNets.ToList();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddOrEditSadNet addOrEditSadNet = new AddOrEditSadNet(null);
            addOrEditSadNet.Show();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (DataGridSadNet.SelectedItem is SadNet netSad)
            {
                AddOrEditSadNet addOrEditSadNet = new AddOrEditSadNet(netSad);
                addOrEditSadNet.Show();
            }
        }

        private void BtnARefresh_Click(object sender, RoutedEventArgs e)
        {
            Page_IsVisibleChanged(null, default(DependencyPropertyChangedEventArgs));
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (DataGridSadNet.SelectedItem is SadNet netSad)
            {
                try
                {
                    MessageBoxResult result = MessageBox.Show("Удалить данную запись?", "Warning", MessageBoxButton.YesNo, MessageBoxImage.Information);
                    if (result == MessageBoxResult.Yes)
                    {
                        SadNetEntities.GetContext().SadNets.Remove(netSad);
                        SadNetEntities.GetContext().SaveChanges();
                        Page_IsVisibleChanged(null, default(DependencyPropertyChangedEventArgs));
                        MessageBox.Show("Запись удалена.");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }
    }
}
