   M S B A M L   `   `   `  ����D  @DetSadNet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:DetSadNet.WindowsDetSadNet.Windows  5   	   (    "DetSadNet.Windows.AddOrEditDetSads   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:DetSadNet.Windows     5   	     � Title$Q  KДобавление/Редактирование Детского сада��5   	   $	��500��69   $	��470��6I   $	��500��6X   $	��470��6e    � WindowStartupLocation$ CenterScreen=�6q    � 
ResizeMode$ NoResize=�6�   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��180 �6   6-   �� 5      $
��auto �6   6.    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ��    ItemTextBlock#��[  6   $��Название:��6;   $��1��6L   �� 5   
   #��[  6   $��Город:��6;   $��2��6I   �� 5   
   #��[  6   $��Адрес:��6;   $��3��6I   �� 5   
   #��[  6   $&�� Количество детей:��6;   $��4��6T   �� 5   
     ItemTextBox#��[ 6   $��1��6N   $��1��6[   ��67   �� *Name+6[   �� 5   
   #��[ 6   $��2��6M   $��1��6Z   ��67   �� *City+6Z   �� 5   
   #��[ 6   $��3��6O   $��1��6\   ��67   �� *Adress+6\   �� 5   
   #��[ 6   $��4��6O   $��1��6\   ��67   �� *People+6\   �� 5    
   -   5         ��Name$ OkBtn��5       $	��ОK��6    $��2��6A   $��5��6U   $��Bottom=�6b   $	��160q�6}   5!      5"      