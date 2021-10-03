package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2242:String;
      
      protected var var_1628:Number;
      
      protected var var_3043:Boolean;
      
      protected var var_3044:Boolean;
      
      protected var var_2920:Boolean;
      
      protected var var_2981:Boolean;
      
      protected var var_3057:int;
      
      protected var var_2919:int;
      
      protected var var_2923:int;
      
      protected var var_2924:int;
      
      protected var var_1966:String;
      
      protected var var_1948:int;
      
      protected var var_989:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2920 = param5;
         this.var_3044 = param6;
         this.var_3043 = param7;
         this.var_2981 = param8;
         this.var_2242 = param9;
         this.var_1628 = param10;
         this.var_3057 = param11;
         this.var_2919 = param12;
         this.var_2923 = param13;
         this.var_2924 = param14;
         this.var_1966 = param15;
         this.var_1948 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2242;
      }
      
      public function get extra() : Number
      {
         return this.var_1628;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3043;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3044;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2920;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2981;
      }
      
      public function get expires() : int
      {
         return this.var_3057;
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
      
      public function get slotId() : String
      {
         return this.var_1966;
      }
      
      public function get songId() : int
      {
         return this.var_1948;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_989 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_989;
      }
   }
}
