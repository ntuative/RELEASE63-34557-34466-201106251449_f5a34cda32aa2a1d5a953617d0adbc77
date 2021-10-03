package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2363:int;
      
      private var var_1434:String;
      
      private var _objId:int;
      
      private var var_2032:int;
      
      private var _category:int;
      
      private var var_2242:String;
      
      private var var_2366:Boolean;
      
      private var var_2365:Boolean;
      
      private var var_2368:Boolean;
      
      private var var_2364:Boolean;
      
      private var var_2367:int;
      
      private var var_1628:int;
      
      private var var_1966:String = "";
      
      private var var_1948:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2363 = param1;
         this.var_1434 = param2;
         this._objId = param3;
         this.var_2032 = param4;
         this._category = param5;
         this.var_2242 = param6;
         this.var_2366 = param7;
         this.var_2365 = param8;
         this.var_2368 = param9;
         this.var_2364 = param10;
         this.var_2367 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1966 = param1;
         this.var_1628 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2363;
      }
      
      public function get itemType() : String
      {
         return this.var_1434;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2032;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2242;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2366;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2365;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2368;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2364;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2367;
      }
      
      public function get slotId() : String
      {
         return this.var_1966;
      }
      
      public function get songId() : int
      {
         return this.var_1948;
      }
      
      public function get extra() : int
      {
         return this.var_1628;
      }
   }
}
