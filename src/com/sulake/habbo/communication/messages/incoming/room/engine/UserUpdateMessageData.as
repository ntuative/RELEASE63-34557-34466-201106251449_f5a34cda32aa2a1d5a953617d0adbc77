package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_2492:Number = 0;
      
      private var var_2491:Number = 0;
      
      private var var_2494:Number = 0;
      
      private var var_2493:Number = 0;
      
      private var var_458:int = 0;
      
      private var var_2489:int = 0;
      
      private var var_357:Array;
      
      private var var_2490:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_357 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_172 = param3;
         this.var_173 = param4;
         this.var_2492 = param5;
         this.var_458 = param6;
         this.var_2489 = param7;
         this.var_2491 = param8;
         this.var_2494 = param9;
         this.var_2493 = param10;
         this.var_2490 = param11;
         this.var_357 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_172;
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function get localZ() : Number
      {
         return this.var_2492;
      }
      
      public function get targetX() : Number
      {
         return this.var_2491;
      }
      
      public function get targetY() : Number
      {
         return this.var_2494;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2493;
      }
      
      public function get dir() : int
      {
         return this.var_458;
      }
      
      public function get dirHead() : int
      {
         return this.var_2489;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2490;
      }
      
      public function get actions() : Array
      {
         return this.var_357.slice();
      }
   }
}
