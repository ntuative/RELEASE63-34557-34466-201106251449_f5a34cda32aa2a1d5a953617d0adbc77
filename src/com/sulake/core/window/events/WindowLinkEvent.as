package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowLinkEvent extends WindowEvent
   {
      
      public static const const_2013:String = "WE_LINK";
      
      private static const POOL:Array = [];
       
      
      private var var_2116:String;
      
      public function WindowLinkEvent()
      {
         super();
         _type = const_2013;
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow) : WindowEvent
      {
         var _loc4_:WindowLinkEvent = POOL.length > 0 ? POOL.pop() : new WindowLinkEvent();
         _loc4_.var_2116 = param1;
         _loc4_._window = param2;
         _loc4_.var_752 = param3;
         _loc4_.var_164 = false;
         _loc4_.var_753 = POOL;
         return _loc4_;
      }
      
      public function get link() : String
      {
         return this.var_2116;
      }
      
      override public function clone() : WindowEvent
      {
         return allocate(this.var_2116,window,related);
      }
      
      override public function toString() : String
      {
         return "WindowLinkEvent { type: " + _type + " link: " + this.link + " cancelable: " + var_510 + " window: " + _window + " }";
      }
   }
}
