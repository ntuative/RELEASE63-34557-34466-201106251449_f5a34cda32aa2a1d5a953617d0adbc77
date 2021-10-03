package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_1027:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_684:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_1027);
         this.var_684 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_684;
      }
   }
}
