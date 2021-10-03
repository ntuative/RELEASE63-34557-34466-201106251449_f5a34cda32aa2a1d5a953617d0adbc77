package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_344:int = -2.147483648E9;
      
      private var var_343:int = 2.147483647E9;
      
      private var var_345:int = -2.147483648E9;
      
      private var var_346:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_344;
      }
      
      public function get maxWidth() : int
      {
         return this.var_343;
      }
      
      public function get minHeight() : int
      {
         return this.var_345;
      }
      
      public function get maxHeight() : int
      {
         return this.var_346;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_344 = param1;
         if(this.var_344 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_344)
         {
            this._target.width = this.var_344;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_343 = param1;
         if(this.var_343 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_343)
         {
            this._target.width = this.var_343;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_345 = param1;
         if(this.var_345 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_345)
         {
            this._target.height = this.var_345;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_346 = param1;
         if(this.var_346 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_346)
         {
            this._target.height = this.var_346;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_344 == int.MIN_VALUE && this.var_343 == int.MAX_VALUE && this.var_345 == int.MIN_VALUE && this.var_346 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_344 = int.MIN_VALUE;
         this.var_343 = int.MAX_VALUE;
         this.var_345 = int.MIN_VALUE;
         this.var_346 = int.MAX_VALUE;
      }
      
      public function limit() : void
      {
         if(!this.isEmpty && this._target)
         {
            if(this._target.width < this.var_344)
            {
               this._target.width = this.var_344;
            }
            else if(this._target.width > this.var_343)
            {
               this._target.width = this.var_343;
            }
            if(this._target.height < this.var_345)
            {
               this._target.height = this.var_345;
            }
            else if(this._target.height > this.var_346)
            {
               this._target.height = this.var_346;
            }
         }
      }
      
      public function assign(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.var_344 = param1;
         this.var_343 = param2;
         this.var_345 = param3;
         this.var_346 = param4;
         this.limit();
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_344 = this.var_344;
         _loc2_.var_343 = this.var_343;
         _loc2_.var_345 = this.var_345;
         _loc2_.var_346 = this.var_346;
         return _loc2_;
      }
   }
}
