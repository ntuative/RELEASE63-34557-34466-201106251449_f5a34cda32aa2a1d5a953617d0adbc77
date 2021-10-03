package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2867:String;
      
      private var var_2802:int;
      
      private var var_2573:int;
      
      private var var_2869:String;
      
      private var var_2868:int;
      
      private var var_1935:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2867 = param1.readString();
         this.var_2802 = param1.readInteger();
         this.var_2573 = param1.readInteger();
         this.var_2869 = param1.readString();
         this.var_2868 = param1.readInteger();
         this.var_1935 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2867;
      }
      
      public function get unitPort() : int
      {
         return this.var_2802;
      }
      
      public function get worldId() : int
      {
         return this.var_2573;
      }
      
      public function get castLibs() : String
      {
         return this.var_2869;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2868;
      }
      
      public function get nodeId() : int
      {
         return this.var_1935;
      }
   }
}
