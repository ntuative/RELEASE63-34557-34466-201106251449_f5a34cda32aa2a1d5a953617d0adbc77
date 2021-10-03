package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1935:int;
      
      private var var_2974:String;
      
      private var var_342:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1935 = param1.readInteger();
         this.var_2974 = param1.readString();
         this.var_342 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1935;
      }
      
      public function get nodeName() : String
      {
         return this.var_2974;
      }
      
      public function get visible() : Boolean
      {
         return this.var_342;
      }
   }
}
