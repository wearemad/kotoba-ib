 d e l i m i t e r |  
  
 d r o p   f u n c t i o n   i f   e x i s t s   v e s i o n i n g _ t a b l e _ e x i s t s |  
  
 c r e a t e   f u n c t i o n   v e s i o n i n g _ t a b l e _ e x i s t s   ( )  
 r e t u r n s   i n t  
 d e t e r m i n i s t i c  
 b e g i n  
         d e c l a r e   r e s u l t   i n t   d e f a u l t   0 ;  
         s e l e c t   c o u n t ( t a b l e _ n a m e )   i n t o   r e s u l t   f r o m   i n f o r m a t i o n _ s c h e m a . t a b l e s   w h e r e   t a b l e _ s c h e m a   =   ' k o t o b a 2 '   a n d   t a b l e _ n a m e   =   ' d b _ v e r s i o n ' ;  
         r e t u r n   r e s u l t ;  
 e n d |  
  
 d r o p   p r o c e d u r e   i f   e x i s t s   p a t c h _ 1 |  
  
 c r e a t e   p r o c e d u r e   p a t c h _ 1   ( )  
 b e g i n  
         i f   ( n o t   v e s i o n i n g _ t a b l e _ e x i s t s ( ) )   t h e n  
                 c r e a t e   t a b l e   d b _ v e r s i o n   ( v e r s i o n   i n t )   e n g i n e = I n n o D B ;  
                 i n s e r t   i n t o   d b _ v e r s i o n   ( v e r s i o n )   v a l u e s   ( 0 ) ;  
         e n d   i f ;  
         s e l e c t   v e r s i o n   i n t o   @ v e r s i o n   f r o m   d b _ v e r s i o n ;  
         i f   ( @ v e r s i o n   <   1   a n d   1   -   @ v e r s i o n   =   1 )   t h e n  
                 c r e a t e   t a b l e   h a r d _ b a n   ( r a n g e _ b e g   v a r c h a r ( 1 5 )   n o t   n u l l ,   r a n g e _ e n d   v a r c h a r ( 1 5 )   n o t   n u l l )   e n g i n e = I n n o D B ;  
  
                 u p d a t e   d b _ v e r s i o n   s e t   v e r s i o n   =   1   l i m i t   1 ;  
                 s e l e c t   ' P a t c h   1   w a s   a p p i e d . ' ;  
         e l s e  
                 s e l e c t   ' P a t c h   1   c a n n o t   b e   a p p i e d . ' ;  
         e n d   i f ;  
 e n d |  
  
 c a l l   p a t c h _ 1 ( ) |  
