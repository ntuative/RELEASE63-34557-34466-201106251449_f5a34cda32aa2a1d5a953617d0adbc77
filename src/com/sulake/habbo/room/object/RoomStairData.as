package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2495:int;
      
      private var var_1853:Boolean;
      
      private var var_1854:Boolean;
      
      private var var_48:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_48 = param4;
         this.var_2495 = param1;
         this.var_1853 = param2;
         this.var_1854 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2495;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_1853;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_1854;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_1853 || this.var_1854;
      }
      
      public function get border() : Boolean
      {
         return this.var_48;
      }
   }
}
