package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1718:Number = 12;
       
      
      private var var_2995:int = -1;
      
      private var var_2994:int = -2;
      
      private var var_234:Vector3d = null;
      
      private var var_1393:Number = 0;
      
      private var var_1680:Number = 0;
      
      private var var_2169:Boolean = false;
      
      private var var_205:Vector3d = null;
      
      private var var_2170:Vector3d;
      
      private var var_2992:Boolean = false;
      
      private var var_2989:Boolean = false;
      
      private var var_2996:Boolean = false;
      
      private var var_2993:Boolean = false;
      
      private var var_2990:int = 0;
      
      private var var_2987:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2988:int = 0;
      
      private var var_2991:int = 0;
      
      private var var_1767:int = -1;
      
      private var var_2168:int = 0;
      
      private var var_2171:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2170 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_205;
      }
      
      public function get targetId() : int
      {
         return this.var_2995;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2994;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2170;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2992;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2989;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2996;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2993;
      }
      
      public function get screenWd() : int
      {
         return this.var_2990;
      }
      
      public function get screenHt() : int
      {
         return this.var_2987;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2988;
      }
      
      public function get roomHt() : int
      {
         return this.var_2991;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1767;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_234 != null && this.var_205 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2995 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2170.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2994 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2992 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2989 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2996 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2993 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2990 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2987 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2171 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2988 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2991 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1767 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_234 == null)
         {
            this.var_234 = new Vector3d();
         }
         if(this.var_234.x != param1.x || this.var_234.y != param1.y || this.var_234.z != param1.z)
         {
            this.var_234.assign(param1);
            this.var_2168 = 0;
            _loc2_ = Vector3d.dif(this.var_234,this.var_205);
            this.var_1393 = _loc2_.length;
            this.var_2169 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_234 = null;
         this.var_205 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_205 != null)
         {
            return;
         }
         this.var_205 = new Vector3d();
         this.var_205.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_205 == null)
         {
            this.var_205 = new Vector3d();
         }
         this.var_205.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_234 != null && this.var_205 != null)
         {
            ++this.var_2168;
            if(this.var_2171)
            {
               this.var_2171 = false;
               this.var_205 = this.var_234;
               this.var_234 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_234,this.var_205);
            if(_loc3_.length > this.var_1393)
            {
               this.var_1393 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_205 = this.var_234;
               this.var_234 = null;
               this.var_1680 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1393);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1393 / const_1718;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2169)
               {
                  if(_loc7_ < this.var_1680)
                  {
                     _loc7_ = this.var_1680;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2169 = false;
                  }
               }
               this.var_1680 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_205 = Vector3d.sum(this.var_205,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1767 = -1;
      }
   }
}
