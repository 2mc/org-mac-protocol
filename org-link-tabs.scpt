FasdUAS 1.101.10   ��   ��    k             l      ��  ��   VP
org-link.scpt --- extract an org-protocol links from all open tabs in the front Safari window

Copyright (C) 2009, 2010 Christopher Suckling

Author: Christopher Suckling <suckling at gmail dot com>

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
2) Save as File Format: Script in  ~/Library/Scripts/

Please see org-mac-protocol.org for full installation and usage instructions
     � 	 	� 
 o r g - l i n k . s c p t   - - -   e x t r a c t   a n   o r g - p r o t o c o l   l i n k s   f r o m   a l l   o p e n   t a b s   i n   t h e   f r o n t   S a f a r i   w i n d o w 
 
 C o p y r i g h t   ( C )   2 0 0 9 ,   2 0 1 0   C h r i s t o p h e r   S u c k l i n g 
 
 A u t h o r :   C h r i s t o p h e r   S u c k l i n g   < s u c k l i n g   a t   g m a i l   d o t   c o m > 
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
 2 )   S a v e   a s   F i l e   F o r m a t :   S c r i p t   i n     ~ / L i b r a r y / S c r i p t s / 
 
 P l e a s e   s e e   o r g - m a c - p r o t o c o l . o r g   f o r   f u l l   i n s t a l l a t i o n   a n d   u s a g e   i n s t r u c t i o n s 
   
  
 l     ��������  ��  ��        l     ����  r         n        1    ��
�� 
txdl  1     ��
�� 
ascr  o      ���� 0 astid ASTID��  ��        l    ����  r        J    	    ��  m       �    :��    1   	 ��
�� 
txdl��  ��        l    ����  r         c     ! " ! l    #���� # I   �� $��
�� .earsffdralis        afdr $  f    ��  ��  ��   " m    ��
�� 
ctxt   o      ���� 0 mypath myPath��  ��     % & % l   ) '���� ' r    ) ( ) ( c    ' * + * b    % , - , l   # .���� . n    # / 0 / 7  #�� 1 2
�� 
citm 1 m    ����  2 m     "������ 0 o    ���� 0 mypath myPath��  ��   - m   # $ 3 3 � 4 4  o r g Q S L i b : + m   % &��
�� 
ctxt ) o      ���� 0 orgqslib orgQSLib��  ��   &  5 6 5 l  * / 7���� 7 r   * / 8 9 8 o   * +���� 0 astid ASTID 9 n      : ; : 1   , .��
�� 
txdl ; 1   + ,��
�� 
ascr��  ��   6  < = < l     ��������  ��  ��   =  > ? > l  0 > @���� @ r   0 > A B A l  0 < C���� C I  0 <�� D��
�� .sysoloadscpt        file D 4   0 8�� E
�� 
file E l  2 7 F���� F b   2 7 G H G l  2 5 I���� I c   2 5 J K J o   2 3���� 0 orgqslib orgQSLib K m   3 4��
�� 
ctxt��  ��   H m   5 6 L L � M M & g e t E m a c s C l i e n t . s c p t��  ��  ��  ��  ��   B o      ���� 0 getemacslib getEmacsLib��  ��   ?  N O N l  ? O P���� P r   ? O Q R Q l  ? K S���� S I  ? K�� T��
�� .sysoloadscpt        file T 4   ? G�� U
�� 
file U l  A F V���� V b   A F W X W l  A D Y���� Y c   A D Z [ Z o   A B���� 0 orgqslib orgQSLib [ m   B C��
�� 
ctxt��  ��   X m   D E \ \ � ] ] ( g e t I t e m M e t a d a t a . s c p t��  ��  ��  ��  ��   R o      ����  0 getitemmetalib getItemMetaLib��  ��   O  ^ _ ^ p       ` ` ������ 0 	escapelib 	escapeLib��   _  a b a l  P [ c���� c r   P [ d e d l  P W f���� f b   P W g h g l  P S i���� i c   P S j k j o   P Q���� 0 orgqslib orgQSLib k m   Q R��
�� 
ctxt��  ��   h m   S V l l � m m  e s c a p e . r b��  ��   e o      ���� 0 	escapelib 	escapeLib��  ��   b  n o n l  \ c p���� p r   \ c q r q m   \ _ s s � t t 6 o r g - p r o t o c o l : / s a f a r i - t a b s : / r o      ���� 0 theprotocol theProtocol��  ��   o  u v u l     ��������  ��  ��   v  w x w l  d k y���� y r   d k z { z m   d g | | � } }  S a f a r i - T a b s { o      ���� 0 theapp theApp��  ��   x  ~  ~ l     ��������  ��  ��     � � � l  l � ����� � r   l � � � � b   l � � � � b   l u � � � n  l q � � � I   m q��������  0 getemacsclient getEmacsClient��  ��   � o   l m���� 0 getemacslib getEmacsLib � m   q t � � � � �    � n  u � � � � I   x ��� ����� "0 getitemmetadata getItemMetadata �  � � � o   x {���� 0 theprotocol theProtocol �  ��� � o   { ~���� 0 theapp theApp��  ��   � o   u x����  0 getitemmetalib getItemMetaLib � o      ���� 0 	thescript 	theScript��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 	thescript 	theScript��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �   � �  % � �  5 � �  > � �  N � �  a � �  n � �  w � �  � � �  �����  ��  ��   �   � ������ ���������� 3��~ L�}�| \�{ l�z s�y |�x�w ��v�u�t
�� 
ascr
�� 
txdl�� 0 astid ASTID
�� .earsffdralis        afdr
�� 
ctxt�� 0 mypath myPath
�� 
citm����� 0 orgqslib orgQSLib
�~ 
file
�} .sysoloadscpt        file�| 0 getemacslib getEmacsLib�{  0 getitemmetalib getItemMetaLib�z 0 	escapelib 	escapeLib�y 0 theprotocol theProtocol�x 0 theapp theApp�w  0 getemacsclient getEmacsClient�v "0 getitemmetadata getItemMetadata�u 0 	thescript 	theScript
�t .sysoexecTEXT���     TEXT�� ���,E�O�kv*�,FO)j �&E�O�[�\[Zk\Z�2�%�&E�O���,FO*���&�%/j E�O*���&�%/j E` O��&a %E` Oa E` Oa E` O�j+ a %_ _ _ l+ %E` O_ j  ascr  ��ޭ