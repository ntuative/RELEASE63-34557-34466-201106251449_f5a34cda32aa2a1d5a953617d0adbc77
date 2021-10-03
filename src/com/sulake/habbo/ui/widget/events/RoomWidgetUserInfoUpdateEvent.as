package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_114:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_148:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_768:int = 2;
      
      public static const const_849:int = 3;
      
      public static const const_1961:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_2161:String = "";
      
      private var var_2391:int;
      
      private var var_2389:int = 0;
      
      private var var_2390:int = 0;
      
      private var _figure:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_260:Array;
      
      private var var_1610:int = 0;
      
      private var var_2694:String = "";
      
      private var var_2696:int = 0;
      
      private var var_2695:int = 0;
      
      private var var_1997:Boolean = false;
      
      private var var_2087:String = "";
      
      private var var_2266:Boolean = false;
      
      private var var_2958:Boolean = false;
      
      private var var_2953:Boolean = true;
      
      private var var_1372:int = 0;
      
      private var var_2952:Boolean = false;
      
      private var var_2955:Boolean = false;
      
      private var var_2957:Boolean = false;
      
      private var var_2956:Boolean = false;
      
      private var var_2959:Boolean = false;
      
      private var var_2954:Boolean = false;
      
      private var var_2951:int = 0;
      
      private var var_1996:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_260 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2161 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2161;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2391 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2391;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2389 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2389;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2390 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2390;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_260 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_260;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1610 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1610;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2694 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2694;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2958 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2958;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1372 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1372;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2952 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2952;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2955 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2955;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2957 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2957;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2956 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2956;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2959 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2959;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2954 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2954;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2951 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2951;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2953 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2953;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1996 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1996;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2696 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2696;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2695 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2695;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1997 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1997;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_2087 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_2087;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2266 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2266;
      }
   }
}
