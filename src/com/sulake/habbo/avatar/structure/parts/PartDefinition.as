package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2615:String;
      
      private var var_1928:String;
      
      private var var_2614:String;
      
      private var var_1930:Boolean;
      
      private var var_1929:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2615 = String(param1["set-type"]);
         this.var_1928 = String(param1["flipped-set-type"]);
         this.var_2614 = String(param1["remove-set-type"]);
         this.var_1930 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1929 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1929;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1929 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2615;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1928;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2614;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1930;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1930 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1928 = param1;
      }
   }
}
