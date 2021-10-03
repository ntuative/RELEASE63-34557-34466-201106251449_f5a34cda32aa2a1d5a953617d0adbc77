package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1839:Boolean;
      
      private var var_2470:int;
      
      private var var_2473:String;
      
      private var var_378:int;
      
      private var var_2471:int;
      
      private var var_1801:String;
      
      private var var_2469:String;
      
      private var var_2472:String;
      
      private var var_934:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_934 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1839 = false;
            return;
         }
         this.var_1839 = true;
         this.var_2470 = int(_loc2_);
         this.var_2473 = param1.readString();
         this.var_378 = int(param1.readString());
         this.var_2471 = param1.readInteger();
         this.var_1801 = param1.readString();
         this.var_2469 = param1.readString();
         this.var_2472 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_934.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_934 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2470;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2473;
      }
      
      public function get flatId() : int
      {
         return this.var_378;
      }
      
      public function get eventType() : int
      {
         return this.var_2471;
      }
      
      public function get eventName() : String
      {
         return this.var_1801;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2469;
      }
      
      public function get creationTime() : String
      {
         return this.var_2472;
      }
      
      public function get tags() : Array
      {
         return this.var_934;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1839;
      }
   }
}
