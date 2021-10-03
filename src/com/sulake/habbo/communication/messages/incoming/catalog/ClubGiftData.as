package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1360:int;
      
      private var var_2674:Boolean;
      
      private var var_2595:Boolean;
      
      private var var_2673:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1360 = param1.readInteger();
         this.var_2674 = param1.readBoolean();
         this.var_2673 = param1.readInteger();
         this.var_2595 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1360;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2674;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2595;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2673;
      }
   }
}
