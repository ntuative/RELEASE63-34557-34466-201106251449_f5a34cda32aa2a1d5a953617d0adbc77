package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1125:String;
      
      private var var_2977:String;
      
      private var var_2087:String;
      
      private var var_2979:int;
      
      private var var_2975:String;
      
      private var var_2976:int;
      
      private var var_2978:int;
      
      private var var_2297:int;
      
      private var var_1372:int;
      
      private var var_899:int;
      
      private var var_2912:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1125 = param1.readString();
         this.var_2977 = param1.readString();
         this.var_2087 = param1.readString();
         this.var_2979 = param1.readInteger();
         this.var_2975 = param1.readString();
         this.var_2976 = param1.readInteger();
         this.var_2978 = param1.readInteger();
         this.var_2297 = param1.readInteger();
         this.var_1372 = param1.readInteger();
         this.var_899 = param1.readInteger();
         this.var_2912 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1125;
      }
      
      public function get customData() : String
      {
         return this.var_2977;
      }
      
      public function get realName() : String
      {
         return this.var_2087;
      }
      
      public function get tickets() : int
      {
         return this.var_2979;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2975;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2976;
      }
      
      public function get directMail() : int
      {
         return this.var_2978;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2297;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1372;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_899;
      }
      
      public function get identityId() : int
      {
         return this.var_2912;
      }
   }
}
