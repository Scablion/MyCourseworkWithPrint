   M S B A M L   `   `   `  ����D  @DetSadNet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:DetSadNet.WindowsDetSadNet.Windows  5   	   '    !DetSadNet.Windows.AddOrEditSadNet   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:DetSadNet.Windows     5   	     � Title$C  =Добавление/Редактирование в сети��5   	   $	��500��62   $	��470��6B   $	��500��6Q   $	��470��6^    � WindowStartupLocation$ CenterScreen=�6j    � 
ResizeMode$ NoResize=�6�   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��180 �6   6-   �� 5      $
��auto �6   6.    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ��    ItemTextBlock#��[  6   $ ��Название сада:��6;   $��1��6Q   �� 5   
   #��[  6   $��Директор:��6;   $��4��6L   �� 5   
   #��[  6   $ ��Дата открытия:��6;   $��5��6Q   �� 5   
   #��[  6   $!��Плата за месяц:��6;   $��6��6R   �� 5   
   -   5         ��Name$ ComboBoxName��5   R     ItemComboBox#��[ 6    �� DisplayMemberPath$
 Name��69   $��1��6h   $��1��6u    �� SelectedItem 6�   �� *DetSad+�� 5   
   -   5        $ ComboBoxDirector��5   U   #��[ 6   $ DirName��69   $��4��6o   $��1��6|    6�   �� *
Director+(  "System.Windows.Controls.DatePicker  5   
   $��15(�67   $��Center=�6E   $��Center=�6i   $	��250��6�   $��Center=�6�   $��15,0,1,0q�6�   $��5��6�   $��1��6�      SelectedDate 6   �� *
DateOpen+6�   �� 5    
     ItemTextBox#��[ 6   $��6��6�   $��1��6�   ��67   �� *PlataForMonth+	 �� StringFormat$	 c��
 �� ConverterCulture$
 ru-RU��6�   �� 5"   
   -   5         ��Name$ OkBtn��5"      $	��ОK��6    $��2��6A   $��7��6U   $��160, 110q�6c   5#      5$      