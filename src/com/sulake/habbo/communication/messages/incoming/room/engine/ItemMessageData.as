package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2651:Boolean = false;
      
      private var var_2652:int = 0;
      
      private var var_2649:int = 0;
      
      private var var_2653:int = 0;
      
      private var var_2648:int = 0;
      
      private var var_172:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_458:String = "";
      
      private var _type:int = 0;
      
      private var var_3110:String = "";
      
      private var var_1628:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_192:Boolean = false;
      
      private var var_2650:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2651 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2651;
      }
      
      public function get wallX() : Number
      {
         return this.var_2652;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2652 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2649;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2649 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2653;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2653 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2648;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2648 = param1;
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
      
      public function get dir() : String
      {
         return this.var_458;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_458 = param1;
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
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2650;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_192)
         {
            this.var_2650 = param1;
         }
      }
   }
}
