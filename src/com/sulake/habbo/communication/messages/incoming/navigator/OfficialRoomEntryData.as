package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1246:int = 1;
      
      public static const const_762:int = 2;
      
      public static const const_926:int = 3;
      
      public static const const_1785:int = 4;
       
      
      private var _index:int;
      
      private var var_2306:String;
      
      private var var_2308:String;
      
      private var var_2309:Boolean;
      
      private var var_2307:String;
      
      private var var_1066:String;
      
      private var var_2303:int;
      
      private var var_2305:int;
      
      private var _type:int;
      
      private var var_2304:String;
      
      private var var_948:GuestRoomData;
      
      private var var_947:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2306 = param1.readString();
         this.var_2308 = param1.readString();
         this.var_2309 = param1.readInteger() == 1;
         this.var_2307 = param1.readString();
         this.var_1066 = param1.readString();
         this.var_2303 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1246)
         {
            this.var_2304 = param1.readString();
         }
         else if(this._type == const_926)
         {
            this.var_947 = new PublicRoomData(param1);
         }
         else if(this._type == const_762)
         {
            this.var_948 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_948 != null)
         {
            this.var_948.dispose();
            this.var_948 = null;
         }
         if(this.var_947 != null)
         {
            this.var_947.dispose();
            this.var_947 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2306;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2308;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2309;
      }
      
      public function get picText() : String
      {
         return this.var_2307;
      }
      
      public function get picRef() : String
      {
         return this.var_1066;
      }
      
      public function get folderId() : int
      {
         return this.var_2303;
      }
      
      public function get tag() : String
      {
         return this.var_2304;
      }
      
      public function get userCount() : int
      {
         return this.var_2305;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_948;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_947;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1246)
         {
            return 0;
         }
         if(this.type == const_762)
         {
            return this.var_948.maxUserCount;
         }
         if(this.type == const_926)
         {
            return this.var_947.maxUsers;
         }
         return 0;
      }
   }
}
