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
    /// Логика взаимодействия для AddOrrEditDirectors.xaml
    /// </summary>
    public partial class AddOrrEditDirectors : Window
    {
        private Director _currentDirector = new Director();
        public AddOrrEditDirectors(Director director)
        {
            InitializeComponent();
            if (director != null)
                _currentDirector = director;
            DataContext = _currentDirector;
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
                if (_currentDirector.DirectorID == 0)
                    SadNetEntities.GetContext().Directors.Add(_currentDirector);
                SadNetEntities.GetContext().SaveChanges();
                Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private StringBuilder CheckField()
        {
            StringBuilder str = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_currentDirector.DirName))
                str.AppendLine("Некоррекно введено имя!");
            if (_currentDirector.DirAge == 0)
                str.AppendLine("Некоррекно введен возраст!");
            if (string.IsNullOrWhiteSpace(_currentDirector.DirStage))
                str.AppendLine("Некоррекно введен стаж!");
            if (string.IsNullOrWhiteSpace(_currentDirector.DirEducation))
                str.AppendLine("Некоррекно введено образование!");
            return str;
        }
    }
}
