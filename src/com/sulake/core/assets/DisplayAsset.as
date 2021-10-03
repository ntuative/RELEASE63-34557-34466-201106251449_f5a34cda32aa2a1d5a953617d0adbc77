package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1140:String;
      
      protected var var_197:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_928:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_928 = param1;
         this.var_1140 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1140;
      }
      
      public function get content() : Object
      {
         return this.var_197;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_928;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_197.loaderInfo != null)
            {
               if(this.var_197.loaderInfo.loader != null)
               {
                  this.var_197.loaderInfo.loader.unload();
               }
            }
            this.var_197 = null;
            this.var_928 = null;
            this._disposed = true;
            this.var_1140 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_197 = param1 as DisplayObject;
            if(this.var_197 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_197 = DisplayAsset(param1).var_197;
            this.var_928 = DisplayAsset(param1).var_928;
            if(this.var_197 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_197 = DisplayAsset(param1).var_197;
            this.var_928 = DisplayAsset(param1).var_928;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
