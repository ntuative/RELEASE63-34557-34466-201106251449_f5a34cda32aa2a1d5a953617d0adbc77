package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_446:String = "success";
      
      public static const const_370:String = "failure";
       
      
      private var var_45:URLLoader;
      
      private var var_1667:String;
      
      private var var_1668:IHabboWebLogin;
      
      private var var_3120:String;
      
      private var var_2151:String;
      
      private var var_2002:String;
      
      private var _assets:IAssetLibrary;
      
      private var var_2972:Boolean;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String, param4:Boolean = true)
      {
         super();
         this._assets = param1;
         this.var_1668 = param2;
         this.var_1667 = "http://" + param3 + "/client";
         if(!param4)
         {
            this.var_1668.init();
            this.var_1668.addEventListener(HabboWeb.const_309,this.requestClientURL);
         }
         else
         {
            this.requestClientURL();
         }
      }
      
      public function get ticket() : String
      {
         return this.var_2151;
      }
      
      public function get isFacebookUser() : Boolean
      {
         return this.var_2972;
      }
      
      public function get flashClientUrl() : String
      {
         return this.var_2002;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = this.var_1667;
         if(this._assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + this.var_1667);
         }
         var _loc3_:URLRequest = new URLRequest(this.var_1667);
         if(this._assets.hasAsset(_loc2_))
         {
            this._assets.removeAsset(this._assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = this._assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,this.clientURLComplete);
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var facebookData:Object = null;
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            this.var_1668.requestReAuthenticate();
         }
         else
         {
            try
            {
               this.var_2151 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               this.var_2002 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               facebookData = /\"facebook.user\" : \"(.*?)\"/.exec(data);
               if(facebookData)
               {
                  this.var_2972 = Boolean(facebookData[1]);
               }
               if(this.var_2151.length > 0)
               {
                  dispatchEvent(new Event(const_446));
               }
               else
               {
                  dispatchEvent(new Event(const_370));
               }
            }
            catch(e:Error)
            {
               dispatchEvent(new Event(const_370));
            }
         }
      }
   }
}
