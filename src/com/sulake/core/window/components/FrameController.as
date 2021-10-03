package com.sulake.core.window.components
{
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.utils.IIterator;
   import com.sulake.core.window.utils.IMargins;
   import com.sulake.core.window.utils.Iterator;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import com.sulake.core.window.utils.TextMargins;
   import flash.geom.Rectangle;
   
   public class FrameController extends ContainerController implements IFrameWindow
   {
      
      private static const const_1460:String = "_TITLE";
      
      private static const const_1459:String = "_HEADER";
      
      private static const const_1462:String = "_CONTENT";
      
      private static const const_1461:String = "_SCALER";
       
      
      private var _title:ILabelWindow;
      
      private var var_1459:IHeaderWindow;
      
      private var var_197:IWindowContainer;
      
      private var var_44:IMargins;
      
      private var var_1151:Boolean = false;
      
      public function FrameController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         param4 |= 0;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.var_1151 = true;
         activate();
         this.setupScaling();
      }
      
      public function get title() : ILabelWindow
      {
         if(this._title == null)
         {
            this._title = findChildByTag(const_1460) as ILabelWindow;
            if(!this._title)
            {
               throw new Error("Frame window\'s title element not available!");
            }
         }
         return this._title;
      }
      
      public function get header() : IHeaderWindow
      {
         if(this.var_1459 == null)
         {
            this.var_1459 = findChildByTag(const_1459) as IHeaderWindow;
            if(!this.var_1459)
            {
               throw new Error("Frame window\'s header element not available!");
            }
         }
         return this.var_1459;
      }
      
      public function get content() : IWindowContainer
      {
         if(this.var_197 == null)
         {
            this.var_197 = findChildByTag(const_1462) as IWindowContainer;
            if(!this.var_197)
            {
               throw new Error("Frame window\'s content element not available!");
            }
         }
         return this.var_197;
      }
      
      public function get scaler() : IScalerWindow
      {
         return findChildByTag(const_1461) as IScalerWindow;
      }
      
      public function get margins() : IMargins
      {
         var _loc1_:* = null;
         if(!this.var_44)
         {
            _loc1_ = this.content.rectangle;
            this.var_44 = new TextMargins(_loc1_.left,_loc1_.top,_loc1_.right,_loc1_.bottom,this.marginsCallback);
         }
         return this.var_44;
      }
      
      override public function set caption(param1:String) : void
      {
         var value:String = param1;
         super.caption = value;
         try
         {
            this.title.text = value;
         }
         catch(e:Error)
         {
         }
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc3_:* = null;
         super.color = param1;
         var _loc2_:Array = new Array();
         groupChildrenWithTag(const_1417,_loc2_,false);
         for each(_loc3_ in _loc2_)
         {
            _loc3_.color = param1;
         }
      }
      
      override public function get iterator() : IIterator
      {
         return this.content != null && this.var_1151 ? this.content.iterator : new Iterator(this);
      }
      
      override public function buildFromXML(param1:XML, param2:Map = null) : Boolean
      {
         return context.getWindowParser().parseAndConstruct(param1,this.content,param2) != null;
      }
      
      override public function setParamFlag(param1:uint, param2:Boolean = true) : void
      {
         super.setParamFlag(param1,param2);
         this.setupScaling();
      }
      
      private function setupScaling() : void
      {
         var _loc1_:IWindow = this.scaler;
         var _loc2_:Boolean = testParamFlag(WindowParam.const_364);
         var _loc3_:Boolean = testParamFlag(WindowParam.const_265);
         var _loc4_:Boolean = testParamFlag(WindowParam.const_307);
         if(_loc1_)
         {
            if(_loc3_ || _loc2_)
            {
               _loc1_.setParamFlag(WindowParam.const_265,true);
            }
            else
            {
               _loc1_.setParamFlag(WindowParam.const_265,false);
            }
            if(_loc4_ || _loc2_)
            {
               _loc1_.setParamFlag(WindowParam.const_307,true);
            }
            else
            {
               _loc1_.setParamFlag(WindowParam.const_307,false);
            }
            _loc1_.visible = _loc3_ || _loc4_ || _loc2_;
         }
      }
      
      public function resizeToFitContent() : void
      {
         resizeToAccommodateChildren(this.content as WindowController);
      }
      
      private function marginsCallback(param1:IMargins) : void
      {
         var _loc2_:IWindow = this.content;
         var _loc3_:uint = _loc2_.param;
         var _loc4_:uint = _loc2_.param & (0 | 0);
         if(_loc4_)
         {
            _loc2_.setParamFlag(0 | 0,false);
         }
         var _loc5_:uint = _loc2_.param & 0;
         if(_loc5_)
         {
            _loc2_.setParamFlag(WindowParam.const_371,false);
         }
         _loc2_.rectangle = new Rectangle(param1.left,param1.top,param1.right - param1.left,param1.bottom - param1.top);
         if(_loc4_ || _loc5_)
         {
            _loc2_.setParamFlag(4294967295,false);
            _loc2_.setParamFlag(_loc3_,true);
         }
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         var _loc2_:* = this.var_44 != null;
         var _loc3_:Rectangle = this.content.rectangle;
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_299,_loc3_.left,PropertyStruct.const_38,_loc2_));
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_254,_loc3_.top,PropertyStruct.const_38,_loc2_));
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_269,0 - _loc3_.right,PropertyStruct.const_38,_loc2_));
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_257,0 - _loc3_.bottom,PropertyStruct.const_38,_loc2_));
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case PropertyDefaults.const_299:
                  this.margins.left = _loc2_.value as int;
                  break;
               case PropertyDefaults.const_254:
                  this.margins.top = _loc2_.value as int;
                  break;
               case PropertyDefaults.const_269:
                  this.margins.right = 0 - (_loc2_.value as int);
                  break;
               case PropertyDefaults.const_257:
                  this.margins.bottom = 0 - (_loc2_.value as int);
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
