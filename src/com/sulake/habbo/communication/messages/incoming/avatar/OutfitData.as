package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1966:int;
      
      private var var_2497:String;
      
      private var var_1033:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1966 = param1.readInteger();
         this.var_2497 = param1.readString();
         this.var_1033 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1966;
      }
      
      public function get figureString() : String
      {
         return this.var_2497;
      }
      
      public function get gender() : String
      {
         return this.var_1033;
      }
   }
}
