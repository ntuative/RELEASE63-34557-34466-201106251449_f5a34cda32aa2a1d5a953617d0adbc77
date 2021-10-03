package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2330:int;
      
      private var var_2327:int;
      
      private var var_885:Boolean;
      
      private var var_2328:int;
      
      private var var_2332:int;
      
      private var var_2331:int;
      
      private var var_2329:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2330 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this.var_885 = param1.readBoolean();
         this.var_2328 = param1.readInteger();
         this.var_2332 = param1.readInteger();
         this.var_2331 = param1.readInteger();
         this.var_2329 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2330;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2327;
      }
      
      public function get online() : Boolean
      {
         return this.var_885;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2328;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2332;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2331;
      }
      
      public function get banCount() : int
      {
         return this.var_2329;
      }
   }
}
