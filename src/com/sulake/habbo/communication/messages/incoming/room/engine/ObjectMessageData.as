package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_458:int = 0;
      
      private var var_578:int = 0;
      
      private var var_700:int = 0;
      
      private var _type:int = 0;
      
      private var var_3110:String = "";
      
      private var var_1628:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2367:int = 0;
      
      private var var_2650:Boolean;
      
      private var var_2885:String = null;
      
      private var var_192:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_192)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_172 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_173 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_458;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_458 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_578;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_578 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_700;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_700 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_192)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_192)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_192)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2885;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2885 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1628;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_1628 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2367;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2367 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2650;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2650 = param1;
      }
   }
}
