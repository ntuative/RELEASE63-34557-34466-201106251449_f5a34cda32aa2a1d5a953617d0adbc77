package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1941:IID;
      
      private var var_1148:Boolean;
      
      private var var_1261:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1941 = param1;
         this.var_1261 = new Array();
         this.var_1148 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1941;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1148;
      }
      
      public function get receivers() : Array
      {
         return this.var_1261;
      }
      
      public function dispose() : void
      {
         if(!this.var_1148)
         {
            this.var_1148 = true;
            this.var_1941 = null;
            while(this.var_1261.length > 0)
            {
               this.var_1261.pop();
            }
            this.var_1261 = null;
         }
      }
   }
}
