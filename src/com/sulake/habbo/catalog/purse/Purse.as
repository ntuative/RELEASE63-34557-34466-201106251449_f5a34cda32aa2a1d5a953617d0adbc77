package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2199:int = 0;
      
      private var var_1567:Dictionary;
      
      private var var_1977:int = 0;
      
      private var var_1976:int = 0;
      
      private var var_2533:Boolean = false;
      
      private var var_2530:int = 0;
      
      private var var_2536:int = 0;
      
      private var var_2703:Boolean = false;
      
      public function Purse()
      {
         this.var_1567 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2199;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1977;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1977 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1976;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1976 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1977 > 0 || this.var_1976 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2533;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2703;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2703 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2533 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2530;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2530 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2536;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2536 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1567;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1567 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1567[param1];
      }
   }
}
