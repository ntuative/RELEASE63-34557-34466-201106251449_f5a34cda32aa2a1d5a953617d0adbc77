package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularTagData;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.IViewCtrl;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   
   public class PopularTagsListCtrl implements IViewCtrl
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_197:IWindowContainer;
      
      private var var_62:IItemListWindow;
      
      private var var_3121:int;
      
      private var var_977:TagRenderer;
      
      public function PopularTagsListCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_977 = new TagRenderer(this._navigator);
      }
      
      public function dispose() : void
      {
         if(this.var_977)
         {
            this.var_977.dispose();
            this.var_977 = null;
         }
      }
      
      public function set content(param1:IWindowContainer) : void
      {
         this.var_197 = param1;
         this.var_62 = IItemListWindow(this.var_197.findChildByName("item_list"));
      }
      
      public function get content() : IWindowContainer
      {
         return this.var_197;
      }
      
      public function refresh() : void
      {
         var _loc4_:* = null;
         var _loc1_:Array = this._navigator.data.popularTags.tags;
         var _loc2_:IWindowContainer = IWindowContainer(this.var_62.getListItemAt(0));
         if(_loc2_ == null)
         {
            _loc2_ = IWindowContainer(this._navigator.getXmlWindow("grs_popular_tag_row"));
            this.var_62.addListItem(_loc2_);
         }
         Util.hideChildren(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < this._navigator.data.popularTags.tags.length)
         {
            _loc4_ = this._navigator.data.popularTags.tags[_loc3_];
            this.var_977.refreshTag(_loc2_,_loc3_,_loc4_.tagName);
            _loc3_++;
         }
         Util.layoutChildrenInArea(_loc2_,_loc2_.width,18,3);
         _loc2_.height = Util.getLowestPoint(_loc2_);
         this.var_197.findChildByName("no_tags_found").visible = _loc1_.length < 1;
      }
      
      private function refreshTagName(param1:IWindowContainer, param2:PopularTagData) : void
      {
         var _loc4_:ITextWindow = ITextWindow(param1.findChildByName("txt"));
         if(param2 == null)
         {
            return;
         }
         _loc4_.visible = true;
         _loc4_.text = param2.tagName;
      }
   }
}
