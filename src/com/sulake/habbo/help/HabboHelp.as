package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var _toolbar:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_268:IHabboCommunicationManager;
      
      private var var_744:IHabboLocalizationManager;
      
      private var var_1027:IHabboConfigurationManager;
      
      private var var_417:ISessionDataManager;
      
      private var var_1256:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_72:HelpUI;
      
      private var var_119:TutorialUI;
      
      private var var_833:HotelMergeUI;
      
      private var var_1553:CallForHelpData;
      
      private var var_2626:UserRegistry;
      
      private var var_2625:String = "";
      
      private var var_1026:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1553 = new CallForHelpData();
         this.var_2626 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1256 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2625 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2625;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1553;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2626;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_744;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this._toolbar;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_417;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_119;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_833;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_119)
         {
            return this.var_119.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_72 != null)
         {
            this.var_72.dispose();
            this.var_72 = null;
         }
         if(this.var_119 != null)
         {
            this.var_119.dispose();
            this.var_119 = null;
         }
         if(this.var_833)
         {
            this.var_833.dispose();
            this.var_833 = null;
         }
         if(this.var_1256 != null)
         {
            this.var_1256.dispose();
            this.var_1256 = null;
         }
         this._incomingMessages = null;
         if(this._toolbar)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this.var_744)
         {
            this.var_744.release(new IIDHabboLocalizationManager());
            this.var_744 = null;
         }
         if(this.var_268)
         {
            this.var_268.release(new IIDHabboCommunicationManager());
            this.var_268 = null;
         }
         if(this.var_1027)
         {
            this.var_1027.release(new IIDHabboConfigurationManager());
            this.var_1027 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_417 != null)
         {
            this.var_417.release(new IIDSessionDataManager());
            this.var_417 = null;
         }
         if(this.var_1026 != null)
         {
            this.var_1026.dispose();
            this.var_1026 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_72 != null)
         {
            this.var_72.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_72 != null)
         {
            this.var_72.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_72 != null)
         {
            this.var_72.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_72 != null)
         {
            this.var_72.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_72 != null)
         {
            this.var_72.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1256;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_268 != null && param1 != null)
         {
            this.var_268.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_1027 == null)
         {
            return param1;
         }
         return this.var_1027.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_72 != null)
         {
            this.var_72.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_72 != null)
         {
            this.var_72.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1553.reportedUserId = param1;
         this.var_1553.reportedUserName = param2;
         this.var_72.showUI(HabboHelpViewEnum.const_449);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_72 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_72.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_72 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_72 = new HelpUI(this,this._assetLibrary,this._windowManager);
         }
         return this.var_72 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_119 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_119 = new TutorialUI(this,_loc1_);
         }
         return this.var_119 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_119 != null)
         {
            this.var_119.dispose();
            this.var_119 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_833)
         {
            this.var_833 = new HotelMergeUI(this);
         }
         this.var_833.startNameChange();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_119 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_119.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_119)
         {
            this.var_119.showView(TutorialUI.const_335);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_268 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_268);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_744 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_1027 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_73,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_86,this.onRoomSessionEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_49,this.onHabboToolbarEvent);
         this.createHelpUI();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_417 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_73:
               if(this.var_72 != null)
               {
                  this.var_72.setRoomSessionStatus(true);
               }
               if(this.var_119 != null)
               {
                  this.var_119.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_86:
               if(this.var_72 != null)
               {
                  this.var_72.setRoomSessionStatus(false);
               }
               if(this.var_119 != null)
               {
                  this.var_119.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      public function showWelcomeScreen(param1:WelcomeNotification) : void
      {
         if(!this.var_1026)
         {
            this.var_1026 = new WelcomeScreenController(this,this._windowManager);
         }
         this.var_1026.showWelcomeScreen(param1);
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_49)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
            }
         }
      }
   }
}
