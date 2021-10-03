package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_669:String = "RWUAM_WHISPER_USER";
      
      public static const const_538:String = "RWUAM_IGNORE_USER";
      
      public static const const_517:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_420:String = "RWUAM_KICK_USER";
      
      public static const const_544:String = "RWUAM_BAN_USER";
      
      public static const const_622:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_590:String = "RWUAM_RESPECT_USER";
      
      public static const const_654:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_494:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_667:String = "RWUAM_START_TRADING";
      
      public static const const_799:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_668:String = "RWUAM_KICK_BOT";
      
      public static const const_514:String = "RWUAM_REPORT";
      
      public static const const_561:String = "RWUAM_PICKUP_PET";
      
      public static const const_1962:String = "RWUAM_TRAIN_PET";
      
      public static const const_652:String = " RWUAM_RESPECT_PET";
      
      public static const const_262:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_604:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
