package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1321:String = "M";
      
      public static const const_1878:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_458:int = 0;
      
      private var _name:String = "";
      
      private var var_1712:int = 0;
      
      private var var_1125:String = "";
      
      private var _figure:String = "";
      
      private var var_2394:String = "";
      
      private var var_2391:int;
      
      private var var_2389:int = 0;
      
      private var var_2393:String = "";
      
      private var var_2392:int = 0;
      
      private var var_2390:int = 0;
      
      private var var_2395:String = "";
      
      private var var_192:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_192)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1712;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_1712 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1125;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_1125 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_192)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2394;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2394 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2391;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2391 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2389;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2389 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2393;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2393 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2392;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2392 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2390;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2390 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2395;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2395 = param1;
         }
      }
   }
}
