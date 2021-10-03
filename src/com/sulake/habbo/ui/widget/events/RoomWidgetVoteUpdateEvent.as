package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_147:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_171:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1343:String;
      
      private var var_1541:Array;
      
      private var var_1359:Array;
      
      private var var_2056:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1343 = param2;
         this.var_1541 = param3;
         this.var_1359 = param4;
         if(this.var_1359 == null)
         {
            this.var_1359 = [];
         }
         this.var_2056 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1343;
      }
      
      public function get choices() : Array
      {
         return this.var_1541.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1359.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2056;
      }
   }
}
