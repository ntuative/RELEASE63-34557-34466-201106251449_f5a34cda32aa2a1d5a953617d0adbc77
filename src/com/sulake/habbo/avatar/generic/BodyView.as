package com.sulake.habbo.avatar.generic
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.common.AvatarEditorGridView;
   import com.sulake.habbo.avatar.common.CategoryBaseView;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryView;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.utils.Dictionary;
   
   public class BodyView extends CategoryBaseView implements IAvatarEditorCategoryView
   {
       
      
      private const const_725:String = "tab_boy";
      
      private const const_726:String = "tab_girl";
      
      public function BodyView(param1:IAvatarEditorCategoryModel, param2:IHabboWindowManager, param3:IAssetLibrary)
      {
         super(param2,param3,param1);
         var_165 = FigureData.const_87;
      }
      
      override public function reset() : void
      {
         super.reset();
         var_165 = FigureData.const_87;
      }
      
      override public function init() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_window)
         {
            _loc1_ = _assetLibrary.getAssetByName("avatareditor_generic_base") as XmlAsset;
            if(_loc1_)
            {
               _window = IWindowContainer(_windowManager.buildFromXML(_loc1_.content as XML));
               _window.visible = false;
               _window.procedure = this.windowEventProc;
            }
         }
         if(!var_41)
         {
            var_41 = new Dictionary();
            var_41["null"] = new AvatarEditorGridView(var_77,FigureData.const_87,_windowManager,_assetLibrary);
         }
         else
         {
            for each(_loc2_ in var_41)
            {
               _loc2_.initFromList();
            }
         }
         _isInitialized = true;
         updateGridView();
         attachImages();
         this.updateGenderTab();
      }
      
      override public function getWindowContainer() : IWindowContainer
      {
         if(!_isInitialized)
         {
            this.init();
         }
         this.updateGenderTab();
         return _window;
      }
      
      public function updateGenderTab() : void
      {
         if(var_77 == null)
         {
            return;
         }
         switch(var_77.controller.gender)
         {
            case FigureData.const_90:
               activateTab(this.const_725);
               inactivateTab(this.const_726);
               break;
            case FigureData.FEMALE:
               activateTab(this.const_726);
               inactivateTab(this.const_725);
         }
      }
      
      public function switchCategory(param1:String) : void
      {
         this.updateGenderTab();
      }
      
      private function windowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case this.const_725:
                  var_77.controller.gender = FigureData.const_90;
                  param1.stopPropagation();
                  break;
               case this.const_726:
                  var_77.controller.gender = FigureData.FEMALE;
                  param1.stopPropagation();
            }
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            switch(param2.name)
            {
               case this.const_725:
               case this.const_726:
                  activateTab(param2.name);
            }
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            switch(param2.name)
            {
               case this.const_725:
               case this.const_726:
                  this.updateGenderTab();
            }
         }
      }
   }
}
