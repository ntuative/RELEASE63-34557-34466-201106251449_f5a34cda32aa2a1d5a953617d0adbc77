package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_193;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1341;
         param1["embedded_controller"] = const_1170;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_997;
         param1["mouse_dragging_target"] = const_308;
         param1["mouse_dragging_trigger"] = const_426;
         param1["mouse_scaling_target"] = const_364;
         param1["mouse_scaling_trigger"] = const_640;
         param1["horizontal_mouse_scaling_trigger"] = const_307;
         param1["vertical_mouse_scaling_trigger"] = const_265;
         param1["observe_parent_input_events"] = const_1202;
         param1["optimize_region_to_layout_size"] = const_527;
         param1["parent_window"] = const_1323;
         param1["relative_horizontal_scale_center"] = const_236;
         param1["relative_horizontal_scale_fixed"] = const_154;
         param1["relative_horizontal_scale_move"] = const_397;
         param1["relative_horizontal_scale_strech"] = const_415;
         param1["relative_scale_center"] = const_1183;
         param1["relative_scale_fixed"] = const_1020;
         param1["relative_scale_move"] = const_1259;
         param1["relative_scale_strech"] = const_1264;
         param1["relative_vertical_scale_center"] = const_228;
         param1["relative_vertical_scale_fixed"] = const_141;
         param1["relative_vertical_scale_move"] = const_258;
         param1["relative_vertical_scale_strech"] = const_377;
         param1["on_resize_align_left"] = const_810;
         param1["on_resize_align_right"] = const_508;
         param1["on_resize_align_center"] = const_582;
         param1["on_resize_align_top"] = const_947;
         param1["on_resize_align_bottom"] = const_521;
         param1["on_resize_align_middle"] = const_613;
         param1["on_accommodate_align_left"] = const_1327;
         param1["on_accommodate_align_right"] = const_578;
         param1["on_accommodate_align_center"] = const_779;
         param1["on_accommodate_align_top"] = const_1319;
         param1["on_accommodate_align_bottom"] = const_661;
         param1["on_accommodate_align_middle"] = const_798;
         param1["route_input_events_to_parent"] = const_602;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1258;
         param1["scalable_with_mouse"] = const_1209;
         param1["reflect_horizontal_resize_to_parent"] = const_605;
         param1["reflect_vertical_resize_to_parent"] = const_609;
         param1["reflect_resize_to_parent"] = const_371;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1283;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
