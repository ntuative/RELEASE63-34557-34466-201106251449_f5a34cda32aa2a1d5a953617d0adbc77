package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_815;
         param1["badge"] = const_744;
         param1["bitmap"] = const_429;
         param1["border"] = const_982;
         param1["border_notify"] = const_1747;
         param1["bubble"] = const_946;
         param1["bubble_pointer_up"] = const_1285;
         param1["bubble_pointer_right"] = const_1256;
         param1["bubble_pointer_down"] = const_1335;
         param1["bubble_pointer_left"] = const_1318;
         param1["button"] = const_643;
         param1["button_thick"] = const_1030;
         param1["button_icon"] = const_1980;
         param1["button_group_left"] = const_891;
         param1["button_group_center"] = const_882;
         param1["button_group_right"] = const_871;
         param1["canvas"] = const_955;
         param1["checkbox"] = const_889;
         param1["closebutton"] = const_1177;
         param1["container"] = const_406;
         param1["container_button"] = const_819;
         param1["display_object_wrapper"] = const_984;
         param1["dropmenu"] = const_636;
         param1["dropmenu_item"] = const_573;
         param1["frame"] = const_402;
         param1["frame_notify"] = const_1799;
         param1["header"] = const_754;
         param1["html"] = const_1377;
         param1["icon"] = const_1244;
         param1["itemgrid"] = const_1192;
         param1["itemgrid_horizontal"] = const_610;
         param1["itemgrid_vertical"] = const_804;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_447;
         param1["itemlist_vertical"] = const_399;
         param1["label"] = const_757;
         param1["maximizebox"] = const_1939;
         param1["menu"] = const_1818;
         param1["menu_item"] = const_1853;
         param1["submenu"] = const_1210;
         param1["minimizebox"] = const_1841;
         param1["notify"] = const_1834;
         param1["null"] = const_859;
         param1["password"] = const_876;
         param1["radiobutton"] = const_738;
         param1["region"] = const_327;
         param1["restorebox"] = const_1771;
         param1["scaler"] = const_529;
         param1["scaler_horizontal"] = const_2023;
         param1["scaler_vertical"] = const_1901;
         param1["scrollbar_horizontal"] = const_502;
         param1["scrollbar_vertical"] = const_1001;
         param1["scrollbar_slider_button_up"] = const_1266;
         param1["scrollbar_slider_button_down"] = const_1231;
         param1["scrollbar_slider_button_left"] = const_1403;
         param1["scrollbar_slider_button_right"] = const_1338;
         param1["scrollbar_slider_bar_horizontal"] = const_1311;
         param1["scrollbar_slider_bar_vertical"] = const_1310;
         param1["scrollbar_slider_track_horizontal"] = const_1275;
         param1["scrollbar_slider_track_vertical"] = const_1315;
         param1["scrollable_itemlist"] = const_1817;
         param1["scrollable_itemlist_vertical"] = const_540;
         param1["scrollable_itemlist_horizontal"] = const_1234;
         param1["selector"] = const_919;
         param1["selector_list"] = const_920;
         param1["submenu"] = const_1210;
         param1["tab_button"] = const_901;
         param1["tab_container_button"] = const_1389;
         param1["tab_context"] = const_434;
         param1["tab_content"] = const_1371;
         param1["tab_selector"] = const_894;
         param1["text"] = const_966;
         param1["input"] = const_900;
         param1["toolbar"] = const_1751;
         param1["tooltip"] = const_413;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
