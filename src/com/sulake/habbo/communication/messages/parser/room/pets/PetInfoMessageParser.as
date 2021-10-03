package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1825:int;
      
      private var _name:String;
      
      private var var_1301:int;
      
      private var var_2760:int;
      
      private var var_2411:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2761:int;
      
      private var var_2762:int;
      
      private var var_2763:int;
      
      private var var_2631:int;
      
      private var var_2450:int;
      
      private var _ownerName:String;
      
      private var var_597:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1825;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1301;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2760;
      }
      
      public function get experience() : int
      {
         return this.var_2411;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2761;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2762;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2763;
      }
      
      public function get respect() : int
      {
         return this.var_2631;
      }
      
      public function get ownerId() : int
      {
         return this.var_2450;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_597;
      }
      
      public function flush() : Boolean
      {
         this.var_1825 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1825 = param1.readInteger();
         this._name = param1.readString();
         this.var_1301 = param1.readInteger();
         this.var_2760 = param1.readInteger();
         this.var_2411 = param1.readInteger();
         this.var_2761 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2762 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2763 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2631 = param1.readInteger();
         this.var_2450 = param1.readInteger();
         this.var_597 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
