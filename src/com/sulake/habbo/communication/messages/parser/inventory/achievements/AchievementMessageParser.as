package com.sulake.habbo.communication.messages.parser.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.inventory.achievements.AchievementData;
   
   public class AchievementMessageParser implements IMessageParser
   {
       
      
      private var var_71:AchievementData;
      
      public function AchievementMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_71 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_71 = new AchievementData(param1);
         return true;
      }
      
      public function get achievement() : AchievementData
      {
         return this.var_71;
      }
   }
}
