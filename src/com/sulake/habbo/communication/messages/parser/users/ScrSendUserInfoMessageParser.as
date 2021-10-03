package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2112:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1402:int = 3;
       
      
      private var var_1117:String;
      
      private var var_2534:int;
      
      private var var_2535:int;
      
      private var var_2538:int;
      
      private var var_2532:int;
      
      private var var_2531:Boolean;
      
      private var var_2533:Boolean;
      
      private var var_2530:int;
      
      private var var_2536:int;
      
      private var var_2537:Boolean;
      
      private var var_2539:int;
      
      private var var_2529:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1117 = param1.readString();
         this.var_2534 = param1.readInteger();
         this.var_2535 = param1.readInteger();
         this.var_2538 = param1.readInteger();
         this.var_2532 = param1.readInteger();
         this.var_2531 = param1.readBoolean();
         this.var_2533 = param1.readBoolean();
         this.var_2530 = param1.readInteger();
         this.var_2536 = param1.readInteger();
         this.var_2537 = param1.readBoolean();
         this.var_2539 = param1.readInteger();
         this.var_2529 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1117;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2534;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2535;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2538;
      }
      
      public function get responseType() : int
      {
         return this.var_2532;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2531;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2533;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2530;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2536;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2537;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2539;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2529;
      }
   }
}
