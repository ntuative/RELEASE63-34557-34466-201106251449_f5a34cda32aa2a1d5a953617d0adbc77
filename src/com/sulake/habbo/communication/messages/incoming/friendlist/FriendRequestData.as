package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1394:int;
      
      private var var_2501:String;
      
      private var var_2500:int;
      
      private var var_2497:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1394 = param1.readInteger();
         this.var_2501 = param1.readString();
         this.var_2497 = param1.readString();
         this.var_2500 = this.var_1394;
      }
      
      public function get requestId() : int
      {
         return this.var_1394;
      }
      
      public function get requesterName() : String
      {
         return this.var_2501;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2500;
      }
      
      public function get figureString() : String
      {
         return this.var_2497;
      }
   }
}
