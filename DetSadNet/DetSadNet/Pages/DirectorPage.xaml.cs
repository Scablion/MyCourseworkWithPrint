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
    /// Логика взаимодействия для DirectorPage.xaml
    /// </summary>

    public partial class DirectorPage : Page
    {
        public DirectorPage()
        {
            InitializeComponent();
        }
        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            //SadNetEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
            DataGridDirector.ItemsSource = SadNetEntities.GetContext().Directors.ToList();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddOrrEditDirectors addOrrEditDirectors = new AddOrrEditDirectors(null);
            addOrrEditDirectors.Show();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (DataGridDirector.SelectedItem is Director director)
            {
                AddOrrEditDirectors addOrrEditDirectors = new AddOrrEditDirectors(director);
                addOrrEditDirectors.Show();
            }
        }

        private void BtnRefresh_Click(object sender, RoutedEventArgs e)
        {
            Page_IsVisibleChanged(null, default(DependencyPropertyChangedEventArgs));
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            if(DataGridDirector.SelectedItem is Director director)
            {
                try
                {
                    MessageBoxResult result = MessageBox.Show("Удалить данную запись?", "Warning", MessageBoxButton.YesNo, MessageBoxImage.Information);
                    if (result == MessageBoxResult.Yes)
                    {
                        SadNetEntities.GetContext().Directors.Remove(director);
                        SadNetEntities.GetContext().SaveChanges();
                        Page_IsVisibleChanged(null, default(DependencyPropertyChangedEventArgs));
                        MessageBox.Show("Запись удалена.");
                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }
        }

    }
}
