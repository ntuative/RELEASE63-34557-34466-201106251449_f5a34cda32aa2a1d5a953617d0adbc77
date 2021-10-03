package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1862:int;
      
      private var var_2504:int;
      
      private var var_1692:int;
      
      private var var_2503:int;
      
      private var var_129:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1862 = param1.readInteger();
         this.var_2504 = param1.readInteger();
         this.var_1692 = param1.readInteger();
         this.var_2503 = param1.readInteger();
         this.var_129 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1862);
      }
      
      public function get callId() : int
      {
         return this.var_1862;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2504;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1692;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2503;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_129;
      }
   }
}
