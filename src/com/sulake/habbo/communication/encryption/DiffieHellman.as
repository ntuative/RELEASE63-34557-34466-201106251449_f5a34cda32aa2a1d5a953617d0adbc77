package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1042:BigInteger;
      
      private var var_2323:BigInteger;
      
      private var var_1744:BigInteger;
      
      private var var_2324:BigInteger;
      
      private var var_1447:BigInteger;
      
      private var var_1745:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1447 = param1;
         this.var_1745 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1447.toString() + ",generator: " + this.var_1745.toString() + ",secret: " + param1);
         this.var_1042 = new BigInteger();
         this.var_1042.fromRadix(param1,param2);
         this.var_2323 = this.var_1745.modPow(this.var_1042,this.var_1447);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1744 = new BigInteger();
         this.var_1744.fromRadix(param1,param2);
         this.var_2324 = this.var_1744.modPow(this.var_1042,this.var_1447);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2323.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2324.toRadix(param1);
      }
   }
}
