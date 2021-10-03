package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1811:String;
      
      private var var_1812:int;
      
      private var var_1814:int;
      
      private var var_1922:int;
      
      private var _id:int;
      
      private var var_1810:Boolean;
      
      private var _type:String;
      
      private var var_2423:String;
      
      private var var_2424:int;
      
      private var var_1813:String;
      
      private var var_2422:int;
      
      private var var_2425:int;
      
      private var var_1488:int;
      
      private var var_1815:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_1815 = new Date();
         super();
         this.var_1811 = param1.readString();
         this.var_1812 = param1.readInteger();
         this.var_1814 = param1.readInteger();
         this.var_1922 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1810 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2423 = param1.readString();
         this.var_2424 = param1.readInteger();
         this.var_1813 = param1.readString();
         this.var_2422 = param1.readInteger();
         this.var_2425 = param1.readInteger();
         this.var_1488 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_1811;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1813;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1812;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1814;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1922;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1810;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2423;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2424;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2422;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2425;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1488 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_1815.getTime();
         return int(Math.max(0,this.var_1488 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1811;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1813;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1810 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1812 >= this.var_1814;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_1815;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1488 = param1;
      }
   }
}
