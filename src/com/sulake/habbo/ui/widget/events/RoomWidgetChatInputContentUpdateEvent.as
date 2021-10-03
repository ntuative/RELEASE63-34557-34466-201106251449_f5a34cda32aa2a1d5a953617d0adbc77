package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_770:String = "RWWCIDE_CHAT_INPUT_CONTENT";
      
      public static const const_1188:String = "whisper";
      
      public static const const_1911:String = "shout";
       
      
      private var var_2683:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_770,param3,param4);
         this.var_2683 = param1;
         this._userName = param2;
      }
      
      public function get messageType() : String
      {
         return this.var_2683;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}
