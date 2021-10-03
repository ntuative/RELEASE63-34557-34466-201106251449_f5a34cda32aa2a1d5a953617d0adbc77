package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1515:IID;
      
      private var var_1866:String;
      
      private var var_118:IUnknown;
      
      private var var_816:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1515 = param1;
         this.var_1866 = getQualifiedClassName(this.var_1515);
         this.var_118 = param2;
         this.var_816 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1515;
      }
      
      public function get iis() : String
      {
         return this.var_1866;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_118;
      }
      
      public function get references() : uint
      {
         return this.var_816;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_118 == null;
      }
      
      public function dispose() : void
      {
         this.var_1515 = null;
         this.var_1866 = null;
         this.var_118 = null;
         this.var_816 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_816;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_816) : uint(0);
      }
   }
}
