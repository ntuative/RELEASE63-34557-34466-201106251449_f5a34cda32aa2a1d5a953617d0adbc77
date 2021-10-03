package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2890:int;
      
      private var var_2889:int;
      
      private var var_2891:int;
      
      private var var_2888:String;
      
      private var var_1746:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2890 = param1.readInteger();
         this.var_2889 = param1.readInteger();
         this.var_2891 = param1.readInteger();
         this.var_2888 = param1.readString();
         this.var_1746 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2890;
      }
      
      public function get minute() : int
      {
         return this.var_2889;
      }
      
      public function get chatterId() : int
      {
         return this.var_2891;
      }
      
      public function get chatterName() : String
      {
         return this.var_2888;
      }
      
      public function get msg() : String
      {
         return this.var_1746;
      }
   }
}
