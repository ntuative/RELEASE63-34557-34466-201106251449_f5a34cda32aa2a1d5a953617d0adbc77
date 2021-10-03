package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_461:RoomObjectLocationCacheItem = null;
      
      private var var_235:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_461 = new RoomObjectLocationCacheItem(param1);
         this.var_235 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_461;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_235;
      }
      
      public function dispose() : void
      {
         if(this.var_461 != null)
         {
            this.var_461.dispose();
            this.var_461 = null;
         }
         if(this.var_235 != null)
         {
            this.var_235.dispose();
            this.var_235 = null;
         }
      }
   }
}
