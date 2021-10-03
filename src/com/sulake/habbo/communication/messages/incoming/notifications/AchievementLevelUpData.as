package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1301:int;
      
      private var var_2009:int;
      
      private var var_2295:int;
      
      private var var_2294:int;
      
      private var var_2555:int;
      
      private var var_1932:int;
      
      private var var_2557:String = "";
      
      private var var_2558:String = "";
      
      private var var_2556:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1301 = param1.readInteger();
         this.var_1932 = param1.readInteger();
         this.var_2557 = param1.readString();
         this.var_2009 = param1.readInteger();
         this.var_2295 = param1.readInteger();
         this.var_2294 = param1.readInteger();
         this.var_2555 = param1.readInteger();
         this.var_2556 = param1.readInteger();
         this.var_2558 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1301;
      }
      
      public function get points() : int
      {
         return this.var_2009;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2295;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2294;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2555;
      }
      
      public function get badgeId() : int
      {
         return this.var_1932;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2557;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2558;
      }
      
      public function get achievementID() : int
      {
         return this.var_2556;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
