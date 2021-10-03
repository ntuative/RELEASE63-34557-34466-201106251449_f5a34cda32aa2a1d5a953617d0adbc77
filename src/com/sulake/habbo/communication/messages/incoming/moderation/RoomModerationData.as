package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_378:int;
      
      private var var_2305:int;
      
      private var var_2449:Boolean;
      
      private var var_2450:int;
      
      private var _ownerName:String;
      
      private var var_129:RoomData;
      
      private var var_840:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_378 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this.var_2449 = param1.readBoolean();
         this.var_2450 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_129 = new RoomData(param1);
         this.var_840 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_129 != null)
         {
            this.var_129.dispose();
            this.var_129 = null;
         }
         if(this.var_840 != null)
         {
            this.var_840.dispose();
            this.var_840 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_378;
      }
      
      public function get userCount() : int
      {
         return this.var_2305;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2449;
      }
      
      public function get ownerId() : int
      {
         return this.var_2450;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_129;
      }
      
      public function get event() : RoomData
      {
         return this.var_840;
      }
   }
}
