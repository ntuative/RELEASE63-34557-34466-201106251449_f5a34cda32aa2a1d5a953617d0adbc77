package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_378:int;
      
      private var var_840:Boolean;
      
      private var var_981:String;
      
      private var _ownerName:String;
      
      private var var_2286:int;
      
      private var var_2305:int;
      
      private var var_2382:int;
      
      private var var_1900:String;
      
      private var var_2384:int;
      
      private var var_2283:Boolean;
      
      private var var_843:int;
      
      private var var_1526:int;
      
      private var var_2380:String;
      
      private var var_934:Array;
      
      private var var_2379:RoomThumbnailData;
      
      private var var_2381:Boolean;
      
      private var var_2383:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_934 = new Array();
         super();
         this.var_378 = param1.readInteger();
         this.var_840 = param1.readBoolean();
         this.var_981 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2286 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_1900 = param1.readString();
         this.var_2384 = param1.readInteger();
         this.var_2283 = param1.readBoolean();
         this.var_843 = param1.readInteger();
         this.var_1526 = param1.readInteger();
         this.var_2380 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_934.push(_loc4_);
            _loc3_++;
         }
         this.var_2379 = new RoomThumbnailData(param1);
         this.var_2381 = param1.readBoolean();
         this.var_2383 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_378;
      }
      
      public function get event() : Boolean
      {
         return this.var_840;
      }
      
      public function get roomName() : String
      {
         return this.var_981;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2286;
      }
      
      public function get userCount() : int
      {
         return this.var_2305;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2382;
      }
      
      public function get description() : String
      {
         return this.var_1900;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2384;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2283;
      }
      
      public function get score() : int
      {
         return this.var_843;
      }
      
      public function get categoryId() : int
      {
         return this.var_1526;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2380;
      }
      
      public function get tags() : Array
      {
         return this.var_934;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2379;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2381;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2383;
      }
   }
}
