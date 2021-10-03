package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1301:int;
      
      private var var_1932:String;
      
      private var var_1731:int;
      
      private var var_2295:int;
      
      private var var_2294:int;
      
      private var var_1730:int;
      
      private var var_1729:Boolean;
      
      private var _category:String;
      
      private var var_2296:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1301 = param1.readInteger();
         this.var_1932 = param1.readString();
         this.var_1731 = Math.max(1,param1.readInteger());
         this.var_2295 = param1.readInteger();
         this.var_2294 = param1.readInteger();
         this.var_1730 = param1.readInteger();
         this.var_1729 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2296 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1932;
      }
      
      public function get level() : int
      {
         return this.var_1301;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1731;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2295;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2294;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1730;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1729;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2296;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1301 > 1 || this.var_1729;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1730 = this.var_1731;
      }
   }
}
