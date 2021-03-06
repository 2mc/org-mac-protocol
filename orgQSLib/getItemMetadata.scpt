FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
getItemMetadata.scpt --- get data to be passed to org-protocol from front application

Copyright (C) 2009, 2010 Christopher Suckling

Author:  Christopher Suckling <suckling at gmail dot com>
		Alexander Poslavsky <alexander.poslavsky at gmail.com>

This file is Free Software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

It is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
License for more details.

You should have received a copy of the GNU General Public License
along with GNU Emacs; see the file COPYING.  If not, write to the
Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
Boston, MA 02110-1301, USA.

Vesion: 0.634

Commentary

Part of org-mac-protocol

Installation

1) Open in AppleScript Editor
2) Save as File Format: Script in  ~/Library/Scripts/orgQSLib/

Please see org-mac-protocol.org for full installation and usage instructions
     � 	 		 
 g e t I t e m M e t a d a t a . s c p t   - - -   g e t   d a t a   t o   b e   p a s s e d   t o   o r g - p r o t o c o l   f r o m   f r o n t   a p p l i c a t i o n 
 
 C o p y r i g h t   ( C )   2 0 0 9 ,   2 0 1 0   C h r i s t o p h e r   S u c k l i n g 
 
 A u t h o r :     C h r i s t o p h e r   S u c k l i n g   < s u c k l i n g   a t   g m a i l   d o t   c o m > 
 	 	 A l e x a n d e r   P o s l a v s k y   < a l e x a n d e r . p o s l a v s k y   a t   g m a i l . c o m > 
 
 T h i s   f i l e   i s   F r e e   S o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   3 ,   o r   ( a t   y o u r   o p t i o n ) 
 a n y   l a t e r   v e r s i o n . 
 
 I t   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T 
 A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y 
 o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c 
 L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   G N U   E m a c s ;   s e e   t h e   f i l e   C O P Y I N G .     I f   n o t ,   w r i t e   t o   t h e 
 F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r , 
 B o s t o n ,   M A   0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 V e s i o n :   0 . 6 3 4 
 
 C o m m e n t a r y 
 
 P a r t   o f   o r g - m a c - p r o t o c o l 
 
 I n s t a l l a t i o n 
 
 1 )   O p e n   i n   A p p l e S c r i p t   E d i t o r 
 2 )   S a v e   a s   F i l e   F o r m a t :   S c r i p t   i n     ~ / L i b r a r y / S c r i p t s / o r g Q S L i b / 
 
 P l e a s e   s e e   o r g - m a c - p r o t o c o l . o r g   f o r   f u l l   i n s t a l l a t i o n   a n d   u s a g e   i n s t r u c t i o n s 
   
  
 l     ��������  ��  ��        p         ������ 0 thelink theLink��        p         ������ 0 escerrorurl escErrorURL��        p         ������ "0 escerrormessage escErrorMessage��        p         ������ 0 escapp escApp��        l     ��������  ��  ��        i         I      �� ���� "0 getitemmetadata getItemMetadata       o      ���� 0 theprotocol theProtocol    !�� ! o      ���� 0 theapp theApp��  ��    k    , " "  # $ # l     ��������  ��  ��   $  % & % Z      ' (���� ' >     ) * ) l     +���� + c      , - , o     ���� 0 theapp theApp - m    ��
�� 
TEXT��  ��   * m     . . � / /  S a f a r i - T a b s ( I    �� 0���� 0 	linkerror 	linkError 0  1 2 1 o   	 
���� 0 theprotocol theProtocol 2  3�� 3 o   
 ���� 0 theapp theApp��  ��  ��  ��   &  4 5 4 l   ��������  ��  ��   5  6 7 6 Z   % 8 9�� : 8 =     ; < ; l    =���� = c     > ? > o    ���� 0 theapp theApp ? m    ��
�� 
TEXT��  ��   < m     @ @ � A A  S a f a r i 9 I    #�� B���� 0 
linksafari 
linkSafari B  C D C o    ���� 0 theprotocol theProtocol D  E�� E o    ���� 0 theapp theApp��  ��  ��   : Z   &% F G�� H F =   & + I J I l  & ) K���� K c   & ) L M L o   & '���� 0 theapp theApp M m   ' (��
�� 
TEXT��  ��   J m   ) * N N � O O  S a f a r i - T a b s G I   . 5�� P����  0 linksafaritabs linkSafariTabs P  Q R Q o   / 0���� 0 theprotocol theProtocol R  S�� S o   0 1���� 0 theapp theApp��  ��  ��   H Z   8% T U�� V T =   8 = W X W l  8 ; Y���� Y c   8 ; Z [ Z o   8 9���� 0 theapp theApp [ m   9 :��
�� 
TEXT��  ��   X m   ; < \ \ � ] ]  f i r e f o x - b i n U I   @ G�� ^���� 0 linkfirefox linkFirefox ^  _ ` _ o   A B���� 0 theprotocol theProtocol `  a�� a o   B C���� 0 theapp theApp��  ��  ��   V Z   J% b c�� d b =   J O e f e l  J M g���� g c   J M h i h o   J K���� 0 theapp theApp i m   K L��
�� 
TEXT��  ��   f m   M N j j � k k  G o o g l e   C h r o m e c I   R Y�� l���� 0 
linkchrome 
linkChrome l  m n m o   S T���� 0 theprotocol theProtocol n  o�� o o   T U���� 0 theapp theApp��  ��  ��   d Z   \% p q�� r p =   \ a s t s l  \ _ u���� u c   \ _ v w v o   \ ]���� 0 theapp theApp w m   ] ^��
�� 
TEXT��  ��   t m   _ ` x x � y y  S k i m q I   d k�� z���� 0 linkskim linkSkim z  { | { o   e f���� 0 theprotocol theProtocol |  }�� } o   f g���� 0 theapp theApp��  ��  ��   r Z   n% ~ �� � ~ =   n s � � � l  n q ����� � c   n q � � � o   n o���� 0 theapp theApp � m   o p��
�� 
TEXT��  ��   � m   q r � � � � �  B i b D e s k  I   v }�� ����� 0 linkbibdesk linkBibDesk �  � � � o   w x���� 0 theprotocol theProtocol �  ��� � o   x y���� 0 theapp theApp��  ��  ��   � Z   �% � ��� � � =   � � � � � l  � � ����� � c   � � � � � o   � ����� 0 theapp theApp � m   � ���
�� 
TEXT��  ��   � m   � � � � � � � 
 P a g e s � I   � ��� ����� 0 	linkpages 	linkPages �  � � � o   � ����� 0 theprotocol theProtocol �  ��� � o   � ����� 0 theapp theApp��  ��  ��   � Z   �% � ��� � � =   � � � � � l  � � ����� � c   � � � � � o   � ����� 0 theapp theApp � m   � ���
�� 
TEXT��  ��   � m   � � � � � � �  N u m b e r s � I   � ��� ����� 0 linknumbers linkNumbers �  � � � o   � ����� 0 theprotocol theProtocol �  ��� � o   � ����� 0 theapp theApp��  ��  ��   � Z   �% � ��� � � =   � � � � � l  � � ����� � c   � � � � � o   � ����� 0 theapp theApp � m   � ���
�� 
TEXT��  ��   � m   � � � � � � �  K e y n o t e � I   � ��� ����� 0 linkkeynote linkKeynote �  � � � o   � ����� 0 theprotocol theProtocol �  ��� � o   � ����� 0 theapp theApp��  ��  ��   � Z   �% � �� � � =   � � � � � l  � � ��~�} � c   � � � � � o   � ��|�| 0 theapp theApp � m   � ��{
�{ 
TEXT�~  �}   � m   � � � � � � �  M a i l � I   � ��z ��y�z 0 linkmail linkMail �  � � � o   � ��x�x 0 theprotocol theProtocol �  ��w � o   � ��v�v 0 theapp theApp�w  �y  �   � Z   �% � ��u � � =   � � � � � l  � � ��t�s � c   � � � � � o   � ��r�r 0 theapp theApp � m   � ��q
�q 
TEXT�t  �s   � m   � � � � � � �  A d d r e s s   B o o k � I   � ��p ��o�p "0 linkaddressbook linkAddressBook �  � � � o   � ��n�n 0 theprotocol theProtocol �  ��m � o   � ��l�l 0 theapp theApp�m  �o  �u   � Z   �% � ��k � � =   � � � � � l  � � ��j�i � c   � � � � � o   � ��h�h 0 theapp theApp � m   � ��g
�g 
TEXT�j  �i   � m   � � � � � � �  i T u n e s � I   � ��f ��e�f 0 
linkitunes 
linkITunes �  � � � o   � ��d�d 0 theprotocol theProtocol �  ��c � o   � ��b�b 0 theapp theApp�c  �e  �k   � Z   �% � ��a � � =   � � � � � l  � � ��`�_ � c   � � � � � o   � ��^�^ 0 theapp theApp � m   � ��]
�] 
TEXT�`  �_   � m   � � � � � � �  T e r m i n a l � I   �\ ��[�\ 0 linkterminal linkTerminal �  � � � o  �Z�Z 0 theprotocol theProtocol �  ��Y � o  �X�X 0 theapp theApp�Y  �[  �a   � Z  
% � ��W � � =  
 � � � l 
 ��V�U � c  
 � � � o  
�T�T 0 theapp theApp � m  �S
�S 
TEXT�V  �U   � m   � � � � �  F i n d e r � I  �R ��Q�R 0 
linkfinder 
linkFinder �  � � � o  �P�P 0 theprotocol theProtocol �  ��O � o  �N�N 0 theapp theApp�O  �Q  �W   � I  %�M ��L�M "0 linkapplication linkApplication �  � � � o   �K�K 0 theprotocol theProtocol �  ��J � o   !�I�I 0 theapp theApp�J  �L   7    l &&�H�G�F�H  �G  �F    L  &* o  &)�E�E 0 thelink theLink �D l ++�C�B�A�C  �B  �A  �D     l     �@�?�>�@  �?  �>   	 i    

 I      �=�<�= (0 encodeuricomponent encodeURIComponent �; o      �:�: 0 theuri theURI�;  �<   k       p       �9�8�9 0 	escapelib 	escapeLib�8   �7 r      I    �6�5
�6 .sysoexecTEXT���     TEXT b      b      b      m      � 
 r u b y   l   �4�3 n      1    �2
�2 
psxp  o    �1�1 0 	escapelib 	escapeLib�4  �3   m    !! �""    n    
#$# 1    
�0
�0 
strq$ o    �/�/ 0 theuri theURI�5   o      �.�. 0 escuri escURI�7  	 %&% l     �-�,�+�-  �,  �+  & '(' l     �*�)�(�*  �)  �(  ( )*) l      �'+,�'  +$Format of links:

org-protocol:/protocol:/key/URI/description/short description/content:application name

theProtocol - org-protocol:/protocol:/key/
theApp - application name

short description - for remember templates; removes theApp and other contextual information from description   , �--<  F o r m a t   o f   l i n k s : 
 
 o r g - p r o t o c o l : / p r o t o c o l : / k e y / U R I / d e s c r i p t i o n / s h o r t   d e s c r i p t i o n / c o n t e n t : a p p l i c a t i o n   n a m e 
 
 t h e P r o t o c o l   -   o r g - p r o t o c o l : / p r o t o c o l : / k e y / 
 t h e A p p   -   a p p l i c a t i o n   n a m e 
 
 s h o r t   d e s c r i p t i o n   -   f o r   r e m e m b e r   t e m p l a t e s ;   r e m o v e s   t h e A p p   a n d   o t h e r   c o n t e x t u a l   i n f o r m a t i o n   f r o m   d e s c r i p t i o n * ./. l     �&�%�$�&  �%  �$  / 010 i    232 I      �#4�"�# 0 	linkerror 	linkError4 565 o      �!�! 0 theprotocol theProtocol6 7� 7 o      �� 0 theapp theApp�   �"  3 k     -88 9:9 r     ;<; n     
=>= 1    
�
� 
psxp> l    ?��? I    �@�
� .earsffdralis        afdr@ 4     �A
� 
cappA o    �� 0 theapp theApp�  �  �  < o      �� 0 theerrorurl theErrorURL: BCB r    DED b    FGF o    �� 0 theapp theAppG m    HH �II 0 :   n o   A p p l e S c r i p t   s u p p o r tE o      �� "0 theerrormessage theErrorMessageC JKJ r    LML I    �N�� (0 encodeuricomponent encodeURIComponentN O�O o    �� 0 theerrorurl theErrorURL�  �  M o      �� 0 escerrorurl escErrorURLK PQP r    $RSR I    "�T�� (0 encodeuricomponent encodeURIComponentT U�U o    �� "0 theerrormessage theErrorMessage�  �  S o      �� "0 escerrormessage escErrorMessageQ V�
V r   % -WXW I   % +�	Y��	 (0 encodeuricomponent encodeURIComponentY Z�Z o   & '�� 0 theapp theApp�  �  X o      �� 0 escapp escApp�
  1 [\[ l     ����  �  �  \ ]^] i    _`_ I      �a� � 0 
linksafari 
linkSafaria bcb o      ���� 0 theprotocol theProtocolc d��d o      ���� 0 theapp theApp��  �   ` k     oee fgf O     5hih k    4jj klk r    mnm I   ��op
�� .sfridojs****       utxto m    qq �rr  d o c u m e n t . U R Lp ��s��
�� 
dcnms 4    
��t
�� 
docut m    	���� ��  n o      ���� 0 theurl theURLl uvu r    wxw l   y����y I   ��z{
�� .sfridojs****       utxtz m    || �}}  d o c u m e n t . t i t l e{ ��~��
�� 
dcnm~ 4    ��
�� 
docu m    ���� ��  ��  ��  x o      ���� 0 theshorttitle theShortTitlev ��� r    %��� b    #��� b    !��� o    ���� 0 theshorttitle theShortTitle� m     �� ���  :� o   ! "���� 0 theapp theApp� o      ���� 0 thetitle theTitle� ��� r   & 2��� l  & 0������ I  & 0����
�� .sfridojs****       utxt� m   & '�� ��� H v a r   x   =   ' ' + d o c u m e n t . g e t S e l e c t i o n ( ) ; x� �����
�� 
dcnm� 4   ( ,���
�� 
docu� m   * +���� ��  ��  ��  � o      ���� 0 
thecontent 
theContent� ���� l   3 3������  � Z T		Fixes bug detailed https://discussions.apple.com/thread/3197130?start=0&tstart=0   � ��� �  	 	 F i x e s   b u g   d e t a i l e d   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 3 1 9 7 1 3 0 ? s t a r t = 0 & t s t a r t = 0 ��  i m     ���                                                                                  sfri  alis    <  rushka                     �/�SH+   H�\
Safari.app                                                      H�V��d        ����  	                Applications    �/�C      ��T     H�\  rushka:Applications: Safari.app    
 S a f a r i . a p p    r u s h k a  Applications/Safari.app   / ��  g ��� l  6 6��������  ��  ��  � ��� r   6 >��� I   6 <������� (0 encodeuricomponent encodeURIComponent� ���� o   7 8���� 0 theurl theURL��  ��  � o      ���� 0 escurl escURL� ��� r   ? G��� I   ? E������� (0 encodeuricomponent encodeURIComponent� ���� o   @ A���� 0 theshorttitle theShortTitle��  ��  � o      ���� 0 escshorttitle escShortTitle� ��� r   H P��� I   H N������� (0 encodeuricomponent encodeURIComponent� ���� o   I J���� 0 thetitle theTitle��  ��  � o      ���� 0 esctitle escTitle� ��� r   Q Y��� I   Q W������� (0 encodeuricomponent encodeURIComponent� ���� o   R S���� 0 
thecontent 
theContent��  ��  � o      ���� 0 
esccontent 
escContent� ��� l  Z Z��������  ��  ��  � ���� r   Z o��� b   Z m��� b   Z k��� b   Z i��� b   Z g��� b   Z e��� b   Z c��� b   Z a��� b   Z _��� b   Z ]��� o   Z [���� 0 theprotocol theProtocol� o   [ \���� 0 escurl escURL� m   ] ^�� ���  /� o   _ `���� 0 esctitle escTitle� m   a b�� ���  /� o   c d���� 0 escshorttitle escShortTitle� m   e f�� ���  /� o   g h���� 0 
esccontent 
escContent� m   i j�� ���  :� o   k l���� 0 escapp escApp� o      ���� 0 thelink theLink��  ^ ��� l     ��������  ��  ��  � ��� i    ��� I      �������  0 linksafaritabs linkSafariTabs� ��� o      ���� 0 theprotocol theProtocol� ���� o      ���� 0 theapp theApp��  ��  � k     d�� ��� O     ^��� k    ]�� ��� r    ��� n    
��� 2   
��
�� 
bTab� 4    ���
�� 
cwin� m    ���� � o      ���� 0 thetabs theTabs� ��� r    ��� J    ����  � o      ���� 0 thelinklist theLinkList� ���� X    ]����� k   " X�� ��� r   " +��� l  " )������ I  " )����
�� .sfridojs****       utxt� m   " #�� ���  d o c u m e n t . U R L� �����
�� 
dcnm� o   $ %���� 0 eachtab eachTab��  ��  ��  � o      ���� 0 theurl theURL� ��� r   , 5��� l  , 3 ����  I  , 3��
�� .sfridojs****       utxt m   , - �  d o c u m e n t . t i t l e ����
�� 
dcnm o   . /���� 0 eachtab eachTab��  ��  ��  � o      ���� 0 thetitle theTitle�  r   6 >	 n   6 <

 I   7 <������ (0 encodeuricomponent encodeURIComponent �� o   7 8���� 0 theurl theURL��  ��    f   6 7	 o      ���� 0 escurl escURL  r   ? G n   ? E I   @ E������ (0 encodeuricomponent encodeURIComponent �� o   @ A���� 0 thetitle theTitle��  ��    f   ? @ o      ���� 0 esctitle escTitle  r   H S b   H Q b   H O b   H M b   H K !  o   H I���� 0 escurl escURL! m   I J"" �##  / o   K L���� 0 esctitle escTitle m   M N$$ �%%  / m   O P&& �''  : : o      ���� 0 eachlink eachLink (��( s   T X)*) o   T U���� 0 eachlink eachLink* n      +,+  ;   V W, o   U V���� 0 thelinklist theLinkList��  �� 0 eachtab eachTab� o    ���� 0 thetabs theTabs��  � m     --�                                                                                  sfri  alis    <  rushka                     �/�SH+   H�\
Safari.app                                                      H�V��d        ����  	                Applications    �/�C      ��T     H�\  rushka:Applications: Safari.app    
 S a f a r i . a p p    r u s h k a  Applications/Safari.app   / ��  � ./. l  _ _��������  ��  ��  / 0��0 r   _ d121 b   _ b343 o   _ `���� 0 theprotocol theProtocol4 o   ` a���� 0 thelinklist theLinkList2 o      ���� 0 thelink theLink��  � 565 l     ��������  ��  ��  6 787 i    9:9 I      ��;���� 0 linkfirefox linkFirefox; <=< o      ���� 0 theprotocol theProtocol= >��> o      ���� 0 theapp theApp��  ��  : k     �?? @A@ O     SBCB k    RDD EFE I   	�����
�� .miscactvnull��� ��� null��  �  F GHG r   
 IJI I  
 �~�}�|
�~ .JonsgClp****    ��� null�}  �|  J o      �{�{ 0 oldclipboard oldClipboardH KLK O    &MNM k    %OO PQP I   �zRS
�z .prcskprsnull���    utxtR m    TT �UU  lS �yV�x
�y 
faalV m    �w
�w eMdsKcmd�x  Q W�vW I   %�uXY
�u .prcskprsnull���    utxtX m    ZZ �[[  cY �t\�s
�t 
faal\ m     !�r
�r eMdsKcmd�s  �v  N m    ]]�                                                                                  sevs  alis    �  rushka                     �/�SH+   H�=System Events.app                                               I��� ^R        ����  	                CoreServices    �/�C      � PB     H�= H�0 H�/  7rushka:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    r u s h k a  -System/Library/CoreServices/System Events.app   / ��  L ^_^ I  ' ,�q`�p
�q .sysodelanull��� ��� nmbr` m   ' (aa ?�333333�p  _ bcb r   - 4ded I  - 2�o�n�m
�o .JonsgClp****    ��� null�n  �m  e o      �l�l 0 theurl theURLc fgf I  5 :�kh�j
�k .JonspClpnull���     ****h o   5 6�i�i 0 oldclipboard oldClipboard�j  g iji r   ; Dklk l  ; Bm�h�gm e   ; Bnn n   ; Bopo 1   ? A�f
�f 
pnamp 4   ; ?�eq
�e 
cwinq m   = >�d�d �h  �g  l o      �c�c 0 theshorttitle theShortTitlej rsr r   E Jtut b   E Hvwv o   E F�b�b 0 theshorttitle theShortTitlew m   F Gxx �yy  : F i r e f o xu o      �a�a 0 thetitle theTitles z�`z r   K R{|{ I  K P�_�^�]
�_ .JonsgClp****    ��� null�^  �]  | o      �\�\ 0 
thecontent 
theContent�`  C m     }}�                                                                                  MOZB  alis    >  rushka                     �/�SH+   H�\Firefox.app                                                     ;��jcR        ����  	                Applications    �/�C      �jUB     H�\   rushka:Applications: Firefox.app    F i r e f o x . a p p    r u s h k a  Applications/Firefox.app  / ��  A ~~ l  T T�[�Z�Y�[  �Z  �Y   ��� r   T \��� I   T Z�X��W�X (0 encodeuricomponent encodeURIComponent� ��V� o   U V�U�U 0 theurl theURL�V  �W  � o      �T�T 0 escurl escURL� ��� r   ] e��� I   ] c�S��R�S (0 encodeuricomponent encodeURIComponent� ��Q� o   ^ _�P�P 0 theshorttitle theShortTitle�Q  �R  � o      �O�O 0 escshorttitle escShortTitle� ��� r   f n��� I   f l�N��M�N (0 encodeuricomponent encodeURIComponent� ��L� o   g h�K�K 0 thetitle theTitle�L  �M  � o      �J�J 0 esctitle escTitle� ��� r   o w��� I   o u�I��H�I (0 encodeuricomponent encodeURIComponent� ��G� o   p q�F�F 0 
thecontent 
theContent�G  �H  � o      �E�E 0 
esccontent 
escContent� ��� l  x x�D�C�B�D  �C  �B  � ��A� r   x ���� b   x ���� b   x ���� b   x ���� b   x ���� b   x ���� b   x ���� b   x ��� b   x {��� o   x y�@�@ 0 theprotocol theProtocol� o   y z�?�? 0 escurl escURL� m   { ~�� ���  /� o    ��>�> 0 esctitle escTitle� m   � ��� ���  /� o   � ��=�= 0 escshorttitle escShortTitle� m   � ��� ���  /� o   � ��<�< 0 
esccontent 
escContent� m   � ��� ���  : F i r e f o x� o      �;�; 0 thelink theLink�A  8 ��� l     �:�9�8�:  �9  �8  � ��� i    ��� I      �7��6�7 0 
linkchrome 
linkChrome� ��� o      �5�5 0 theprotocol theProtocol� ��4� o      �3�3 0 theapp theApp�4  �6  � k     ��� ��� r     ��� I    �2�1�0
�2 .JonsgClp****    ��� null�1  �0  � o      �/�/ 0 oldclipboard oldClipboard� ��� O    O��� k    N�� ��� O     ��� k    �� ��� I   �.��
�. .prcskprsnull���    utxt� m    �� ���  l� �-��,
�- 
faal� m    �+
�+ eMdsKcmd�,  � ��*� I   �)��
�) .prcskprsnull���    utxt� m    �� ���  c� �(��'
�( 
faal� m    �&
�& eMdsKcmd�'  �*  � m    ���                                                                                  sevs  alis    �  rushka                     �/�SH+   H�=System Events.app                                               I��� ^R        ����  	                CoreServices    �/�C      � PB     H�= H�0 H�/  7rushka:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    r u s h k a  -System/Library/CoreServices/System Events.app   / ��  � ��� I  ! &�%��$
�% .sysodelanull��� ��� nmbr� m   ! "�� ?�333333�$  � ��� r   ' .��� I  ' ,�#�"�!
�# .JonsgClp****    ��� null�"  �!  � o      � �  0 theurl theURL� ��� I  / 4���
� .JonspClpnull���     ****� o   / 0�� 0 oldclipboard oldClipboard�  � ��� r   5 >��� l  5 <���� e   5 <�� n   5 <��� 1   9 ;�
� 
pnam� 4   5 9��
� 
cwin� m   7 8�� �  �  � o      �� 0 theshorttitle theShortTitle� ��� r   ? F��� b   ? D��� b   ? B��� o   ? @�� 0 theshorttitle theShortTitle� m   @ A�� ���  :� o   B C�� 0 theapp theApp� o      �� 0 thetitle theTitle� ��� r   G N��� I  G L���
� .JonsgClp****    ��� null�  �  � o      �� 0 
thecontent 
theContent�  � m    	���                                                                                  rimZ  alis    V  rushka                     �/�SH+   H�\Google Chrome.app                                               ���g^        ����  	                Applications    �/�C      ��g^     H�\  &rushka:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    r u s h k a  Applications/Google Chrome.app  / ��  � ��� l  P P����  �  �  �    r   P X I   P V��
� (0 encodeuricomponent encodeURIComponent �	 o   Q R�� 0 theurl theURL�	  �
   o      �� 0 escurl escURL  r   Y a	 I   Y _�
�� (0 encodeuricomponent encodeURIComponent
 � o   Z [�� 0 theshorttitle theShortTitle�  �  	 o      �� 0 escshorttitle escShortTitle  r   b j I   b h�� � (0 encodeuricomponent encodeURIComponent �� o   c d���� 0 thetitle theTitle��  �    o      ���� 0 esctitle escTitle  r   k s I   k q������ (0 encodeuricomponent encodeURIComponent �� o   l m���� 0 
thecontent 
theContent��  ��   o      ���� 0 
esccontent 
escContent  l  t t��������  ��  ��   �� r   t � b   t � b   t �  b   t �!"! b   t �#$# b   t �%&% b   t '(' b   t {)*) b   t y+,+ b   t w-.- o   t u���� 0 theprotocol theProtocol. o   u v���� 0 escurl escURL, m   w x// �00  /* o   y z���� 0 esctitle escTitle( m   { ~11 �22  /& o    ����� 0 escshorttitle escShortTitle$ m   � �33 �44  /" o   � ����� 0 
esccontent 
escContent  m   � �55 �66  : o   � ����� 0 escapp escApp o      ���� 0 thelink theLink��  � 787 l     ��������  ��  ��  8 9:9 l     ��������  ��  ��  : ;<; i    =>= I      ��?���� 0 linkskim linkSkim? @A@ o      ���� 0 theprotocol theProtocolA B��B o      ���� 0 theapp theApp��  ��  > k     �CC DED O     MFGF k    LHH IJI r    KLK m    MM �NN 
 s k i m :L o      ���� 0 	thescheme 	theSchemeJ OPO r    QRQ 4   ��S
�� 
docuS m   
 ���� R o      ���� 0 thedoc theDocP TUT r    VWV l   X����X n    YZY 1    ��
�� 
pnamZ o    ���� 0 thedoc theDoc��  ��  W o      ���� 0 theshorttitle theShortTitleU [\[ r    ]^] b    _`_ b    aba o    ���� 0 theshorttitle theShortTitleb m    cc �dd  :` o    ���� 0 theapp theApp^ o      ���� 0 thetitle theTitle\ efe r    $ghg b    "iji l    k����k n     lml 1     ��
�� 
ppthm o    ���� 0 thedoc theDoc��  ��  j m     !nn �oo  : :h o      ���� 0 thepath thePathf pqp r   % *rsr n   % (tut 1   & (��
�� 
seleu o   % &���� 0 thedoc theDocs o      ���� 0 theselection theSelectionq vwv r   + 4xyx n   + 2z{z 1   0 2��
�� 
pcnt{ l  + 0|����| I  + 0��}��
�� .SKIMTextnull���     ****} o   + ,���� 0 theselection theSelection��  ��  ��  y o      ���� 0 
thecontent 
theContentw ~~ Z   5 B������� =  5 8��� o   5 6���� 0 
thecontent 
theContent� m   6 7��
�� 
msng� r   ; >��� m   ; <�� ���  � o      ���� 0 
thecontent 
theContent��  ��   ���� r   C L��� l  C J������ I  C J�����
�� .SKIMIndxnull���     ****� n   C F��� 1   D F��
�� 
CPag� o   C D���� 0 thedoc theDoc��  ��  ��  � o      ���� 0 thepage thePage��  G m     ���                                                                                  SKim  alis    4  rushka                     �/�SH+   H�\Skim.app                                                        :SD�n��        ����  	                Applications    �/�C      �n��     H�\  rushka:Applications: Skim.app     S k i m . a p p    r u s h k a  Applications/Skim.app   / ��  E ��� l  N N��������  ��  ��  � ��� r   N V��� I   N T������� (0 encodeuricomponent encodeURIComponent� ���� o   O P���� 0 	thescheme 	theScheme��  ��  � o      ���� 0 	escscheme 	escScheme� ��� r   W _��� I   W ]������� (0 encodeuricomponent encodeURIComponent� ���� o   X Y���� 0 theshorttitle theShortTitle��  ��  � o      ���� 0 escshorttitle escShortTitle� ��� r   ` h��� I   ` f������� (0 encodeuricomponent encodeURIComponent� ���� o   a b���� 0 thetitle theTitle��  ��  � o      ���� 0 esctitle escTitle� ��� r   i q��� I   i o������� (0 encodeuricomponent encodeURIComponent� ���� o   j k���� 0 thepath thePath��  ��  � o      ���� 0 escpath escPath� ��� r   r z��� I   r x������� (0 encodeuricomponent encodeURIComponent� ���� o   s t���� 0 
thecontent 
theContent��  ��  � o      ���� 0 
esccontent 
escContent� ��� l  { {��������  ��  ��  � ���� r   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ~��� o   { |���� 0 theprotocol theProtocol� o   | }���� 0 	escscheme 	escScheme� o   ~ ���� 0 escpath escPath� o   � ����� 0 thepage thePage� m   � ��� ���  /� o   � ����� 0 esctitle escTitle� m   � ��� ���  /� o   � ����� 0 escshorttitle escShortTitle� m   � ��� ���  /� o   � ����� 0 
esccontent 
escContent� m   � ��� ���  :� o   � ����� 0 escapp escApp� o      ���� 0 thelink theLink��  < ��� l     ��������  ��  ��  � ��� i     #��� I      ������� 0 linkbibdesk linkBibDesk� ��� o      ���� 0 theprotocol theProtocol� ���� o      ���� 0 theapp theApp��  ��  � k     ��� ��� O     P��� k    O�� ��� r    ��� m    �� ��� < $ p u b l i c a t i o n s > 
 < $ p u b T y p e = a r t i c l e ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . Y e a r / > .   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . J o u r n a l / > ,   < $ f i e l d s . V o l u m e / > ( < $ f i e l d s . N u m b e r / > ) ,   < $ f i e l d s . P a g e s / > . 
 < ? $ p u b T y p e = b o o k ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . Y e a r / > .   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . A d d r e s s / > :   < $ f i e l d s . P u b l i s h e r / > . 
 < ? $ p u b T y p e = u n p u b l i s h e d ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . N o t e / > 
 < ? $ p u b T y p e ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . Y e a r / > .   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . J o u r n a l / > ,   < $ f i e l d s . V o l u m e / > ( < $ f i e l d s . N u m b e r / > ) ,   < $ f i e l d s . P a g e s / > 
 < / $ p u b T y p e ? > 
 < / $ p u b l i c a t i o n s > 
� o      ���� 0 templatetext templateText� ��� r    ��� m    	�� ���  b i b d e s k :� o      ���� 0 	thescheme 	theScheme� ��� r    ��� 4   ���
�� 
docu� m    ���� � o      ���� 0 thedoc theDoc� ��� r    ��� b    ��� l   ������ n    ��� 1    ��
�� 
pnam� o    ���� 0 thedoc theDoc��  ��  � m    �� ���  : :� o      �� 0 thetitle theTitle� � � r    " b      l   �~�} n     1    �|
�| 
ppth o    �{�{ 0 thedoc theDoc�~  �}   m     �		  : : o      �z�z 0 thepath thePath  

 r   # ( l  # &�y�x n   # & 1   $ &�w
�w 
sele o   # $�v�v 0 thedoc theDoc�y  �x   o      �u�u 0 theselection theSelection  r   ) / n   ) - 4   * -�t
�t 
cobj m   + ,�s�s  o   ) *�r�r 0 theselection theSelection o      �q�q 0 thepub thePub  r   0 ; I  0 9�p
�p .BDSKttxtnull���     docu o   0 1�o�o 0 thedoc theDoc �n
�n 
usTx o   2 3�m�m 0 templatetext templateText �l �k
�l 
for   o   4 5�j�j 0 thepub thePub�k   o      �i�i 0 thereference theReference !"! r   < A#$# n   < ?%&% 1   = ?�h
�h 
ckey& o   < =�g�g 0 thepub thePub$ o      �f�f 0 thecite theCite" '(' r   B G)*) b   B E+,+ m   B C-- �..  :, o   C D�e�e 0 theapp theApp* o      �d�d 0 
theappname 
theAppName( /�c/ r   H O010 n   H M232 1   I M�b
�b 
keyw3 o   H I�a�a 0 thepub thePub1 o      �`�` 0 thekeywords theKeywords�c  � m     44�                                                                                  BDSK  alis    >  rushka                     �/�SH+   H�\BibDesk.app                                                     [�`ʞ<        ����  	                Applications    �/�C      ʞ,     H�\   rushka:Applications: BibDesk.app    B i b D e s k . a p p    r u s h k a  Applications/BibDesk.app  / ��  � 565 l  Q Q�_�^�]�_  �^  �]  6 787 r   Q Y9:9 I   Q W�\;�[�\ (0 encodeuricomponent encodeURIComponent; <�Z< o   R S�Y�Y 0 	thescheme 	theScheme�Z  �[  : o      �X�X 0 	escscheme 	escScheme8 =>= r   Z b?@? I   Z `�WA�V�W (0 encodeuricomponent encodeURIComponentA B�UB o   [ \�T�T 0 thetitle theTitle�U  �V  @ o      �S�S 0 esctitle escTitle> CDC r   c kEFE I   c i�RG�Q�R (0 encodeuricomponent encodeURIComponentG H�PH o   d e�O�O 0 thecite theCite�P  �Q  F o      �N�N 0 esccite escCiteD IJI r   l vKLK I   l r�MM�L�M (0 encodeuricomponent encodeURIComponentM N�KN o   m n�J�J 0 thepath thePath�K  �L  L o      �I�I 0 escpath escPathJ OPO r   w �QRQ I   w }�HS�G�H (0 encodeuricomponent encodeURIComponentS T�FT o   x y�E�E 0 thereference theReference�F  �G  R o      �D�D 0 escreference escReferenceP UVU r   � �WXW I   � ��CY�B�C (0 encodeuricomponent encodeURIComponentY Z�AZ o   � ��@�@ 0 
theappname 
theAppName�A  �B  X o      �?�? 0 
escappname 
escAppNameV [\[ l  � ��>�=�<�>  �=  �<  \ ]^] r   � �_`_ l  � �a�;�:a I  � ��9b�8
�9 .sysoexecTEXT���     TEXTb b   � �cdc b   � �efe m   � �gg �hh  e c h o   "f o   � ��7�7 0 thekeywords theKeywordsd m   � �ii �jj , "   |   s e d   - e   ' s / [ ; , ] / / g '�8  �;  �:  ` o      �6�6  0 thekeywordssed theKeywordsSed^ klk l  � ��5�4�3�5  �4  �3  l mnm r   � �opo b   � �qrq b   � �sts m   � �uu �vv 4 : P R O P E R T I E S : 
     : B I B D E S K :    t o   � ��2�2  0 thekeywordssed theKeywordsSedr m   � �ww �xx  
     : E N D :p o      �1�1 0 theproperty thePropertyn yzy r   � �{|{ b   � �}~} b   � �� o   � ��0�0 0 theproperty theProperty� m   � ��� ���  
 
    ~ o   � ��/�/ 0 thereference theReference| o      �.�. 0 
thecontent 
theContentz ��� r   � ���� I   � ��-��,�- (0 encodeuricomponent encodeURIComponent� ��+� o   � ��*�* 0 
thecontent 
theContent�+  �,  � o      �)�) 0 
esccontent 
escContent� ��� l  � ��(�'�&�(  �'  �&  � ��� l  � ��%�$�#�%  �$  �#  � ��"� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��!�! 0 theprotocol theProtocol� o   � �� �  0 	escscheme 	escScheme� o   � ��� 0 escpath escPath� o   � ��� 0 esccite escCite� m   � ��� ���  /� o   � ��� 0 esctitle escTitle� o   � ��� 0 esccite escCite� o   � ��� 0 
escappname 
escAppName� m   � ��� ���  /� o   � ��� 0 esccite escCite� m   � ��� ���  /� o   � ��� 0 
esccontent 
escContent� m   � ��� ���  :� o   � ��� 0 escapp escApp� o      �� 0 thelink theLink�"  � ��� l     ����  �  �  � ��� i   $ '��� I      ���� 0 	linkpages 	linkPages� ��� o      �� 0 theprotocol theProtocol� ��� o      �� 0 theapp theApp�  �  � k     |�� ��� O     1��� k    0�� ��� r    ��� m    �� ���  p a g e s :� o      �� 0 	thescheme 	theScheme� ��� r    ��� 4   ��
� 
docu� m   
 �� � o      �� 0 thedoc theDoc� ��� r    ��� l   ��
�	� n    ��� 1    �
� 
pnam� o    �� 0 thedoc theDoc�
  �	  � o      �� 0 theshorttitle theShortTitle� ��� r    ��� b    ��� b    ��� o    �� 0 theshorttitle theShortTitle� m    �� ���  :� o    �� 0 theapp theApp� o      �� 0 thetitle theTitle� ��� r    $��� b    "��� l    ���� n     ��� 1     � 
�  
ppth� o    ���� 0 thedoc theDoc�  �  � m     !�� ���  : :� o      ���� 0 thepath thePath� ��� r   % *��� l  % (������ n   % (��� 1   & (��
�� 
pSel� o   % &���� 0 thedoc theDoc��  ��  � o      ���� 0 
thecontent 
theContent� ���� r   + 0��� n   + .��� 1   , .��
�� 
ofse� o   + ,���� 0 
thecontent 
theContent� o      ���� 0 
thecharoff 
theCharOff��  � m     ���                                                                                  page  alis    N  rushka                     �/�SH+   �{	Pages.app                                                       �����        ����  	                	iWork '09     �/�C      ��u�     �{ H�\  )rushka:Applications: iWork '09: Pages.app    	 P a g e s . a p p    r u s h k a   Applications/iWork '09/Pages.app  / ��  � ��� l  2 2��������  ��  ��  � ��� r   2 :��� I   2 8������� (0 encodeuricomponent encodeURIComponent� ���� o   3 4���� 0 	thescheme 	theScheme��  ��  � o      ���� 0 	escscheme 	escScheme� ��� r   ; C   I   ; A������ (0 encodeuricomponent encodeURIComponent �� o   < =���� 0 theshorttitle theShortTitle��  ��   o      ���� 0 escshorttitle escShortTitle�  r   D L I   D J������ (0 encodeuricomponent encodeURIComponent 	��	 o   E F���� 0 thetitle theTitle��  ��   o      ���� 0 esctitle escTitle 

 r   M U I   M S������ (0 encodeuricomponent encodeURIComponent �� o   N O���� 0 thepath thePath��  ��   o      ���� 0 escpath escPath  r   V ` I   V ^������ (0 encodeuricomponent encodeURIComponent �� c   W Z o   W X���� 0 
thecontent 
theContent m   X Y��
�� 
ctxt��  ��   o      ���� 0 
esccontent 
escContent  l  a a��������  ��  ��   �� r   a | b   a x b   a v  b   a t!"! b   a r#$# b   a p%&% b   a n'(' b   a l)*) b   a j+,+ b   a h-.- b   a f/0/ b   a d121 o   a b���� 0 theprotocol theProtocol2 o   b c���� 0 	escscheme 	escScheme0 o   d e���� 0 escpath escPath. o   f g���� 0 
thecharoff 
theCharOff, m   h i33 �44  /* o   j k���� 0 esctitle escTitle( m   l m55 �66  /& o   n o���� 0 escshorttitle escShortTitle$ m   p q77 �88  /" o   r s���� 0 
esccontent 
escContent  m   t u99 �::  : o   v w���� 0 escapp escApp o      ���� 0 thelink theLink��  � ;<; l     ��������  ��  ��  < =>= i   ( +?@? I      ��A���� 0 linknumbers linkNumbersA BCB o      ���� 0 theprotocol theProtocolC D��D o      ���� 0 theapp theApp��  ��  @ k    EE FGF O     �HIH k    �JJ KLK r    MNM m    OO �PP  n u m b e r s :N o      ���� 0 	thescheme 	theSchemeL QRQ r    STS 4   ��U
�� 
docuU m   
 ���� T o      ���� 0 thedoc theDocR VWV r    XYX l   Z����Z n    [\[ 1    ��
�� 
pnam\ o    ���� 0 thedoc theDoc��  ��  Y o      ���� 0 theshorttitle theShortTitleW ]^] r    _`_ b    aba b    cdc o    ���� 0 theshorttitle theShortTitled m    ee �ff  :b o    ���� 0 theapp theApp` o      ���� 0 thetitle theTitle^ ghg r    $iji b    "klk l    m����m n     non 1     ��
�� 
pptho o    ���� 0 thedoc theDoc��  ��  l m     !pp �qq  : :j o      ���� 0 thepath thePathh r��r O   % �sts k   ) �uu vwv r   ) ,xyx m   ) *����  y o      ���� 0 thesheet theSheetw z{z Y   - l|��}~��| k   = g ��� O   = W��� r   D V��� l  D T������ I  D T�����
�� .corecnte****       ****� l  D P������ 6  D P��� 2  D G��
�� 
NmTb� >  H O��� 1   I K��
�� 
NMTs� m   L N��
�� 
msng��  ��  ��  ��  ��  � o      ���� 0 x  � 4   = A���
�� 
NmSh� o   ? @���� 0 i  � ���� Z   X g������� >  X [��� o   X Y���� 0 x  � m   Y Z����  � k   ^ c�� ��� r   ^ a��� o   ^ _���� 0 i  � o      ���� 0 thesheet theSheet� ����  S   b c��  ��  ��  ��  �� 0 i  } m   0 1���� ~ l  1 8������ I  1 8�����
�� .corecnte****       ****� 2  1 4��
�� 
NmSh��  ��  ��  ��  { ���� Z   m ������� =  m p��� o   m n���� 0 thesheet theSheet� m   n o����  � k   s ��� ��� r   s x��� b   s v��� m   s t���� � m   t u�� ���  : :� o      ���� 0 thesheet theSheet� ��� r   y ~��� b   y |��� m   y z���� � m   z {�� ���  : :� o      ���� 0 thetable theTable� ��� r    ���� m    ��� ��� 
 A 1 : A 1� o      ���� 0 therange theRange� ���� r   � ���� m   � ��� ���  � o      ���� 0 
thecontent 
theContent��  ��  � O   � ���� k   � ��� ��� r   � ���� 6  � ���� 4  � ����
�� 
NmTb� m   � ����� � >  � ���� 1   � ���
�� 
NMTs� m   � ���
�� 
msng� o      ���� 0 thetable theTable� ���� O   � ���� k   � ��� ��� r   � ���� b   � ���� l  � ������� c   � ���� o   � ��� 0 thesheet theSheet� m   � ��~
�~ 
ctxt��  ��  � m   � ��� ���  : :� o      �}�} 0 thesheet theSheet� ��� r   � ���� b   � ���� l  � ���|�{� n   � ���� 1   � ��z
�z 
pnam� o   � ��y�y 0 thetable theTable�|  �{  � m   � ��� ���  : :� o      �x�x 0 thetable theTable� ��� r   � ���� l  � ���w�v� n   � ���� 1   � ��u
�u 
pnam� 1   � ��t
�t 
NMTs�w  �v  � o      �s�s 0 therange theRange� ��� r   � ���� n   � ���� 1   � ��r
�r 
NMCv� n   � ���� 2   � ��q
�q 
NmCl� 1   � ��p
�p 
NMTs� o      �o�o  0 therangevalues theRangeValues� ��� r   � ���� m   � ��� ���   � n     ��� 1   � ��n
�n 
txdl� 1   � ��m
�m 
ascr� ��� r   � ���� c   � ���� o   � ��l�l  0 therangevalues theRangeValues� m   � ��k
�k 
TEXT� o      �j�j 0 
thecontent 
theContent�  �i  r   � � m   � � �   n      1   � ��h
�h 
txdl 1   � ��g
�g 
ascr�i  � o   � ��f�f 0 thetable theTable��  � 4   � ��e
�e 
NmSh o   � ��d�d 0 thesheet theSheet��  t o   % &�c�c 0 thedoc theDoc��  I m     �                                                                                  NMBR  alis    V  rushka                     �/�SH+   �{Numbers.app                                                     �|���        ����  	                	iWork '09     �/�C      ��u�     �{ H�\  +rushka:Applications: iWork '09: Numbers.app     N u m b e r s . a p p    r u s h k a  "Applications/iWork '09/Numbers.app  / ��  G 	
	 l  � ��b�a�`�b  �a  �`  
  r   � � I   � ��_�^�_ (0 encodeuricomponent encodeURIComponent �] o   � ��\�\ 0 	thescheme 	theScheme�]  �^   o      �[�[ 0 	escscheme 	escScheme  r   � I   ��Z�Y�Z (0 encodeuricomponent encodeURIComponent �X o   �W�W 0 theshorttitle theShortTitle�X  �Y   o      �V�V 0 escshorttitle escShortTitle  r   I  �U�T�U (0 encodeuricomponent encodeURIComponent �S o  	
�R�R 0 thetitle theTitle�S  �T   o      �Q�Q 0 esctitle escTitle  r    I  �P!�O�P (0 encodeuricomponent encodeURIComponent! "�N" o  �M�M 0 thepath thePath�N  �O    o      �L�L 0 escpath escPath #$# r  (%&% I  $�K'�J�K (0 encodeuricomponent encodeURIComponent' (�I( o   �H�H 0 thesheet theSheet�I  �J  & o      �G�G 0 escsheet escSheet$ )*) r  )3+,+ I  )/�F-�E�F (0 encodeuricomponent encodeURIComponent- .�D. o  *+�C�C 0 thetable theTable�D  �E  , o      �B�B 0 esctable escTable* /0/ r  4>121 I  4:�A3�@�A (0 encodeuricomponent encodeURIComponent3 4�?4 o  56�>�> 0 therange theRange�?  �@  2 o      �=�= 0 escrange escRange0 565 r  ?I787 I  ?E�<9�;�< (0 encodeuricomponent encodeURIComponent9 :�:: o  @A�9�9 0 
thecontent 
theContent�:  �;  8 o      �8�8 0 
esccontent 
escContent6 ;<; l JJ�7�6�5�7  �6  �5  < =�4= r  J>?> b  J{@A@ b  JwBCB b  JsDED b  JoFGF b  JkHIH b  JiJKJ b  JeLML b  JaNON b  J]PQP b  JYRSR b  JUTUT b  JQVWV b  JMXYX o  JK�3�3 0 theprotocol theProtocolY o  KL�2�2 0 	escscheme 	escSchemeW o  MP�1�1 0 escpath escPathU o  QT�0�0 0 escsheet escSheetS o  UX�/�/ 0 esctable escTableQ o  Y\�.�. 0 escrange escRangeO m  ]`ZZ �[[  /M o  ad�-�- 0 esctitle escTitleK m  eh\\ �]]  /I o  ij�,�, 0 escshorttitle escShortTitleG m  kn^^ �__  /E o  or�+�+ 0 
esccontent 
escContentC m  sv`` �aa  :A o  wz�*�* 0 escapp escApp? o      �)�) 0 thelink theLink�4  > bcb l     �(�'�&�(  �'  �&  c ded i   , /fgf I      �%h�$�% 0 linkkeynote linkKeynoteh iji o      �#�# 0 theprotocol theProtocolj k�"k o      �!�! 0 theapp theApp�"  �$  g k     �ll mnm O     >opo k    =qq rsr r    tut m    vv �ww  k e y n o t e :u o      � �  0 	thescheme 	theSchemes xyx r    z{z 4   �|
� 
docu| m   
 �� { o      �� 0 thedoc theDocy }~} r    � l   ���� n    ��� 1    �
� 
pnam� o    �� 0 thedoc theDoc�  �  � o      �� 0 theshorttitle theShortTitle~ ��� r    ��� b    ��� o    �� 0 theshorttitle theShortTitle� m    �� ���  : K e y n o t e� o      �� 0 thetitle theTitle� ��� r    "��� b     ��� l   ���� n    ��� 1    �
� 
ppth� o    �� 0 thedoc theDoc�  �  � m    �� ���  : :� o      �� 0 thepath thePath� ��� r   # +��� l  # )���� n   # )��� 1   ' )�
� 
KnCS� 4  # '��
� 
docu� m   % &�� �  �  � o      �� 0 theslide theSlide� ��� r   , 1��� l  , /��
�	� n   , /��� 1   - /�
� 
KSdN� o   , -�� 0 theslide theSlide�
  �	  � o      �� 0 theslideindex theSlideIndex� ��� r   2 =��� b   2 ;��� b   2 7��� l  2 5���� n   2 5��� 1   3 5�
� 
titl� o   2 3�� 0 theslide theSlide�  �  � m   5 6�� ���  
 	 
 	� l  7 :�� ��� n   7 :��� 1   8 :��
�� 
btxt� o   7 8���� 0 theslide theSlide�   ��  � o      ���� 0 
thecontent 
theContent�  p m     ���                                                                                  keyn  alis    V  rushka                     �/�SH+   �{Keynote.app                                                     ����        ����  	                	iWork '09     �/�C      ��u�     �{ H�\  +rushka:Applications: iWork '09: Keynote.app     K e y n o t e . a p p    r u s h k a  "Applications/iWork '09/Keynote.app  / ��  n ��� l  ? ?��������  ��  ��  � ��� r   ? G��� I   ? E������� (0 encodeuricomponent encodeURIComponent� ���� o   @ A���� 0 	thescheme 	theScheme��  ��  � o      ���� 0 	escscheme 	escScheme� ��� r   H P��� I   H N������� (0 encodeuricomponent encodeURIComponent� ���� o   I J���� 0 thepath thePath��  ��  � o      ���� 0 escpath escPath� ��� r   Q Y��� I   Q W������� (0 encodeuricomponent encodeURIComponent� ���� o   R S���� 0 thetitle theTitle��  ��  � o      ���� 0 esctitle escTitle� ��� r   Z b��� I   Z `������� (0 encodeuricomponent encodeURIComponent� ���� o   [ \���� 0 theshorttitle theShortTitle��  ��  � o      ���� 0 escshorttitle escShortTitle� ��� r   c k��� I   c i������� (0 encodeuricomponent encodeURIComponent� ���� o   d e���� 0 
thecontent 
theContent��  ��  � o      ���� 0 
esccontent 
escContent� ��� l  l l��������  ��  ��  � ��� r   l ���� b   l ���� b   l ���� b   l ��� b   l }��� b   l {��� b   l y��� b   l w��� b   l u��� b   l s��� b   l q��� b   l o��� o   l m���� 0 theprotocol theProtocol� o   m n���� 0 	escscheme 	escScheme� o   o p���� 0 escpath escPath� o   q r���� 0 theslideindex theSlideIndex� m   s t�� ���  /� o   u v���� 0 esctitle escTitle� m   w x�� ���  /� o   y z���� 0 escshorttitle escShortTitle� m   { |�� ���  /� o   } ~���� 0 
esccontent 
escContent� m    ��� ���  :� o   � ����� 0 escapp escApp� o      ���� 0 thelink theLink� ���� l  � ���������  ��  ��  ��  e ��� l     ��������  ��  ��  � ��� i   0 3� � I      ������ 0 linkmail linkMail  o      ���� 0 theprotocol theProtocol �� o      ���� 0 theapp theApp��  ��    k     �  O     =	 k    <

  r    	 1    ��
�� 
slct o      ���� 0 theselection theSelection  X   
 8�� k    3  r     n     1    ��
�� 
meid o    ���� 0 
themessage 
theMessage o      ���� 0 theid theID  r     % l    #���� n     #  1   ! #��
�� 
subj  o     !���� 0 
themessage 
theMessage��  ��   o      ���� "0 theshortsubject theShortSubject !"! r   & -#$# b   & +%&% b   & )'(' o   & '���� "0 theshortsubject theShortSubject( m   ' ()) �**  :& o   ) *���� 0 theapp theApp$ o      ���� 0 
thesubject 
theSubject" +��+ r   . 3,-, n   . 1./. 1   / 1��
�� 
ctnt/ o   . /���� 0 
themessage 
theMessage- o      ���� 0 
thecontent 
theContent��  �� 0 
themessage 
theMessage o    ���� 0 theselection theSelection 0��0 r   9 <121 m   9 :33 �44  m e s s a g e : / /2 o      ���� 0 	thescheme 	theScheme��  	 m     55�                                                                                  emal  alis    4  rushka                     �/�SH+   H�\Mail.app                                                        J�c�-Ӓ        ����  	                Applications    �/�C      �-ł     H�\  rushka:Applications: Mail.app     M a i l . a p p    r u s h k a  Applications/Mail.app   / ��   676 l  > >��������  ��  ��  7 898 r   > F:;: I   > D��<���� (0 encodeuricomponent encodeURIComponent< =��= o   ? @���� 0 theid theID��  ��  ; o      ���� 0 escid escID9 >?> r   G O@A@ I   G M��B���� (0 encodeuricomponent encodeURIComponentB C��C o   H I���� "0 theshortsubject theShortSubject��  ��  A o      ���� "0 escshortsubject escShortSubject? DED r   P XFGF I   P V��H���� (0 encodeuricomponent encodeURIComponentH I��I o   Q R���� 0 
thesubject 
theSubject��  ��  G o      ���� 0 
escsubject 
escSubjectE JKJ r   Y aLML I   Y _��N���� (0 encodeuricomponent encodeURIComponentN O��O o   Z [���� 0 	thescheme 	theScheme��  ��  M o      ���� 0 	escscheme 	escSchemeK PQP r   b jRSR I   b h��T���� (0 encodeuricomponent encodeURIComponentT U��U o   c d���� 0 
thecontent 
theContent��  ��  S o      ���� 0 
esccontent 
escContentQ VWV l  k k��������  ��  ��  W X��X r   k �YZY b   k �[\[ b   k ~]^] b   k |_`_ b   k zaba b   k xcdc b   k vefe b   k tghg b   k riji b   k pklk b   k nmnm o   k l���� 0 theprotocol theProtocoln o   l m���� 0 	escscheme 	escSchemel o   n o���� 0 escid escIDj m   p qoo �pp  /h o   r s���� 0 
escsubject 
escSubjectf m   t uqq �rr  /d o   v w���� "0 escshortsubject escShortSubjectb m   x yss �tt  /` o   z {���� 0 
esccontent 
escContent^ m   | }uu �vv  :\ o   ~ ���� 0 escapp escAppZ o      ���� 0 thelink theLink��  � wxw l     ��������  ��  ��  x yzy i   4 7{|{ I      ��}���� "0 linkaddressbook linkAddressBook} ~~ o      ���� 0 theprotocol theProtocol ���� o      ���� 0 theapp theApp��  ��  | k     i�� ��� l      ������  �  By Alexander Poslavsky   � ��� 0  B y   A l e x a n d e r   P o s l a v s k y � ��� O     >��� k    =�� ��� r    ��� m    �� ���  a d d r e s s :� o      ���� 0 	thescheme 	theScheme� ��� r    ��� 1    ��
�� 
az48� o      �� 0 allcontacts AllContacts� ��~� Z    =���}�� =    ��� n    ��� m    �|
�| 
nmbr� n   ��� 2   �{
�{ 
cobj� o    �z�z 0 allcontacts AllContacts� m    �y�y � k    *�� ��� r    ��� n    ��� 4    �x�
�x 
cobj� m    �w�w � o    �v�v 0 allcontacts AllContacts� o      �u�u 0 one_contact  � ��� r    $��� n    "��� 1     "�t
�t 
ID  � o     �s�s 0 one_contact  � o      �r�r 0 theid theID� ��q� r   % *��� n   % (��� 1   & (�p
�p 
pnam� o   % &�o�o 0 one_contact  � o      �n�n 0 thename theName�q  �}  � O   - =��� k   1 <�� ��� I  1 6�m�l�k
�m .miscactvnull��� ��� null�l  �k  � ��j� I  7 <�i��h
�i .sysodlogaskr        TEXT� m   7 8�� ��� 2 E r r o r :   C h o o s e   o n e   c o n t a c t�h  �j  � m   - .���                                                                                  sevs  alis    �  rushka                     �/�SH+   H�=System Events.app                                               I��� ^R        ����  	                CoreServices    �/�C      � PB     H�= H�0 H�/  7rushka:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    r u s h k a  -System/Library/CoreServices/System Events.app   / ��  �~  � m     ���                                                                                  adrb  alis    T  rushka                     �/�SH+   H�\Address Book.app                                                J�� _�        ����  	                Applications    �/�C      � Q�     H�\  %rushka:Applications: Address Book.app   "  A d d r e s s   B o o k . a p p    r u s h k a  Applications/Address Book.app   / ��  � ��� l  ? ?�g�f�e�g  �f  �e  � ��� r   ? G��� I   ? E�d��c�d (0 encodeuricomponent encodeURIComponent� ��b� o   @ A�a�a 0 theid theID�b  �c  � o      �`�` 0 escid escID� ��� r   H P��� I   H N�_��^�_ (0 encodeuricomponent encodeURIComponent� ��]� o   I J�\�\ 0 thename theName�]  �^  � o      �[�[ 0 escname escName� ��� r   Q Y��� I   Q W�Z��Y�Z (0 encodeuricomponent encodeURIComponent� ��X� o   R S�W�W 0 	thescheme 	theScheme�X  �Y  � o      �V�V 0 	escscheme 	escScheme� ��U� r   Z i��� b   Z g��� b   Z e��� b   Z c��� b   Z a��� b   Z _��� b   Z ]��� o   Z [�T�T 0 theprotocol theProtocol� o   [ \�S�S 0 	escscheme 	escScheme� o   ] ^�R�R 0 escid escID� m   _ `�� ���  /� o   a b�Q�Q 0 escname escName� m   c d�� ���  :� o   e f�P�P 0 escapp escApp� o      �O�O 0 thelink theLink�U  z ��� l     �N�M�L�N  �M  �L  � ��� l     �K�J�I�K  �J  �I  � ��� i   8 ;��� I      �H��G�H 0 
linkitunes 
linkITunes� ��� o      �F�F 0 theprotocol theProtocol� ��E� o      �D�D 0 theapp theApp�E  �G  � k     ��� ��� O     d��� k    c�� ��� r    ��� m    �� ���  i T u n e s :� o      �C�C 0 	thescheme 	theScheme� ��� r    � � l   �B�A n     1    �@
�@ 
pPIS l   �?�> n     4    �=
�= 
cobj m    �<�<  1    �;
�; 
sele�?  �>  �B  �A    o      �:�: 0 theid theID� 	 r    

 l   �9�8 n     1    �7
�7 
pnam l   �6�5 n     4    �4
�4 
cobj m    �3�3  1    �2
�2 
sele�6  �5  �9  �8   o      �1�1 0 theshortname theShortName	  r    % b    # b    ! o    �0�0 0 theshortname theShortName m      �  : o   ! "�/�/ 0 theapp theApp o      �.�. 0 thename theName  r   & 0  l  & .!�-�,! n   & ."#" 1   , .�+
�+ 
pnam# l  & ,$�*�)$ n   & ,%&% 4   ) ,�('
�( 
cobj' m   * +�'�' & 1   & )�&
�& 
sele�*  �)  �-  �,    o      �%�% 0 thetitle theTitle ()( r   1 ;*+* l  1 9,�$�#, n   1 9-.- 1   7 9�"
�" 
pCmp. l  1 7/�!� / n   1 7010 4   4 7�2
� 
cobj2 m   5 6�� 1 1   1 4�
� 
sele�!  �   �$  �#  + o      �� 0 thecomposer theComposer) 343 r   < F565 l  < D7��7 n   < D898 1   B D�
� 
pAlb9 l  < B:��: n   < B;<; 4   ? B�=
� 
cobj= m   @ A�� < 1   < ?�
� 
sele�  �  �  �  6 o      �� 0 thealbum theAlbum4 >?> r   G Q@A@ l  G OB��B n   G OCDC 1   M O�
� 
pArtD l  G ME��E n   G MFGF 4   J M�H
� 
cobjH m   K L�� G 1   G J�
� 
sele�  �  �  �  A o      �
�
 0 	theartist 	theArtist? I�	I r   R cJKJ b   R aLML b   R _NON b   R ]PQP b   R [RSR b   R YTUT b   R WVWV b   R UXYX m   R SZZ �[[  
Y o   S T�� 0 thetitle theTitleW m   U V\\ �]]  
U o   W X�� 0 thealbum theAlbumS m   Y Z^^ �__  
Q o   [ \�� 0 thecomposer theComposerO m   ] ^`` �aa  
M o   _ `�� 0 	theartist 	theArtistK o      �� 0 
thecontent 
theContent�	  � m     bb�                                                                                  hook  alis    <  rushka                     �/�SH+   H�\
iTunes.app                                                      K V�K�        ����  	                Applications    �/�C      �K�|     H�\  rushka:Applications: iTunes.app    
 i T u n e s . a p p    r u s h k a  Applications/iTunes.app   / ��  � cdc l  e e����  �  �  d efe r   e mghg I   e k� i���  (0 encodeuricomponent encodeURIComponenti j��j o   f g���� 0 	thescheme 	theScheme��  ��  h o      ���� 0 	escscheme 	escSchemef klk r   n vmnm I   n t��o���� (0 encodeuricomponent encodeURIComponento p��p o   o p���� 0 theshortname theShortName��  ��  n o      ���� 0 escshortname escShortNamel qrq r   w sts I   w }��u���� (0 encodeuricomponent encodeURIComponentu v��v o   x y���� 0 thename theName��  ��  t o      ���� 0 escname escNamer wxw r   � �yzy I   � ���{���� (0 encodeuricomponent encodeURIComponent{ |��| o   � ����� 0 thetitle theTitle��  ��  z o      ���� 0 esctitle escTitlex }~} r   � �� I   � �������� (0 encodeuricomponent encodeURIComponent� ���� o   � ����� 0 thecomposer theComposer��  ��  � o      ���� 0 esccomposer escComposer~ ��� r   � ���� I   � �������� (0 encodeuricomponent encodeURIComponent� ���� o   � ����� 0 thealbum theAlbum��  ��  � o      ���� 0 escalbum escAlbum� ��� r   � ���� I   � �������� (0 encodeuricomponent encodeURIComponent� ���� o   � ����� 0 	theartist 	theArtist��  ��  � o      ���� 0 	escartist 	escArtist� ��� r   � ���� I   � �������� (0 encodeuricomponent encodeURIComponent� ���� o   � ����� 0 
thecontent 
theContent��  ��  � o      ���� 0 
esccontent 
escContent� ���� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 theprotocol theProtocol� o   � ����� 0 	escscheme 	escScheme� o   � ����� 0 theid theID� m   � ��� ���  /� o   � ����� 0 escname escName� m   � ��� ���  /� o   � ����� 0 escshortname escShortName� m   � ��� ���  /� o   � ����� 0 
esccontent 
escContent� m   � ��� ���  :� o   � ����� 0 escapp escApp� o      ���� 0 thelink theLink��  � ��� l     ��������  ��  ��  � ��� i   < ?��� I      ������� 0 linkterminal linkTerminal� ��� o      ���� 0 theprotocol theProtocol� ���� o      ���� 0 theapp theApp��  ��  � k     e�� ��� O     )��� k    (�� ��� O    ��� r    ��� n    ��� 1    ��
�� 
pcnt� 1    ��
�� 
tcnt� o      ���� 0 
thecontent 
theContent� 4   ���
�� 
cwin� m    ���� � ��� r    ��� m    �� ���  f i l e : /� o      ���� 0 	thescheme 	theScheme� ��� r     ��� l   ������ n    ��� 1    ��
�� 
pnam� 4   ���
�� 
cwin� m    ���� ��  ��  � o      ���� 0 theshortname theShortName� ���� r   ! (��� b   ! &��� b   ! $��� o   ! "���� 0 theshortname theShortName� m   " #�� ���  :� o   $ %���� 0 theapp theApp� o      ���� 0 thename theName��  � m     ���                                                                                      @ alis    Z  rushka                     �/�SH+   H�]Terminal.app                                                    H�.� K,        ����  	                	Utilities     �/�C      � =     H�] H�\  ,rushka:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    r u s h k a  #Applications/Utilities/Terminal.app   / ��  � ��� l  * *��������  ��  ��  � ��� r   * 2��� I   * 0������� (0 encodeuricomponent encodeURIComponent� ���� o   + ,���� 0 	thescheme 	theScheme��  ��  � o      ���� 0 	escscheme 	escScheme� ��� r   3 ;��� I   3 9������� (0 encodeuricomponent encodeURIComponent� ���� o   4 5���� 0 theshortname theShortName��  ��  � o      ���� 0 escshortname escShortName� ��� r   < D��� I   < B������� (0 encodeuricomponent encodeURIComponent� ���� o   = >���� 0 thename theName��  ��  � o      ���� 0 escname escName� ��� r   E M��� I   E K������� (0 encodeuricomponent encodeURIComponent� ���� o   F G���� 0 
thecontent 
theContent��  ��  � o      ���� 0 
esccontent 
escContent� �	 � l  N N��������  ��  ��  	  	��	 r   N e			 b   N c			 b   N a			 b   N _				 b   N ]	
		
 b   N [			 b   N Y			 b   N W			 b   N U			 b   N S			 b   N Q			 o   N O���� 0 theprotocol theProtocol	 o   O P���� 0 	escscheme 	escScheme	 o   Q R���� 0 escerrorurl escErrorURL	 m   S T		 �		  /	 o   U V���� 0 escname escName	 m   W X		 �		  /	 o   Y Z���� 0 escshortname escShortName	 m   [ \		 �		  /		 o   ] ^���� 0 
esccontent 
escContent	 m   _ `		 �		  :	 o   a b���� 0 escapp escApp	 o      ���� 0 thelink theLink��  � 	 	!	  l     ��������  ��  ��  	! 	"	#	" i   @ C	$	%	$ I      ��	&���� 0 
linkfinder 
linkFinder	& 	'	(	' o      ���� 0 theprotocol theProtocol	( 	)��	) o      ���� 0 theapp theApp��  ��  	% k     `	*	* 	+	,	+ O     (	-	.	- k    '	/	/ 	0	1	0 r    	2	3	2 m    	4	4 �	5	5  f i l e : /	3 o      ���� 0 	thescheme 	theScheme	1 	6	7	6 r    	8	9	8 c    	:	;	: 1    ��
�� 
sele	; m    ��
�� 
alis	9 o      ���� 0 theitem theItem	7 	<	=	< r    	>	?	> n    	@	A	@ 1    ��
�� 
psxp	A o    ���� 0 theitem theItem	? o      ���� 0 thepath thePath	= 	B	C	B r    	D	E	D l   	F����	F n    	G	H	G 1    ��
�� 
pnam	H l   	I����	I e    	J	J I   ��	K�
�� .sysonfo4asfe        file	K o    �~�~ 0 theitem theItem�  ��  ��  ��  ��  	E o      �}�} 0 theshorttitle theShortTitle	C 	L�|	L r     '	M	N	M b     %	O	P	O b     #	Q	R	Q o     !�{�{ 0 theshorttitle theShortTitle	R m   ! "	S	S �	T	T  :	P o   # $�z�z 0 theapp theApp	N o      �y�y 0 thetitle theTitle�|  	. m     	U	U�                                                                                  MACS  alis    b  rushka                     �/�SH+   H�=
Finder.app                                                      Iw��[xq        ����  	                CoreServices    �/�C      �[ja     H�= H�0 H�/  0rushka:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    r u s h k a  &System/Library/CoreServices/Finder.app  / ��  	, 	V	W	V l  ) )�x�w�v�x  �w  �v  	W 	X	Y	X r   ) 1	Z	[	Z I   ) /�u	\�t�u (0 encodeuricomponent encodeURIComponent	\ 	]�s	] o   * +�r�r 0 	thescheme 	theScheme�s  �t  	[ o      �q�q 0 	escscheme 	escScheme	Y 	^	_	^ r   2 :	`	a	` I   2 8�p	b�o�p (0 encodeuricomponent encodeURIComponent	b 	c�n	c o   3 4�m�m 0 thepath thePath�n  �o  	a o      �l�l 0 escpath escPath	_ 	d	e	d r   ; C	f	g	f I   ; A�k	h�j�k (0 encodeuricomponent encodeURIComponent	h 	i�i	i o   < =�h�h 0 theshorttitle theShortTitle�i  �j  	g o      �g�g 0 escshorttitle escShortTitle	e 	j	k	j r   D L	l	m	l I   D J�f	n�e�f (0 encodeuricomponent encodeURIComponent	n 	o�d	o o   E F�c�c 0 thetitle theTitle�d  �e  	m o      �b�b 0 esctitle escTitle	k 	p	q	p l  M M�a�`�_�a  �`  �_  	q 	r�^	r r   M `	s	t	s b   M ^	u	v	u b   M \	w	x	w b   M Z	y	z	y b   M X	{	|	{ b   M V	}	~	} b   M T		�	 b   M R	�	�	� b   M P	�	�	� o   M N�]�] 0 theprotocol theProtocol	� o   N O�\�\ 0 	escscheme 	escScheme	� o   P Q�[�[ 0 escpath escPath	� m   R S	�	� �	�	�  /	~ o   T U�Z�Z 0 esctitle escTitle	| m   V W	�	� �	�	�  /	z o   X Y�Y�Y 0 escshorttitle escShortTitle	x m   Z [	�	� �	�	�  :	v o   \ ]�X�X 0 escapp escApp	t o      �W�W 0 thelink theLink�^  	# 	�	�	� l     �V�U�T�V  �U  �T  	� 	��S	� i   D G	�	�	� I      �R	��Q�R "0 linkapplication linkApplication	� 	�	�	� o      �P�P 0 theprotocol theProtocol	� 	��O	� o      �N�N 0 theapp theApp�O  �Q  	� k     �	�	� 	�	�	� O     F	�	�	� k   	 E	�	� 	�	�	� r   	 	�	�	� m   	 
	�	� �	�	�  f i l e : /	� o      �M�M 0 	thescheme 	theScheme	� 	�	�	� r    	�	�	� m    �L
�L boovfals	� o      �K�K  0 appunsupported appUnsupported	� 	�	�	� Q    %	�	�	�	� r    	�	�	� 4   �J	�
�J 
docu	� m    �I�I 	� o      �H�H 0 thedoc theDoc	� R      �G�F�E
�G .ascrerr ****      � ****�F  �E  	� r   " %	�	�	� m   " #�D
�D boovtrue	� o      �C�C  0 appunsupported appUnsupported	� 	��B	� Z   & E	�	��A�@	� =  & )	�	�	� o   & '�?�?  0 appunsupported appUnsupported	� m   ' (�>
�> boovfals	� k   , A	�	� 	�	�	� r   , 1	�	�	� l  , /	��=�<	� n   , /	�	�	� 1   - /�;
�; 
pnam	� o   , -�:�: 0 thedoc theDoc�=  �<  	� o      �9�9 0 theshorttitle theShortTitle	� 	�	�	� r   2 9	�	�	� b   2 7	�	�	� b   2 5	�	�	� o   2 3�8�8 0 theshorttitle theShortTitle	� m   3 4	�	� �	�	�  :	� o   5 6�7�7 0 theapp theApp	� o      �6�6 0 thetitle theTitle	� 	�	�	� r   : ?	�	�	� n   : =	�	�	� 1   ; =�5
�5 
ppth	� o   : ;�4�4 0 thedoc theDoc	� o      �3�3 0 thepath thePath	� 	��2	� l  @ @�1�0�/�1  �0  �/  �2  �A  �@  �B  	� 4     �.	�
�. 
capp	� l   	��-�,	� c    	�	�	� o    �+�+ 0 theapp theApp	� m    �*
�* 
TEXT�-  �,  	� 	�	�	� l  G G�)�(�'�)  �(  �'  	� 	�	�	� r   G O	�	�	� I   G M�&	��%�& (0 encodeuricomponent encodeURIComponent	� 	��$	� o   H I�#�# 0 	thescheme 	theScheme�$  �%  	� o      �"�" 0 	escscheme 	escScheme	� 	��!	� Z   P �	�	�� 	�	� =  P S	�	�	� o   P Q��  0 appunsupported appUnsupported	� m   Q R�
� boovtrue	� r   V e	�	�	� b   V c	�	�	� b   V a	�	�	� b   V _	�	�	� b   V ]	�	�	� b   V [	�	�	� b   V Y	�	�	� o   V W�� 0 theprotocol theProtocol	� o   W X�� 0 	escscheme 	escScheme	� o   Y Z�� 0 escerrorurl escErrorURL	� m   [ \	�	� �	�	�  /	� o   ] ^�� "0 escerrormessage escErrorMessage	� m   _ `	�	� �	�	�  :	� o   a b�� 0 escapp escApp	� o      �� 0 thelink theLink�   	� k   h �	�	� 	�	�	� r   h p	�	�	� I   h n�	��� (0 encodeuricomponent encodeURIComponent	� 	��	� o   i j�� 0 thepath thePath�  �  	� o      �� 0 escpath escPath	� 	�	�	� r   q y	�	�	� I   q w�	��� (0 encodeuricomponent encodeURIComponent	� 	��	� o   r s�� 0 theshorttitle theShortTitle�  �  	� o      �� 0 escshorttitle escShortTitle	� 	�	�	� r   z �	�
 	� I   z ��
�� (0 encodeuricomponent encodeURIComponent
 
�
 o   { |�
�
 0 thetitle theTitle�  �  
  o      �	�	 0 esctitle escTitle	� 
�
 r   � �


 b   � �


 b   � �

	
 b   � �




 b   � �


 b   � �


 b   � �


 o   � ��� 0 theprotocol theProtocol
 o   � ��� 0 	escscheme 	escScheme
 o   � ��� 0 escpath escPath
 m   � �

 �

  /
 o   � ��� 0 esctitle escTitle
	 m   � �

 �

  /
 o   � ��� 0 escshorttitle escShortTitle
 o      �� 0 thelink theLink�  �!  �S       �










 
!
"
#
$
%
&
'
(�  
 � �����������������������������������  "0 getitemmetadata getItemMetadata�� (0 encodeuricomponent encodeURIComponent�� 0 	linkerror 	linkError�� 0 
linksafari 
linkSafari��  0 linksafaritabs linkSafariTabs�� 0 linkfirefox linkFirefox�� 0 
linkchrome 
linkChrome�� 0 linkskim linkSkim�� 0 linkbibdesk linkBibDesk�� 0 	linkpages 	linkPages�� 0 linknumbers linkNumbers�� 0 linkkeynote linkKeynote�� 0 linkmail linkMail�� "0 linkaddressbook linkAddressBook�� 0 
linkitunes 
linkITunes�� 0 linkterminal linkTerminal�� 0 
linkfinder 
linkFinder�� "0 linkapplication linkApplication
 �� ����
)
*���� "0 getitemmetadata getItemMetadata�� ��
+�� 
+  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
) ������ 0 theprotocol theProtocol�� 0 theapp theApp
* !�� .�� @�� N�� \�� j�� x�� ��� ��� ��� ��� ��� ��� ��� ��� �������
�� 
TEXT�� 0 	linkerror 	linkError�� 0 
linksafari 
linkSafari��  0 linksafaritabs linkSafariTabs�� 0 linkfirefox linkFirefox�� 0 
linkchrome 
linkChrome�� 0 linkskim linkSkim�� 0 linkbibdesk linkBibDesk�� 0 	linkpages 	linkPages�� 0 linknumbers linkNumbers�� 0 linkkeynote linkKeynote�� 0 linkmail linkMail�� "0 linkaddressbook linkAddressBook�� 0 
linkitunes 
linkITunes�� 0 linkterminal linkTerminal�� 0 
linkfinder 
linkFinder�� "0 linkapplication linkApplication�� 0 thelink theLink��-��&� *��l+ Y hO��&�  *��l+ Y��&�  *��l+ Y ��&�  *��l+ Y ݡ�&�  *��l+ 
Y ˡ�&�  *��l+ Y ���&�  *��l+ Y ���&�  *��l+ Y ���&a   *��l+ Y ���&a   *��l+ Y m��&a   *��l+ Y Y��&a   *��l+ Y E��&a   *��l+ Y 1��&a   *��l+ Y ��&a   *��l+ Y 	*��l+ O_  OP
 ������
,
-���� (0 encodeuricomponent encodeURIComponent�� ��
.�� 
.  ���� 0 theuri theURI��  
, ������ 0 theuri theURI�� 0 escuri escURI
- ����!������ 0 	escapelib 	escapeLib
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� ���,%�%��,%j E�
 ��3����
/
0���� 0 	linkerror 	linkError�� ��
1�� 
1  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
/ ���������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 theerrorurl theErrorURL�� "0 theerrormessage theErrorMessage
0 ������H��������
�� 
capp
�� .earsffdralis        afdr
�� 
psxp�� (0 encodeuricomponent encodeURIComponent�� 0 escerrorurl escErrorURL�� "0 escerrormessage escErrorMessage�� 0 escapp escApp�� .*�/j �,E�O��%E�O*�k+ E�O*�k+ E�O*�k+ E�
 ��`����
2
3���� 0 
linksafari 
linkSafari�� ��
4�� 
4  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
2 
���������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 theurl theURL�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 
thecontent 
theContent�� 0 escurl escURL�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle�� 0 
esccontent 
escContent
3 �q������|������������
�� 
dcnm
�� 
docu
�� .sfridojs****       utxt�� (0 encodeuricomponent encodeURIComponent�� 0 escapp escApp�� 0 thelink theLink�� p� 2��*�k/l E�O��*�k/l E�O��%�%E�O��*�k/l E�OPUO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%�%E�
 �������
5
6����  0 linksafaritabs linkSafariTabs�� ��
7�� 
7  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
5 
���������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 thetabs theTabs�� 0 thelinklist theLinkList�� 0 eachtab eachTab�� 0 theurl theURL�� 0 thetitle theTitle�� 0 escurl escURL�� 0 esctitle escTitle�� 0 eachlink eachLink
6 -�����������������"$&��
�� 
cwin
�� 
bTab
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
dcnm
�� .sfridojs****       utxt�� (0 encodeuricomponent encodeURIComponent�� 0 thelink theLink�� e� [*�k/�-E�OjvE�O J�[��l kh ��l E�O��l E�O)�k+ 
E�O)�k+ 
E�O��%�%�%�%E�O��6G[OY��UO��%E�
 ��:����
8
9���� 0 linkfirefox linkFirefox�� ��
:�� 
:  ��~� 0 theprotocol theProtocol�~ 0 theapp theApp��  
8 �}�|�{�z�y�x�w�v�u�t�s�} 0 theprotocol theProtocol�| 0 theapp theApp�{ 0 oldclipboard oldClipboard�z 0 theurl theURL�y 0 theshorttitle theShortTitle�x 0 thetitle theTitle�w 0 
thecontent 
theContent�v 0 escurl escURL�u 0 escshorttitle escShortTitle�t 0 esctitle escTitle�s 0 
esccontent 
escContent
9 }�r�q]T�p�o�nZa�m�l�k�jx�i�����h
�r .miscactvnull��� ��� null
�q .JonsgClp****    ��� null
�p 
faal
�o eMdsKcmd
�n .prcskprsnull���    utxt
�m .sysodelanull��� ��� nmbr
�l .JonspClpnull���     ****
�k 
cwin
�j 
pnam�i (0 encodeuricomponent encodeURIComponent�h 0 thelink theLink�� �� P*j O*j E�O� ���l O���l UO�j 
O*j E�O�j O*�k/�,EE�O��%E�O*j E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%a %�%a %�%a %�%a %E` 
 �g��f�e
;
<�d�g 0 
linkchrome 
linkChrome�f �c
=�c 
=  �b�a�b 0 theprotocol theProtocol�a 0 theapp theApp�e  
; �`�_�^�]�\�[�Z�Y�X�W�V�` 0 theprotocol theProtocol�_ 0 theapp theApp�^ 0 oldclipboard oldClipboard�] 0 theurl theURL�\ 0 theshorttitle theShortTitle�[ 0 thetitle theTitle�Z 0 
thecontent 
theContent�Y 0 escurl escURL�X 0 escshorttitle escShortTitle�W 0 esctitle escTitle�V 0 
esccontent 
escContent
< �U����T�S�R���Q�P�O�N��M/135�L�K
�U .JonsgClp****    ��� null
�T 
faal
�S eMdsKcmd
�R .prcskprsnull���    utxt
�Q .sysodelanull��� ��� nmbr
�P .JonspClpnull���     ****
�O 
cwin
�N 
pnam�M (0 encodeuricomponent encodeURIComponent�L 0 escapp escApp�K 0 thelink theLink�d �*j  E�O� D� ���l O���l UO�j 	O*j  E�O�j 
O*�k/�,EE�O��%�%E�O*j  E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%a %�%a %�%a %_ %E` 
 �J>�I�H
>
?�G�J 0 linkskim linkSkim�I �F
@�F 
@  �E�D�E 0 theprotocol theProtocol�D 0 theapp theApp�H  
> �C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�C 0 theprotocol theProtocol�B 0 theapp theApp�A 0 	thescheme 	theScheme�@ 0 thedoc theDoc�? 0 theshorttitle theShortTitle�> 0 thetitle theTitle�= 0 thepath thePath�< 0 theselection theSelection�; 0 
thecontent 
theContent�: 0 thepage thePage�9 0 	escscheme 	escScheme�8 0 escshorttitle escShortTitle�7 0 esctitle escTitle�6 0 escpath escPath�5 0 
esccontent 
escContent
? �M�4�3c�2n�1�0�/�.��-�,�+�����*�)
�4 
docu
�3 
pnam
�2 
ppth
�1 
sele
�0 .SKIMTextnull���     ****
�/ 
pcnt
�. 
msng
�- 
CPag
�, .SKIMIndxnull���     ****�+ (0 encodeuricomponent encodeURIComponent�* 0 escapp escApp�) 0 thelink theLink�G �� J�E�O*�k/E�O��,E�O��%�%E�O��,�%E�O��,E�O�j �,E�O��  �E�Y hO��,j E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%a %�%a %�%a %_ %E` 
 �(��'�&
A
B�%�( 0 linkbibdesk linkBibDesk�' �$
C�$ 
C  �#�"�# 0 theprotocol theProtocol�" 0 theapp theApp�&  
A �!� ����������������������! 0 theprotocol theProtocol�  0 theapp theApp� 0 templatetext templateText� 0 	thescheme 	theScheme� 0 thedoc theDoc� 0 thetitle theTitle� 0 thepath thePath� 0 theselection theSelection� 0 thepub thePub� 0 thereference theReference� 0 thecite theCite� 0 
theappname 
theAppName� 0 thekeywords theKeywords� 0 	escscheme 	escScheme� 0 esctitle escTitle� 0 esccite escCite� 0 escpath escPath� 0 escreference escReference� 0 
escappname 
escAppName�  0 thekeywordssed theKeywordsSed� 0 theproperty theProperty� 0 
thecontent 
theContent� 0 
esccontent 
escContent
B 4���
�	���������-� ��gi��uw���������
�
 
docu
�	 
pnam
� 
ppth
� 
sele
� 
cobj
� 
usTx
� 
for � 
� .BDSKttxtnull���     docu
� 
ckey
�  
keyw�� (0 encodeuricomponent encodeURIComponent
�� .sysoexecTEXT���     TEXT�� 0 escapp escApp�� 0 thelink theLink�% �� M�E�O�E�O*�k/E�O��,�%E�O��,�%E�O��,E�O��k/E�O���� E�O��,E�O�%E�O�a ,E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E^ O*�k+ E^ O*�k+ E^ Oa �%a %j E^ Oa ] %a %E^ O] a %�%E^ O*] k+ E^ O��%] %�%a %�%�%] %a %�%a %] %a %_ %E` 
  �������
D
E���� 0 	linkpages 	linkPages�� ��
F�� 
F  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
D ������������������������������ 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 
thecontent 
theContent�� 0 
thecharoff 
theCharOff�� 0 	escscheme 	escScheme�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle�� 0 escpath escPath�� 0 
esccontent 
escContent
E ������������������3579����
�� 
docu
�� 
pnam
�� 
ppth
�� 
pSel
�� 
ofse�� (0 encodeuricomponent encodeURIComponent
�� 
ctxt�� 0 escapp escApp�� 0 thelink theLink�� }� .�E�O*�k/E�O��,E�O��%�%E�O��,�%E�O��,E�O��,E�UO*�k+ 	E�O*�k+ 	E�O*�k+ 	E�O*�k+ 	E�O*��&k+ 	E�O��%�%�%�%�%�%�%�%�%�%�%E` 
! ��@����
G
H���� 0 linknumbers linkNumbers�� ��
I�� 
I  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
G ���������������������������������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 thesheet theSheet�� 0 i  �� 0 x  �� 0 thetable theTable�� 0 therange theRange�� 0 
thecontent 
theContent��  0 therangevalues theRangeValues�� 0 	escscheme 	escScheme�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle�� 0 escpath escPath�� 0 escsheet escSheet�� 0 esctable escTable�� 0 escrange escRange�� 0 
esccontent 
escContent
H "O����e��p������
J�������������������������Z\^`����
�� 
docu
�� 
pnam
�� 
ppth
�� 
NmSh
�� .corecnte****       ****
�� 
NmTb
J  
�� 
NMTs
�� 
msng
�� 
ctxt
�� 
NmCl
�� 
NMCv
�� 
ascr
�� 
txdl
�� 
TEXT�� (0 encodeuricomponent encodeURIComponent�� 0 escapp escApp�� 0 thelink theLink���� ��E�O*�k/E�O��,E�O��%�%E�O��,�%E�O� �jE�O >k*�-j kh *�/ *�-�[�,\Z�91j E�UO�j 
�E�OY h[OY��O�j  k�%E�Ok�%E�O�E�Oa E�Y j*�/ b*�k/�[�,\Z�91E�O� M�a &a %E�O��,a %E�O*�,�,E�O*�,a -a ,E�Oa _ a ,FO�a &E�Oa _ a ,FUUUUO*�k+ E�O*�k+ E�O*�k+ E^ O*�k+ E^ O*�k+ E^ O*�k+ E^ O*�k+ E^ O*�k+ E^ O��%] %] %] %] %a %] %a %�%a %] %a %_  %E` !
" ��g����
K
L���� 0 linkkeynote linkKeynote�� ��
M�� 
M  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
K �������������������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 theslide theSlide�� 0 theslideindex theSlideIndex�� 0 
thecontent 
theContent�� 0 	escscheme 	escScheme�� 0 escpath escPath�� 0 esctitle escTitle�� 0 escshorttitle escShortTitle�� 0 
esccontent 
escContent
L �v���������������������������
�� 
docu
�� 
pnam
�� 
ppth
�� 
KnCS
�� 
KSdN
�� 
titl
�� 
btxt�� (0 encodeuricomponent encodeURIComponent�� 0 escapp escApp�� 0 thelink theLink�� �� ;�E�O*�k/E�O��,E�O��%E�O��,�%E�O*�k/�,E�O��,E�O��,�%��,%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%�%a %_ %E` OP
# �� ����
N
O���� 0 linkmail linkMail�� ��
P�� 
P  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
N ��������������������~�}�|�{�� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 theselection theSelection�� 0 
themessage 
theMessage�� 0 theid theID�� "0 theshortsubject theShortSubject�� 0 
thesubject 
theSubject�� 0 
thecontent 
theContent�� 0 	thescheme 	theScheme� 0 escid escID�~ "0 escshortsubject escShortSubject�} 0 
escsubject 
escSubject�| 0 	escscheme 	escScheme�{ 0 
esccontent 
escContent
O 5�z�y�x�w�v�u)�t3�soqsu�r�q
�z 
slct
�y 
kocl
�x 
cobj
�w .corecnte****       ****
�v 
meid
�u 
subj
�t 
ctnt�s (0 encodeuricomponent encodeURIComponent�r 0 escapp escApp�q 0 thelink theLink�� �� :*�,E�O -�[��l kh ��,E�O��,E�O��%�%E�O��,E�[OY��O�E�UO*�k+ 
E�O*�k+ 
E�O*�k+ 
E�O*�k+ 
E�O*�k+ 
E�O��%�%�%�%�%�%�%�%�%�%E` 
$ �p|�o�n
Q
R�m�p "0 linkaddressbook linkAddressBook�o �l
S�l 
S  �k�j�k 0 theprotocol theProtocol�j 0 theapp theApp�n  
Q 
�i�h�g�f�e�d�c�b�a�`�i 0 theprotocol theProtocol�h 0 theapp theApp�g 0 	thescheme 	theScheme�f 0 allcontacts AllContacts�e 0 one_contact  �d 0 theid theID�c 0 thename theName�b 0 escid escID�a 0 escname escName�` 0 	escscheme 	escScheme
R ���_�^�]�\�[��Z��Y�X���W�V
�_ 
az48
�^ 
cobj
�] 
nmbr
�\ 
ID  
�[ 
pnam
�Z .miscactvnull��� ��� null
�Y .sysodlogaskr        TEXT�X (0 encodeuricomponent encodeURIComponent�W 0 escapp escApp�V 0 thelink theLink�m j� ;�E�O*�,E�O��-�,k  ��k/E�O��,E�O��,E�Y � *j O�j 
UUO*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%E�
% �U��T�S
T
U�R�U 0 
linkitunes 
linkITunes�T �Q
V�Q 
V  �P�O�P 0 theprotocol theProtocol�O 0 theapp theApp�S  
T �N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�N 0 theprotocol theProtocol�M 0 theapp theApp�L 0 	thescheme 	theScheme�K 0 theid theID�J 0 theshortname theShortName�I 0 thename theName�H 0 thetitle theTitle�G 0 thecomposer theComposer�F 0 thealbum theAlbum�E 0 	theartist 	theArtist�D 0 
thecontent 
theContent�C 0 	escscheme 	escScheme�B 0 escshortname escShortName�A 0 escname escName�@ 0 esctitle escTitle�? 0 esccomposer escComposer�> 0 escalbum escAlbum�= 0 	escartist 	escArtist�< 0 
esccontent 
escContent
U b��;�:�9�8�7�6�5Z\^`�4�����3�2
�; 
sele
�: 
cobj
�9 
pPIS
�8 
pnam
�7 
pCmp
�6 
pAlb
�5 
pArt�4 (0 encodeuricomponent encodeURIComponent�3 0 escapp escApp�2 0 thelink theLink�R �� a�E�O*�,�k/�,E�O*�,�k/�,E�O��%�%E�O*�,�k/�,E�O*�,�k/�,E�O*�,�k/�,E�O*�,�k/�,E�O�%�%�%�%�%�%�%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E^ O*�k+ E^ O*�k+ E^ O��%�%�%�%a %�%a %] %a %_ %E` 
& �1��0�/
W
X�.�1 0 linkterminal linkTerminal�0 �-
Y�- 
Y  �,�+�, 0 theprotocol theProtocol�+ 0 theapp theApp�/  
W 
�*�)�(�'�&�%�$�#�"�!�* 0 theprotocol theProtocol�) 0 theapp theApp�( 0 
thecontent 
theContent�' 0 	thescheme 	theScheme�& 0 theshortname theShortName�% 0 thename theName�$ 0 	escscheme 	escScheme�# 0 escshortname escShortName�" 0 escname escName�! 0 
esccontent 
escContent
X �� �������				��
�  
cwin
� 
tcnt
� 
pcnt
� 
pnam� (0 encodeuricomponent encodeURIComponent� 0 escerrorurl escErrorURL� 0 escapp escApp� 0 thelink theLink�. f� &*�k/ 	*�,�,E�UO�E�O*�k/�,E�O��%�%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%�%�%E�
' �	%��
Z
[�� 0 
linkfinder 
linkFinder� �
\� 
\  ��� 0 theprotocol theProtocol� 0 theapp theApp�  
Z ��������
�	��� 0 theprotocol theProtocol� 0 theapp theApp� 0 	thescheme 	theScheme� 0 theitem theItem� 0 thepath thePath� 0 theshorttitle theShortTitle� 0 thetitle theTitle�
 0 	escscheme 	escScheme�	 0 escpath escPath� 0 escshorttitle escShortTitle� 0 esctitle escTitle
[ 	U	4�����	S�	�	�	�� ��
� 
sele
� 
alis
� 
psxp
� .sysonfo4asfe        file
� 
pnam� (0 encodeuricomponent encodeURIComponent�  0 escapp escApp�� 0 thelink theLink� a� %�E�O*�,�&E�O��,E�O�j �,E�O��%�%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%E�
( ��	�����
]
^���� "0 linkapplication linkApplication�� ��
_�� 
_  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  
] �������������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme��  0 appunsupported appUnsupported�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 	escscheme 	escScheme�� 0 escpath escPath�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle
^ ����	���������	�������	���	�����


�� 
capp
�� 
TEXT
�� 
docu��  ��  
�� 
pnam
�� 
ppth�� (0 encodeuricomponent encodeURIComponent�� 0 escerrorurl escErrorURL�� "0 escerrormessage escErrorMessage�� 0 escapp escApp�� 0 thelink theLink�� �*��&/ >�E�OfE�O *�k/E�W 
X  eE�O�f  ��,E�O��%�%E�O��,E�OPY hUO*�k+ 	E�O�e  ��%�%�%�%�%�%E�Y 0*�k+ 	E�O*�k+ 	E�O*�k+ 	E�O��%�%a %�%a %�%E�ascr  ��ޭ