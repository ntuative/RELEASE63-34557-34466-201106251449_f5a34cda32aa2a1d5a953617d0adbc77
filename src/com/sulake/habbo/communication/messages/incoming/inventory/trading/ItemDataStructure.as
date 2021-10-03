package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2540:int;
      
      private var var_1434:String;
      
      private var var_2925:int;
      
      private var var_2921:int;
      
      private var _category:int;
      
      private var var_2242:String;
      
      private var var_1628:int;
      
      private var var_2922:int;
      
      private var var_2919:int;
      
      private var var_2923:int;
      
      private var var_2924:int;
      
      private var var_2920:Boolean;
      
      private var var_3118:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2540 = param1;
         this.var_1434 = param2;
         this.var_2925 = param3;
         this.var_2921 = param4;
         this._category = param5;
         this.var_2242 = param6;
         this.var_1628 = param7;
         this.var_2922 = param8;
         this.var_2919 = param9;
         this.var_2923 = param10;
         this.var_2924 = param11;
         this.var_2920 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2540;
      }
      
      public function get itemType() : String
      {
         return this.var_1434;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2925;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2921;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2242;
      }
      
      public function get extra() : int
      {
         return this.var_1628;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2922;
      }
      
      public function get creationDay() : int
      {
         return this.var_2919;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2923;
      }
      
      public function get creationYear() : int
      {
         return this.var_2924;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2920;
      }
      
      public function get songID() : int
      {
         return this.var_1628;
      }
   }
}
