package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_365:int = 1;
      
      public static const const_206:int = 2;
      
      public static const const_249:int = 3;
      
      public static const const_328:int = 4;
      
      public static const const_233:int = 5;
      
      public static const const_396:int = 1;
      
      public static const const_861:int = 2;
      
      public static const const_897:int = 3;
      
      public static const const_820:int = 4;
      
      public static const const_318:int = 5;
      
      public static const const_806:int = 6;
      
      public static const const_747:int = 7;
      
      public static const const_246:int = 8;
      
      public static const const_419:int = 9;
      
      public static const const_2119:int = 10;
      
      public static const const_836:int = 11;
      
      public static const const_617:int = 12;
       
      
      private var var_433:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_433 = new Array();
         this.var_433.push(new Tab(this._navigator,const_365,const_617,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_531));
         this.var_433.push(new Tab(this._navigator,const_206,const_396,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_531));
         this.var_433.push(new Tab(this._navigator,const_328,const_836,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1307));
         this.var_433.push(new Tab(this._navigator,const_249,const_318,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_531));
         this.var_433.push(new Tab(this._navigator,const_233,const_246,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_886));
         this.setSelectedTab(const_365);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_328;
      }
      
      public function get tabs() : Array
      {
         return this.var_433;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_433)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_433)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_433)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
