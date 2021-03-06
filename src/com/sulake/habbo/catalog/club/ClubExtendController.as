package com.sulake.habbo.catalog.club
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.communication.messages.incoming.catalog.ClubOfferExtendData;
   import com.sulake.habbo.communication.messages.incoming.catalog.HabboClubExtendOfferMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.communication.messages.parser.catalog.HabboClubExtendOfferMessageParser;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class ClubExtendController
   {
       
      
      private var _catalog:HabboCatalog;
      
      private var _confirmationDialog:ClubExtendConfirmationDialog;
      
      private var var_103:ClubOfferExtendData;
      
      private var _disposed:Boolean = false;
      
      public function ClubExtendController(param1:HabboCatalog)
      {
         super();
         this._catalog = param1;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this.closeConfirmation();
         this.var_103 = null;
         this._catalog = null;
         this._disposed = true;
      }
      
      public function onOffer(param1:HabboClubExtendOfferMessageEvent) : void
      {
         if(this._disposed)
         {
            return;
         }
         var _loc2_:HabboClubExtendOfferMessageParser = param1.getParser();
         this.var_103 = _loc2_.offer();
         this.showConfirmation();
         if(this._catalog.connection)
         {
            this._catalog.connection.send(new EventLogMessageComposer("Catalog","dialog_show","vip.membership.extension.purchase"));
         }
      }
      
      public function closeConfirmation() : void
      {
         if(this._confirmationDialog)
         {
            this._confirmationDialog.dispose();
            this._confirmationDialog = null;
         }
      }
      
      public function showConfirmation() : void
      {
         this.closeConfirmation();
         this._confirmationDialog = new ClubExtendConfirmationDialog(this,this.var_103);
         this._confirmationDialog.showConfirmation();
      }
      
      public function confirmSelection() : void
      {
         if(!this._catalog || !this._catalog.connection)
         {
            return;
         }
         this._catalog.purchaseVipMembershipExtension(this.var_103.offerId);
         this.closeConfirmation();
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         if(!this._catalog)
         {
            return null;
         }
         return this._catalog.windowManager;
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         if(!this._catalog)
         {
            return null;
         }
         return this._catalog.localization;
      }
      
      public function get assets() : IAssetLibrary
      {
         if(!this._catalog)
         {
            return null;
         }
         return this._catalog.assets;
      }
   }
}
