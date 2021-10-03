package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1900:String;
      
      private var var_2286:int;
      
      private var _password:String;
      
      private var var_1526:int;
      
      private var var_2618:int;
      
      private var var_934:Array;
      
      private var var_2621:Array;
      
      private var var_2381:Boolean;
      
      private var var_2623:Boolean;
      
      private var var_2619:Boolean;
      
      private var var_2624:Boolean;
      
      private var var_2617:int;
      
      private var var_2616:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2381;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2381 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2623;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2623 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2619;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2619 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2624;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2624 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2617;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2617 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2616;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2616 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1900;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1900 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2286;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2286 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1526;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1526 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2618;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2618 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_934;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_934 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2621;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2621 = param1;
      }
   }
}
