package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_969:int = 1;
      
      public static const const_885:int = 2;
      
      public static const const_911:int = 3;
      
      public static const const_1270:int = 4;
      
      public static const const_733:int = 5;
      
      public static const const_1333:int = 6;
       
      
      private var _type:int;
      
      private var var_1400:int;
      
      private var var_2326:String;
      
      private var var_2884:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1400 = param2;
         this.var_2326 = param3;
         this.var_2884 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2326;
      }
      
      public function get time() : String
      {
         return this.var_2884;
      }
      
      public function get senderId() : int
      {
         return this.var_1400;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
