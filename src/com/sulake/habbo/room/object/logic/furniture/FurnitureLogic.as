package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.events.RoomObjectStateChangeEvent;
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectItemDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.logic.MovingObjectLogic;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import com.sulake.room.utils.XMLValidator;
   import flash.events.MouseEvent;
   
   public class FurnitureLogic extends MovingObjectLogic
   {
      
      private static const const_489:int = 8;
      
      private static const const_1160:Number = 0.0625;
       
      
      private var var_1390:Boolean = false;
      
      private var var_578:Number = 0.0;
      
      private var var_700:Number = 0.0;
      
      private var var_1674:Number = 0.0;
      
      private var var_2356:Number = 0.0;
      
      private var var_2355:Number = 0.0;
      
      private var var_2165:Number = 0.0;
      
      private var var_2164:Boolean = false;
      
      private var var_416:int = 0;
      
      private var var_1389:RoomObjectUpdateMessage;
      
      private var var_1123:Vector3d;
      
      private var var_287:Array;
      
      public function FurnitureLogic()
      {
         this.var_1123 = new Vector3d();
         this.var_287 = [];
         super();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectRoomAdEvent.const_351,RoomObjectRoomAdEvent.const_385,RoomObjectRoomAdEvent.const_528,RoomObjectStateChangeEvent.const_67,RoomObjectMouseEvent.const_165,RoomObjectRoomAdEvent.const_230,RoomObjectMouseEvent.const_552];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_1389 = null;
         this.var_287 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null && param1.getLocation().length > 0)
         {
            this.var_2164 = true;
         }
      }
      
      override public function initialize(param1:XML) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         if(param1 == null)
         {
            return;
         }
         this.var_578 = 0;
         this.var_700 = 0;
         this.var_1674 = 0;
         this.var_287 = [];
         var _loc2_:XMLList = param1.model.dimensions;
         if(_loc2_.length() == 0)
         {
            return;
         }
         var _loc3_:XMLList = _loc2_.@x;
         if(_loc3_.length() == 1)
         {
            this.var_578 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@y;
         if(_loc3_.length() == 1)
         {
            this.var_700 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@z;
         if(_loc3_.length() == 1)
         {
            this.var_1674 = Number(_loc3_);
         }
         this.var_2356 = this.var_578 / 2;
         this.var_2355 = this.var_700 / 2;
         _loc3_ = _loc2_.@centerZ;
         if(_loc3_.length() == 1)
         {
            this.var_2165 = Number(_loc3_);
         }
         else
         {
            this.var_2165 = this.var_1674 / 2;
         }
         var _loc4_:XMLList = param1.model.directions.direction;
         var _loc5_:* = ["id"];
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length())
         {
            _loc7_ = _loc4_[_loc6_];
            if(XMLValidator.checkRequiredAttributes(_loc7_,_loc5_))
            {
               _loc8_ = parseInt(_loc7_.@id);
               this.var_287.push(_loc8_);
            }
            _loc6_++;
         }
         this.var_287.sort(Array.NUMERIC);
         if(object == null || object.getModelController() == null)
         {
            return;
         }
         object.getModelController().setNumber(RoomObjectVariableEnum.const_275,this.var_578,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_331,this.var_700,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_647,this.var_1674,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1897,this.var_2356,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1807,this.var_2355,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_902,this.var_2165,true);
         object.getModelController().setNumberArray(RoomObjectVariableEnum.const_865,this.var_287,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_378,1);
      }
      
      protected function getAdClickUrl(param1:IRoomObjectModelController) : String
      {
         return param1.getString(RoomObjectVariableEnum.const_431);
      }
      
      protected function handleAdClick(param1:int, param2:String, param3:String) : void
      {
         if(eventDispatcher != null)
         {
            eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_230,param1,param2));
         }
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(param1.type == MouseEvent.MOUSE_MOVE)
         {
            return;
         }
         if(object == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModelController = object.getModel() as IRoomObjectModelController;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc7_:String = this.getAdClickUrl(_loc3_);
         switch(param1.type)
         {
            case MouseEvent.ROLL_OVER:
               if(!this.var_1390)
               {
                  if(eventDispatcher != null && _loc7_ != null && _loc7_.indexOf("http") == 0)
                  {
                     _loc4_ = object.getId();
                     _loc5_ = object.getType();
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_351,_loc4_,_loc5_));
                  }
                  this.var_1390 = true;
               }
               break;
            case MouseEvent.ROLL_OUT:
               if(this.var_1390)
               {
                  if(eventDispatcher != null && _loc7_ != null && _loc7_.indexOf("http") == 0)
                  {
                     _loc4_ = object.getId();
                     _loc5_ = object.getType();
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_385,_loc4_,_loc5_));
                  }
                  this.var_1390 = false;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               this.useObject();
               break;
            case MouseEvent.CLICK:
               _loc4_ = object.getId();
               _loc5_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc6_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_165,param1.eventId,_loc4_,_loc5_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc6_);
               }
               if(eventDispatcher != null && _loc7_ != null && _loc7_.indexOf("http") == 0)
               {
                  this.handleAdClick(_loc4_,_loc5_,_loc7_);
               }
               break;
            case MouseEvent.MOUSE_DOWN:
               if(eventDispatcher != null)
               {
                  _loc4_ = object.getId();
                  _loc5_ = object.getType();
                  _loc6_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_552,param1.eventId,_loc4_,_loc5_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc6_);
               }
         }
      }
      
      override public function useObject() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(object != null)
         {
            _loc1_ = object.getId();
            _loc2_ = object.getType();
            _loc3_ = object.getModel() as IRoomObjectModelController;
            if(_loc3_ != null)
            {
               _loc4_ = this.getAdClickUrl(_loc3_);
               if(eventDispatcher != null && _loc4_ != null && _loc4_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_528,_loc1_,_loc2_));
               }
            }
            if(eventDispatcher != null)
            {
               eventDispatcher.dispatchEvent(new RoomObjectStateChangeEvent(RoomObjectStateChangeEvent.const_67,_loc1_,_loc2_));
            }
         }
      }
      
      private function handleDataUpdateMessage(param1:RoomObjectDataUpdateMessage) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         object.setState(param1.state,0);
         if(_loc2_ != null)
         {
            _loc2_.setString(RoomObjectVariableEnum.const_105,param1.data);
            if(!isNaN(param1.extra))
            {
               _loc2_.setString(RoomObjectVariableEnum.const_375,String(param1.extra));
            }
            _loc2_.setNumber(RoomObjectVariableEnum.const_942,lastUpdateTime);
         }
      }
      
      private function handleItemDataUpdateMessage(param1:RoomObjectItemDataUpdateMessage) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(_loc2_ != null)
         {
            _loc2_.setString(RoomObjectVariableEnum.const_1172,param1.itemData);
         }
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc2_ != null)
         {
            this.handleDataUpdateMessage(_loc2_);
            return;
         }
         var _loc3_:RoomObjectItemDataUpdateMessage = param1 as RoomObjectItemDataUpdateMessage;
         if(_loc3_ != null)
         {
            this.handleItemDataUpdateMessage(_loc3_);
            return;
         }
         this.var_1390 = false;
         if(param1.dir != null && param1.loc != null)
         {
            if(!(param1 is RoomObjectMoveUpdateMessage))
            {
               _loc4_ = object.getDirection();
               _loc5_ = object.getLocation();
               if(_loc4_ != null && _loc4_.x != param1.dir.x && this.var_2164 && _loc5_ != null && _loc5_.x == param1.loc.x && _loc5_.y == param1.loc.y && _loc5_.z == param1.loc.z)
               {
                  this.var_416 = 1;
                  this.var_1389 = new RoomObjectUpdateMessage(param1.loc,param1.dir);
                  param1 = null;
               }
            }
            this.var_2164 = true;
         }
         super.processUpdateMessage(param1);
      }
      
      override protected function getLocationOffset() : IVector3d
      {
         if(this.var_416 > 0)
         {
            this.var_1123.x = 0;
            this.var_1123.y = 0;
            if(this.var_416 <= const_489 / 2)
            {
               this.var_1123.z = const_1160 * this.var_416;
            }
            else if(this.var_416 <= const_489)
            {
               if(this.var_1389)
               {
                  super.processUpdateMessage(this.var_1389);
                  this.var_1389 = null;
               }
               this.var_1123.z = const_1160 * (const_489 - this.var_416);
            }
            return this.var_1123;
         }
         return null;
      }
      
      override public function update(param1:int) : void
      {
         super.update(param1);
         if(this.var_416 > 0)
         {
            ++this.var_416;
            if(this.var_416 > const_489)
            {
               this.var_416 = 0;
            }
         }
      }
   }
}
