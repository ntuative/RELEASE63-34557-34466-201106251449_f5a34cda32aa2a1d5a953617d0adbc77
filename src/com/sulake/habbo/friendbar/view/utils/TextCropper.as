package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.ITextWindow;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class TextCropper implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_524:TextField;
      
      private var var_952:TextFormat;
      
      private var var_3066:String = "...";
      
      private var var_3067:int = 20;
      
      public function TextCropper()
      {
         super();
         this.var_524 = new TextField();
         this.var_524.autoSize = TextFieldAutoSize.LEFT;
         this.var_952 = this.var_524.defaultTextFormat;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_524 = null;
            this._disposed = true;
         }
      }
      
      public function crop(param1:ITextWindow) : void
      {
         var _loc3_:int = 0;
         this.var_952.font = param1.fontFace;
         this.var_952.size = param1.fontSize;
         this.var_952.bold = param1.bold;
         this.var_952.italic = param1.italic;
         this.var_524.setTextFormat(this.var_952);
         this.var_524.text = param1.getLineText(0);
         var _loc2_:int = this.var_524.textWidth;
         if(_loc2_ > param1.width)
         {
            _loc3_ = this.var_524.getCharIndexAtPoint(param1.width - this.var_3067,this.var_524.textHeight / 2);
            param1.text = param1.text.slice(0,_loc3_) + this.var_3066;
         }
      }
   }
}
