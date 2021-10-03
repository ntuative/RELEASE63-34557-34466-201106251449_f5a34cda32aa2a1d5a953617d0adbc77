package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1869:String = "WE_DESTROY";
      
      public static const const_329:String = "WE_DESTROYED";
      
      public static const const_1753:String = "WE_OPEN";
      
      public static const const_1992:String = "WE_OPENED";
      
      public static const const_1745:String = "WE_CLOSE";
      
      public static const const_1944:String = "WE_CLOSED";
      
      public static const const_1842:String = "WE_FOCUS";
      
      public static const const_367:String = "WE_FOCUSED";
      
      public static const const_1843:String = "WE_UNFOCUS";
      
      public static const const_2011:String = "WE_UNFOCUSED";
      
      public static const const_1364:String = "WE_ACTIVATE";
      
      public static const const_546:String = "WE_ACTIVATED";
      
      public static const const_1838:String = "WE_DEACTIVATE";
      
      public static const const_579:String = "WE_DEACTIVATED";
      
      public static const const_372:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_581:String = "WE_UNSELECT";
      
      public static const const_633:String = "WE_UNSELECTED";
      
      public static const const_1820:String = "WE_LOCK";
      
      public static const const_1943:String = "WE_LOCKED";
      
      public static const const_1850:String = "WE_UNLOCK";
      
      public static const const_1942:String = "WE_UNLOCKED";
      
      public static const const_933:String = "WE_ENABLE";
      
      public static const const_283:String = "WE_ENABLED";
      
      public static const const_992:String = "WE_DISABLE";
      
      public static const const_306:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_405:String = "WE_RELOCATED";
      
      public static const const_1194:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1763:String = "WE_MINIMIZE";
      
      public static const const_1900:String = "WE_MINIMIZED";
      
      public static const const_1935:String = "WE_MAXIMIZE";
      
      public static const const_1775:String = "WE_MAXIMIZED";
      
      public static const const_1882:String = "WE_RESTORE";
      
      public static const const_1986:String = "WE_RESTORED";
      
      public static const const_665:String = "WE_CHILD_ADDED";
      
      public static const const_437:String = "WE_CHILD_REMOVED";
      
      public static const const_211:String = "WE_CHILD_RELOCATED";
      
      public static const const_146:String = "WE_CHILD_RESIZED";
      
      public static const const_383:String = "WE_CHILD_ACTIVATED";
      
      public static const const_506:String = "WE_PARENT_ADDED";
      
      public static const const_1741:String = "WE_PARENT_REMOVED";
      
      public static const const_2009:String = "WE_PARENT_RELOCATED";
      
      public static const const_556:String = "WE_PARENT_RESIZED";
      
      public static const const_1186:String = "WE_PARENT_ACTIVATED";
      
      public static const const_159:String = "WE_OK";
      
      public static const const_539:String = "WE_CANCEL";
      
      public static const const_110:String = "WE_CHANGE";
      
      public static const const_495:String = "WE_SCROLL";
      
      public static const const_109:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_752:IWindow;
      
      protected var var_1146:Boolean;
      
      protected var var_510:Boolean;
      
      protected var var_164:Boolean;
      
      protected var var_753:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_752 = param3;
         _loc5_.var_510 = param4;
         _loc5_.var_164 = false;
         _loc5_.var_753 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_752;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_510;
      }
      
      public function recycle() : void
      {
         if(this.var_164)
         {
            throw new Error("Event already recycled!");
         }
         this.var_752 = null;
         this._window = null;
         this.var_164 = true;
         this.var_1146 = false;
         this.var_753.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1146;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1146 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1146;
      }
      
      public function stopPropagation() : void
      {
         this.var_1146 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1146 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_510 + " window: " + this._window + " }";
      }
   }
}
