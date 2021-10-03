package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2210:int = 0;
      
      public static const const_1895:int = 1;
      
      public static const const_1858:int = 2;
      
      public static const const_2171:int = 3;
      
      public static const const_2147:int = 4;
      
      public static const const_2213:int = 5;
      
      public static const const_2007:int = 10;
      
      public static const const_2154:int = 11;
      
      public static const const_2312:int = 12;
      
      public static const const_2281:int = 13;
      
      public static const const_2320:int = 16;
      
      public static const const_2148:int = 17;
      
      public static const const_2257:int = 18;
      
      public static const const_2182:int = 19;
      
      public static const const_2269:int = 20;
      
      public static const const_2301:int = 22;
      
      public static const const_2333:int = 23;
      
      public static const const_2194:int = 24;
      
      public static const const_2185:int = 25;
      
      public static const const_2196:int = 26;
      
      public static const const_2127:int = 27;
      
      public static const const_2254:int = 28;
      
      public static const const_2121:int = 29;
      
      public static const const_2239:int = 100;
      
      public static const const_2232:int = 101;
      
      public static const const_2249:int = 102;
      
      public static const const_2109:int = 103;
      
      public static const const_2279:int = 104;
      
      public static const const_2172:int = 105;
      
      public static const const_2206:int = 106;
      
      public static const const_2142:int = 107;
      
      public static const const_2321:int = 108;
      
      public static const const_2222:int = 109;
      
      public static const const_2280:int = 110;
      
      public static const const_2235:int = 111;
      
      public static const const_2262:int = 112;
      
      public static const const_2260:int = 113;
      
      public static const const_2261:int = 114;
      
      public static const const_2164:int = 115;
      
      public static const const_2255:int = 116;
      
      public static const const_2287:int = 117;
      
      public static const const_2328:int = 118;
      
      public static const const_2326:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1895:
            case const_2007:
               return "banned";
            case const_1858:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
