package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_863:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1810:String = "inventory_effects";
      
      public static const const_1365:String = "inventory_badges";
      
      public static const const_2003:String = "inventory_clothes";
      
      public static const const_1910:String = "inventory_furniture";
       
      
      private var var_3020:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_863);
         this.var_3020 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_3020;
      }
   }
}
