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
    /// Логика взаимодействия для AddOrEditDetSads.xaml
    /// </summary>
    public partial class AddOrEditDetSads : Window
    {
        private DetSad _currentSad = new DetSad();
        public AddOrEditDetSads(DetSad detSad)
        {
            InitializeComponent();
            if (detSad != null)
                _currentSad = detSad;
            DataContext = _currentSad;
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
                    if (_currentSad.SadID == 0)
                        SadNetEntities.GetContext().DetSads.Add(_currentSad);
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
            if (string.IsNullOrWhiteSpace(_currentSad.Name))
                str.AppendLine("Некоррекно введено название!");
            if (string.IsNullOrWhiteSpace(_currentSad.City))
                str.AppendLine("Некоррекно введен город!");
            if (string.IsNullOrWhiteSpace(_currentSad.Adress))
                str.AppendLine("Некоррекно введен адрес!");
            if (string.IsNullOrWhiteSpace(_currentSad.People))
                str.AppendLine("Некоррекно введено количество детей!");
            return str;
        }

    }
}
