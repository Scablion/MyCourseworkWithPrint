   M S B A M L   `   `   `  ����D  @DetSadNet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DetSadNet.PagesDetSadNet.Pages  5           DetSadNet.Pages.SadNetPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:DetSadNet.Pages     5      -   5          N� Title$  Сеть садов��5	         basePage#��[  6   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $��* �6   6)   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10q�6.   .+�5      �� -   5         ��Name$ BtnAdd��5        BtnImage#��[ 6%   $��50��6G   $��50��6R   .��5      �� $��/Assets/add.png��6   5      �� 5      -   5        $ BtnEdit��5      #��[ 6&   $��50��6H   $��50��6S   .��5      �� $��/Assets/edit.png��6   5      �� 5      -   5        $ 
BtnRefresh��5      #��[ 6)   $��50��6K   $��50��6V   .��5      �� $��/Assets/refresh.png��6   5      �� 5      -   5        $ 	BtnDelete��5      #��[ 6(   $��50��6J   $��50��6U   .��5      �� $��/Assets/delete.png��6   5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DataGridSadNet��5       $��1��6      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       -   5        
DetSadName��,  &System.Windows.Controls.DataGridColumn   Header$ Название сада��5    9   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6p   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6P   �� *DetSad.Name+6p     5!      -   5        DirectorName��$ Директора��5!   ;   $	 * 6N   
 6X   �� *Director.DirName+  5"      $  Плата за месяц��6%   $	 * 6=   
 6G   �� *PlataForMonth+  5#      $ Дата открытия��6%   $	 * 6<   
 6F   �� *
DateOpen+ �� StringFormat$ {0: dd.mm.yyyy}��5%      5&      5'      