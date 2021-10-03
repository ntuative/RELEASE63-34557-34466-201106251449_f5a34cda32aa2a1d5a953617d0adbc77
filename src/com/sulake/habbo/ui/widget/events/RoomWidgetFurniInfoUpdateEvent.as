package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_326:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1900:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_2734:Boolean = false;
      
      private var var_2735:Boolean = false;
      
      private var var_1996:Boolean = false;
      
      private var var_1994:Boolean = false;
      
      private var var_2313:Boolean = false;
      
      private var var_2068:int = -1;
      
      private var var_2733:int = -1;
      
      private var var_1360:int = -1;
      
      private var var_1089:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1900 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1900;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2734 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2734;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2735 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2735;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1996 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1996;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1994 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1994;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2313 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2313;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_2068 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_2068;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2733 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2733;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1360 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1089 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1089;
      }
   }
}
