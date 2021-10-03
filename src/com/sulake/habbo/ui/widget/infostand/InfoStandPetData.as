package com.sulake.habbo.ui.widget.infostand
{
   import com.sulake.habbo.ui.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1301:int;
      
      private var var_2459:int;
      
      private var var_2411:int;
      
      private var var_2460:int;
      
      private var _energy:int;
      
      private var var_2464:int;
      
      private var _nutrition:int;
      
      private var var_2462:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1825:int = -1;
      
      private var _type:int;
      
      private var var_2461:int;
      
      private var var_47:BitmapData;
      
      private var var_2463:Boolean;
      
      private var var_2450:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2426:int;
      
      private var var_597:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1825;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2461;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2463;
      }
      
      public function get ownerId() : int
      {
         return this.var_2450;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_597;
      }
      
      public function get level() : int
      {
         return this.var_1301;
      }
      
      public function get levelMax() : int
      {
         return this.var_2459;
      }
      
      public function get experience() : int
      {
         return this.var_2411;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2460;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2464;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2462;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2426;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1825 = param1.id;
         this._type = param1.petType;
         this.var_2461 = param1.petRace;
         this.var_47 = param1.image;
         this.var_2463 = param1.isOwnPet;
         this.var_2450 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1301 = param1.level;
         this.var_2459 = param1.levelMax;
         this.var_2411 = param1.experience;
         this.var_2460 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_2464 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_2462 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2426 = param1.roomIndex;
         this.var_597 = param1.age;
      }
   }
}
