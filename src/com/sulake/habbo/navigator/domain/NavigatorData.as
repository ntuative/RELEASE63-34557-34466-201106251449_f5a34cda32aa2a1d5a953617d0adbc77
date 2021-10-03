package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2100:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_226:MsgWithRequestId;
      
      private var var_704:RoomEventData;
      
      private var var_2850:Boolean;
      
      private var var_2853:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2280:int;
      
      private var var_293:GuestRoomData;
      
      private var var_1088:PublicRoomShortData;
      
      private var var_2845:int;
      
      private var var_2846:Boolean;
      
      private var var_2847:int;
      
      private var var_2852:Boolean;
      
      private var var_2067:int;
      
      private var var_2854:Boolean;
      
      private var var_1494:Array;
      
      private var var_1627:Array;
      
      private var var_2851:int;
      
      private var var_1626:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1341:Boolean;
      
      private var var_2844:int;
      
      private var var_2848:Boolean;
      
      private var var_2849:int = 0;
      
      private var var_2066:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1494 = new Array();
         this.var_1627 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_293 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_293 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1088 = null;
         this.var_293 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1088 = param1.publicSpace;
            this.var_704 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_704 != null)
         {
            this.var_704.dispose();
            this.var_704 = null;
         }
         if(this.var_1088 != null)
         {
            this.var_1088.dispose();
            this.var_1088 = null;
         }
         if(this.var_293 != null)
         {
            this.var_293.dispose();
            this.var_293 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_293 != null)
         {
            this.var_293.dispose();
         }
         this.var_293 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_704 != null)
         {
            this.var_704.dispose();
         }
         this.var_704 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_226 != null && this.var_226 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_226 != null && this.var_226 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_226 != null && this.var_226 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_226 = param1;
         this.var_2066 = param1.ad;
         this.var_1341 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_226 = param1;
         this.var_1341 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_226 = param1;
         this.var_1341 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_226 == null)
         {
            return;
         }
         this.var_226.dispose();
         this.var_226 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2066 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2066;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_226 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_226 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_226 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_704;
      }
      
      public function get avatarId() : int
      {
         return this.var_2280;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2850;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2853;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_293;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1088;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2846;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2847;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2067;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2852;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2844;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2845;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2854;
      }
      
      public function get adIndex() : int
      {
         return this.var_2849;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2848;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2280 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2847 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2846 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2850 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2853 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2852 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2067 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2844 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2845 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2854 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2849 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2848 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1494 = param1;
         this.var_1627 = new Array();
         for each(_loc2_ in this.var_1494)
         {
            if(_loc2_.visible)
            {
               this.var_1627.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1494;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1627;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2851 = param1.limit;
         this.var_1626 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1626 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_293.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_293 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_293.flatId;
         return this.var_2067 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1626 >= this.var_2851;
      }
      
      public function startLoading() : void
      {
         this.var_1341 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1341;
      }
   }
}
