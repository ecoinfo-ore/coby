
package com.rac021.jaxy.client.mvc ;

/**
 *
 * @author ryahiaoui
 */
public interface IOutputWraper       {
    
   public void write ( String text ) ;
   
   public  String get ()             ;
   
   public void clear()               ;
   
   public int getTotalLines()        ;
   
   public void disableSelection()    ;
   
   public void enableSelection()     ;
   
}
