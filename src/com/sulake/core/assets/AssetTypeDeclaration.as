package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2934:String;
      
      private var var_2936:Class;
      
      private var var_2935:Class;
      
      private var var_2137:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2934 = param1;
         this.var_2936 = param2;
         this.var_2935 = param3;
         if(rest == null)
         {
            this.var_2137 = new Array();
         }
         else
         {
            this.var_2137 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2934;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2936;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2935;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2137;
      }
   }
}
