package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetPurchaseOverrideEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.tracking.HabboTracking;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2439:XML;
      
      private var var_2443:XML;
      
      private var var_2440:XML;
      
      private var var_2438:XML;
      
      private var var_2441:XML;
      
      private var var_2442:XML;
      
      private var var_988:IWindowContainer;
      
      private var var_635:IButtonWindow;
      
      private var var_3104:IButtonWindow;
      
      private var var_1827:IButtonWindow;
      
      private var var_1829:ITextWindow;
      
      private var var_1828:ITextWindow;
      
      private var var_1830:ITextWindow;
      
      private var var_3072:ITextWindow;
      
      private var var_103:Offer;
      
      private var var_1826:String = "";
      
      private var var_1497:Function;
      
      private var var_33:ISessionDataManager;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer, param2:ISessionDataManager)
      {
         super(param1);
         this.var_33 = param2;
      }
      
      override public function dispose() : void
      {
         events.removeEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.removeEventListener(WidgetEvent.const_835,this.onSetParameter);
         events.removeEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_2439 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            this.var_2443 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            this.var_2440 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         var _loc5_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetBuyClubStub") as XmlAsset;
         if(_loc5_ != null)
         {
            this.var_2438 = _loc5_.content as XML;
         }
         var _loc6_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetBuyVipStub") as XmlAsset;
         if(_loc6_ != null)
         {
            this.var_2441 = _loc6_.content as XML;
         }
         var _loc7_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetBuyVipStub") as XmlAsset;
         if(_loc7_ != null)
         {
            this.var_2442 = _loc7_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.addEventListener(WidgetEvent.const_835,this.onSetParameter);
         events.addEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         events.addEventListener(WidgetEvent.CWE_INIT_PURCHASE,this.initPurchase);
         return true;
      }
      
      private function onPurchaseOverride(param1:CatalogWidgetPurchaseOverrideEvent) : void
      {
         this.var_1497 = param1.callback;
      }
      
      private function attachStub(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         if(this.var_33.hasUserRight(null,param2))
         {
            switch(param1)
            {
               case Offer.const_977:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2439) as IWindowContainer;
                  break;
               case Offer.const_1242:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2443) as IWindowContainer;
                  break;
               case Offer.const_1261:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2440) as IWindowContainer;
                  break;
               default:
                  Logger.log("Unknown price-type, can\'t attach..." + this.var_103.priceType);
            }
         }
         else
         {
            switch(param2)
            {
               case HabboClubLevelEnum.const_35:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2438) as IWindowContainer;
                  break;
               case HabboClubLevelEnum.const_46:
                  if(!this.var_33.hasUserRight(null,HabboClubLevelEnum.const_35))
                  {
                     _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2441) as IWindowContainer;
                  }
                  else
                  {
                     _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2442) as IWindowContainer;
                  }
            }
         }
         if(_loc3_ != null)
         {
            if(this.var_988 != null)
            {
               _window.removeChild(this.var_988);
               this.var_988.dispose();
            }
            this.var_988 = _loc3_;
            _window.addChild(_loc3_);
            this.var_988.x = 0;
            this.var_988.y = 0;
         }
         this.var_1829 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         this.var_1828 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         this.var_1830 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         this.var_3072 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         this.var_635 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         this.var_1827 = window.findChildByName("ctlg_buy_club_button") as IButtonWindow;
         if(this.var_635 != null)
         {
            if(this.var_1497 != null)
            {
               this.var_635.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1497);
            }
            else
            {
               this.var_635.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1497);
               this.var_635.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPurchase);
            }
            this.var_635.disable();
         }
         if(this.var_1827 != null)
         {
            this.var_1827.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onBuyClub);
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         this.var_103 = param1.offer;
         this.attachStub(this.var_103.priceType,this.var_103.clubLevel);
         if(this.var_1829 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(this.var_103.priceInCredits));
            this.var_1829.caption = "${catalog.purchase.price.credits}";
         }
         var _loc3_:String = this.var_103.activityPointType == ActivityPointTypeEnum.PIXEL ? "pixels" : "activitypoints";
         if(this.var_1828 != null)
         {
            _loc4_ = "catalog.purchase.price.activitypoints." + this.var_103.activityPointType;
            _loc2_.registerParameter(_loc4_,_loc3_,this.var_103.priceInActivityPoints.toString());
            this.var_1828.caption = _loc2_.getKey(_loc4_);
         }
         if(this.var_1830 != null)
         {
            _loc4_ = "catalog.purchase.price.credits_and_activitypoints." + this.var_103.activityPointType;
            _loc2_.registerParameter(_loc4_,"credits",String(this.var_103.priceInCredits));
            _loc2_.registerParameter(_loc4_,_loc3_,String(this.var_103.priceInActivityPoints));
            this.var_1830.caption = _loc2_.getKey(_loc4_);
         }
         var _loc5_:IWindow = _window.findChildByName("activity_points_bg");
         if(_loc5_ != null)
         {
            _loc5_.color = this.var_103.activityPointType == 0 ? 6737151 : uint(13421772);
         }
         if(this.var_635 != null)
         {
            this.var_635.enable();
         }
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         this.var_1826 = param1.parameter;
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(this.var_103 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_103,page.pageId,this.var_1826);
         }
      }
      
      private function initPurchase(param1:CatalogWidgetInitPurchaseEvent) : void
      {
         if(this.var_103 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_103,page.pageId,this.var_1826,param1.enableBuyAsGift);
         }
      }
      
      private function onBuyClub(param1:WindowMouseEvent) : void
      {
         (page.viewer.catalog as HabboCatalog).openCatalogPage(CatalogPageName.const_140,true);
         HabboTracking.getInstance().trackEventLog("Catalog","click","BUY_CLUB");
      }
   }
}
