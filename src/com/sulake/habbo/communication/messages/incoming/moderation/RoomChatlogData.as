package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_1924:Boolean;
      
      private var _roomId:int;
      
      private var var_981:String;
      
      private var var_1923:Array;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         this.var_1923 = new Array();
         super();
         this.var_1924 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_981 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1923.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + this.var_1924 + ", " + this._roomId + ", " + this.var_981 + ", " + this.chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1924;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_981;
      }
      
      public function get chatlog() : Array
      {
         return this.var_1923;
      }
   }
}
