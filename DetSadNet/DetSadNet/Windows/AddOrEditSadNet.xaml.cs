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
using System.Windows.Shapes;
using DetSadNet.Entities;

namespace DetSadNet.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddOrEditSadNet.xaml
    /// </summary>
    public partial class AddOrEditSadNet : Window
    {
        private SadNet _currentSadNet = new SadNet();
        public AddOrEditSadNet(SadNet sadNet)
        {
            InitializeComponent();
            if (sadNet != null)
                _currentSadNet = sadNet;
            DataContext = _currentSadNet;
            ComboBoxName.ItemsSource = SadNetEntities.GetContext().DetSads.ToList();
            ComboBoxDirector.ItemsSource = SadNetEntities.GetContext().Directors.ToList();
        }

        private void OkBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder error = CheckField();
                if (error.Length > 0)
                {
                    MessageBox.Show(error.ToString());
                }
                else
                {
                    if (_currentSadNet.SadID == 0)
                        SadNetEntities.GetContext().SadNets.Add(_currentSadNet);
                    SadNetEntities.GetContext().SaveChanges();
                    Close();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private StringBuilder CheckField()
        {
            StringBuilder str = new StringBuilder();
            if (ComboBoxName.SelectedItem == null)
                str.AppendLine("Некоррекно введено название!");
            if (ComboBoxDirector.SelectedItem == null)
                str.AppendLine("Некоррекно введен город!");
            if (string.IsNullOrWhiteSpace(Convert.ToString(_currentSadNet.DateOpen)))
                str.AppendLine("Некоррекно введена дата открытия!");
            if (_currentSadNet.PlataForMonth == 0)
                str.AppendLine("Некоррекно введенa плата!");
            return str;
        }

    }
}
