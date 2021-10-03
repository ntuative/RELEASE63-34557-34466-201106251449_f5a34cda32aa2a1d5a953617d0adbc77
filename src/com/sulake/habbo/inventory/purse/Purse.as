package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1977:int = 0;
      
      private var var_1976:int = 0;
      
      private var var_3030:int = 0;
      
      private var var_3029:Boolean = false;
      
      private var var_2533:Boolean = false;
      
      private var var_2703:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1977 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1976 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_3030 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_3029 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2533 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2703 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1977;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1976;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_3030;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_3029;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2533;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2703;
      }
   }
}
