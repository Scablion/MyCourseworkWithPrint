   M S B A M L   `   `   `  ����D  @DetSadNet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:DetSadNet.WindowsDetSadNet.Windows  5   	   +    %DetSadNet.Windows.AddOrrEditDirectors   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:DetSadNet.Windows     5   	     � Title$H  BДобавение/Редактирование директора��5   	      
baseWindow#��[  64   $	��470��6X   $	��450��6h   $	��470��6w   $	��450��6�    � WindowStartupLocation$ CenterScreen=�6�    � 
ResizeMode$ NoResize=�6�   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $	��150 �6   6-   �� 5      $
��auto �6   6.    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ��   ItemTextBlock#��[ 6   $��Имя:��6;   $��1��6G   �� 5   
   #��[ 6   $��Возраст:��6;   $��2��6K   �� 5   
   #��[ 6   $��	Стаж:��6;   $��3��6H   �� 5   
   #��[ 6   $��Образование:��6;   $��4��6O   �� 5   
     ItemTextBox#��[ 6   $��1��6Q   $��1��6^   ��67   �� *	DirName+6^   �� 5   
   #��[ 6   $��2��6O   $��1��6\   ��67   �� *DirAge+6\   �� 5   
   #��[ 6   $��3��6Q   $��1��6^   ��67   �� *
DirStage+6^   �� 5   
   #��[ 6   $��4��6U   $��1��6b   ��67   �� *DirEducation+6b   �� 5!   
   -   5         ��Name$ OkBtn��5!      $	��ОK��6    $��2��6A   $��5��6U   $��Bottom=�6b   $	��150q�6}   5"      5#      