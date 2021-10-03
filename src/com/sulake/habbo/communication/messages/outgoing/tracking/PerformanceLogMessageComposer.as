package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2932:int = 0;
      
      private var var_1608:String = "";
      
      private var var_2049:String = "";
      
      private var var_2799:String = "";
      
      private var var_2999:String = "";
      
      private var var_2175:int = 0;
      
      private var var_3000:int = 0;
      
      private var var_2997:int = 0;
      
      private var var_1606:int = 0;
      
      private var var_2998:int = 0;
      
      private var var_1607:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2932 = param1;
         this.var_1608 = param2;
         this.var_2049 = param3;
         this.var_2799 = param4;
         this.var_2999 = param5;
         if(param6)
         {
            this.var_2175 = 1;
         }
         else
         {
            this.var_2175 = 0;
         }
         this.var_3000 = param7;
         this.var_2997 = param8;
         this.var_1606 = param9;
         this.var_2998 = param10;
         this.var_1607 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2932,this.var_1608,this.var_2049,this.var_2799,this.var_2999,this.var_2175,this.var_3000,this.var_2997,this.var_1606,this.var_2998,this.var_1607];
      }
   }
}
