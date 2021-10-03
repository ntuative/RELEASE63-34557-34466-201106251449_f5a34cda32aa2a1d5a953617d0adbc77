package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_87:ITextFieldWindow;
      
      private var var_690:Boolean;
      
      private var var_1477:String = "";
      
      private var var_2030:int;
      
      private var var_2029:Function;
      
      private var var_2772:String = "";
      
      private var var_154:IWindowContainer;
      
      private var var_2771:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2773:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_87 = param2;
         this.var_2030 = param3;
         this.var_2029 = param4;
         if(param5 != null)
         {
            this.var_690 = true;
            this.var_1477 = param5;
            this.var_87.text = param5;
         }
         Util.setProcDirectly(this.var_87,this.onInputClick);
         this.var_87.addEventListener(WindowKeyboardEvent.const_181,this.checkEnterPress);
         this.var_87.addEventListener(WindowEvent.const_110,this.checkMaxLen);
         this.var_2771 = this.var_87.textBackground;
         this._orgTextBackgroundColor = this.var_87.textBackgroundColor;
         this.var_2773 = this.var_87.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_87.textBackground = this.var_2771;
         this.var_87.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_87.textColor = this.var_2773;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_87.textBackground = true;
         this.var_87.textBackgroundColor = 4294021019;
         this.var_87.textColor = 4278190080;
         if(this.var_154 == null)
         {
            this.var_154 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_154,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_87.parent).addChild(this.var_154);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_154.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_154.findChildByName("border").width = _loc2_.width + 15;
         this.var_154.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_87.getLocalPosition(_loc3_);
         this.var_154.x = _loc3_.x;
         this.var_154.y = _loc3_.y - this.var_154.height + 3;
         var _loc4_:IWindow = this.var_154.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_154.width / 2 - _loc4_.width / 2;
         this.var_154.x += (this.var_87.width - this.var_154.width) / 2;
         this.var_154.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1477 != null)
         {
            this.var_87.text = this.var_1477;
            this.var_690 = true;
         }
         else
         {
            this.var_87.text = "";
            this.var_690 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_690)
         {
            return this.var_2772;
         }
         return this.var_87.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_690 = false;
         this.var_87.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_154 != null)
         {
            this.var_154.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_87;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_690 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_367)
         {
            return;
         }
         if(!this.var_690)
         {
            return;
         }
         this.var_87.text = this.var_2772;
         this.var_690 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_2029 != null)
            {
               this.var_2029();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_87.text;
         if(_loc2_.length > this.var_2030)
         {
            this.var_87.text = _loc2_.substring(0,this.var_2030);
         }
      }
   }
}
