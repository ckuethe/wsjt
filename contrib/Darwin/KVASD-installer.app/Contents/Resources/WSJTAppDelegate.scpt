FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 #   WSJTAppDelegate.applescript    
 �   :     W S J T A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��       KVASD-installer     �   "     K V A S D - i n s t a l l e r      l     ��������  ��  ��        l     ��  ��    V P    This script is a drag and drop target that expects a WSJT-X app bundle path.     �   �         T h i s   s c r i p t   i s   a   d r a g   a n d   d r o p   t a r g e t   t h a t   e x p e c t s   a   W S J T - X   a p p   b u n d l e   p a t h .      l     ��  ��    U O    It can also be opened with a file list or by dropping a suitable WSJT-X app     �   �         I t   c a n   a l s o   b e   o p e n e d   w i t h   a   f i l e   l i s t   o r   b y   d r o p p i n g   a   s u i t a b l e   W S J T - X   a p p      l     ��   ��    Q K    bundle onto it. Alternatively a target WSJT-X application bundle may be      � ! ! �         b u n d l e   o n t o   i t .   A l t e r n a t i v e l y   a   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e   m a y   b e   " # " l     �� $ %��   $ > 8    selected by clicking the "Choose target ..." button.    % � & & p         s e l e c t e d   b y   c l i c k i n g   t h e   " C h o o s e   t a r g e t   . . . "   b u t t o n . #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + U O    It fetches the KVASD EULA text and displays it in a dialog which the reader    , � - - �         I t   f e t c h e s   t h e   K V A S D   E U L A   t e x t   a n d   d i s p l a y s   i t   i n   a   d i a l o g   w h i c h   t h e   r e a d e r *  . / . l     �� 0 1��   0 U O    must at least scroll to the end before clicking the Agree button which then    1 � 2 2 �         m u s t   a t   l e a s t   s c r o l l   t o   t h e   e n d   b e f o r e   c l i c k i n g   t h e   A g r e e   b u t t o n   w h i c h   t h e n /  3 4 3 l     �� 5 6��   5 V P    downloads the appropriate KVASD executable. The MD5 hash checksum is checked    6 � 7 7 �         d o w n l o a d s   t h e   a p p r o p r i a t e   K V A S D   e x e c u t a b l e .   T h e   M D 5   h a s h   c h e c k s u m   i s   c h e c k e d 4  8 9 8 l     �� : ;��   : "     on the KVASD executable.    ; � < < 8         o n   t h e   K V A S D   e x e c u t a b l e . 9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A T N    Once the EULA has been accepted the "Install" button is enabled to install    B � C C �         O n c e   t h e   E U L A   h a s   b e e n   a c c e p t e d   t h e   " I n s t a l l "   b u t t o n   i s   e n a b l e d   t o   i n s t a l l @  D E D l     �� F G��   F S M    the KVASD executable into the target WSJT-X application bundle(s) and the    G � H H �         t h e   K V A S D   e x e c u t a b l e   i n t o   t h e   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e ( s )   a n d   t h e E  I J I l     �� K L��   K R L    RPATHs are modified to reference the libgcc support libraries inside the    L � M M �         R P A T H s   a r e   m o d i f i e d   t o   r e f e r e n c e   t h e   l i b g c c   s u p p o r t   l i b r a r i e s   i n s i d e   t h e J  N O N l     �� P Q��   P $     WSJT-X application bundle.    Q � R R <         W S J T - X   a p p l i c a t i o n   b u n d l e . O  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W 9 3  Created by Bill Somerville (G4WJS) on 12/11/2014.    X � Y Y f     C r e a t e d   b y   B i l l   S o m e r v i l l e   ( G 4 W J S )   o n   1 2 / 1 1 / 2 0 1 4 . V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ Y S  The author of this work hereby waives all claim of copyright (economic and moral)    _ � ` ` �     T h e   a u t h o r   o f   t h i s   w o r k   h e r e b y   w a i v e s   a l l   c l a i m   o f   c o p y r i g h t   ( e c o n o m i c   a n d   m o r a l ) ]  a b a l     �� c d��   c ^ X  in this work and immediately places it in the public domain; it may be used, distorted    d � e e �     i n   t h i s   w o r k   a n d   i m m e d i a t e l y   p l a c e s   i t   i n   t h e   p u b l i c   d o m a i n ;   i t   m a y   b e   u s e d ,   d i s t o r t e d b  f g f l     �� h i��   h c ]  or destroyed in any manner whatsoever without further attribution or notice to the creator.    i � j j �     o r   d e s t r o y e d   i n   a n y   m a n n e r   w h a t s o e v e r   w i t h o u t   f u r t h e r   a t t r i b u t i o n   o r   n o t i c e   t o   t h e   c r e a t o r . g  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q ( " curl wraps cURL to download files    r � s s D   c u r l   w r a p s   c U R L   t o   d o w n l o a d   f i l e s p  t u t h     �� v�� 0 curl   v k       w w  x y x i      z { z I      �� |���� 0 download   |  } ~ } o      ���� 0 url   ~   �  o      ���� 0 filename fileName �  ��� � o      ���� 0 destination  ��  ��   { k     / � �  � � � r      � � � b      � � � o     ���� 0 destination   � o    ���� 0 filename fileName � o      ���� 0 file   �  � � � Q    * � � � � I  	 �� ���
�� .sysoexecTEXT���     TEXT � b   	  � � � b   	  � � � b   	  � � � b   	  � � � m   	 
 � � � � � P c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   - - o u t p u t   � o   
 ���� 0 file   � m     � � � � �    � o    ���� 0 url   � o    ���� 0 filename fileName��   � R      ������
�� .ascrerr ****      � ****��  ��   � R    *�� ���
�� .ascrerr ****      � **** � b     ) � � � b     ' � � � b     % � � � b     # � � � m     ! � � � � � < A n   e r r o r   o c c u r r e d   d o w n l o a d i n g : � o   ! "��
�� 
ret  � o   # $��
�� 
ret  � o   % &���� 0 url   � o   ' (���� 0 filename fileName��   �  ��� � L   + / � � c   + . � � � o   + ,���� 0 file   � m   , -��
�� 
psxf��   y  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 0 downloadmd5 downloadMD5 �  � � � o      ���� 0 url   �  ��� � o      ���� 0 filename fileName��  ��   � k     ) � �  � � � r      � � � m      � � � � �  . m d 5 � o      ���� 0 md5ext md5Ext �  ��� � Q    ) � � � � L     � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � b    
 � � � m     � � � � � > c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   � o    	���� 0 url   � o   
 ���� 0 filename fileName � l 
   ����� � o    ���� 0 md5ext md5Ext��  ��   � m     � � � � � �   |   a w k   ' { m a t c h ( $ 0 , " [ [ : x d i g i t : ] ] { 3 2 } " ) ;   p r i n t   s u b s t r ( $ 0 , R S T A R T , R L E N G T H ) } '��   � R      ������
�� .ascrerr ****      � ****��  ��   � R    )�� ���
�� .ascrerr ****      � **** � b    ( � � � b    & � � � b    $ � � � b    " � � � m      � � � � � : A n   e r r o r   o c c u r r e d   d o w n l o a d i n g � o     !��
�� 
ret  � o   " #��
�� 
ret  � o   $ %���� 0 filename fileName � o   & '���� 0 md5ext md5Ext��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ; kvasd looks after fetching kvasd files from the web source    � � � � v   k v a s d   l o o k s   a f t e r   f e t c h i n g   k v a s d   f i l e s   f r o m   t h e   w e b   s o u r c e �  � � � h    �� ��� 	0 kvasd   � k       � �  � � � j     �� ��� 0 
serverpath 
serverPath � m      � � � � � n h t t p s : / / s v n . c o d e . s f . n e t / p / w s j t / w s j t / t r u n k / k v a s d - b i n a r y / �  � � � j    	�� ��� 0 destination   � I   �� ���
�� .fndrgstl****    ��� **** � m     � � � � �  T M P D I R��   �  � � � j   
 �� ��� 0 
targetname 
targetName � m   
  � � � � � 
 k v a s d �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 	fetcheula 	fetchEULA��  ��   � L      � � n     � � � I    �� ����� 0 download   �  � � � o    
���� 0 
serverpath 
serverPath �  �  � b   
  o   
 ���� 0 
targetname 
targetName m     �  _ e u l a . t x t  �� o    ���� 0 destination  ��  ��   � o     ���� 0 curl   �  l     ��������  ��  ��   	 i    

 I      �������� 0 fetchbinary fetchBinary��  ��   k     i  r      b      o     ���� 0 
serverpath 
serverPath I   ��~
� .sysoexecTEXT���     TEXT b     m     � 4 e c h o   ` u n a m e   - s ` - ` u n a m e   - m ` m     �  /�~   o      �}�} 0 url    r    ! n    I    �| �{�| 0 downloadmd5 downloadMD5  !"! o    �z�z 0 url  " #�y# o    �x�x 0 
targetname 
targetName�y  �{   o    �w�w 0 curl   o      �v�v 0 md5sum md5Sum $%$ r   " 8&'& n  " 6()( I   ' 6�u*�t�u 0 download  * +,+ o   ' (�s�s 0 url  , -.- o   ( -�r�r 0 
targetname 
targetName. /�q/ o   - 2�p�p 0 destination  �q  �t  ) o   " '�o�o 0 curl  ' o      �n�n 0 file  % 010 r   9 F232 I  9 D�m4�l
�m .sysoexecTEXT���     TEXT4 b   9 @565 b   9 >787 m   9 :99 �::  m d 5  8 l  : =;�k�j; n   : =<=< 1   ; =�i
�i 
psxp= o   : ;�h�h 0 file  �k  �j  6 m   > ?>> �??     |   c u t   - d '   '   - f 4�l  3 o      �g�g 0 md5calc md5Calc1 @�f@ Z   G iAB�e�dA >   G JCDC o   G H�c�c 0 md5calc md5CalcD o   H I�b�b 0 md5sum md5SumB R   M e�aEF
�a .ascrerr ****      � ****E b   Q dGHG b   Q bIJI b   Q `KLK b   Q ^MNM b   Q \OPO b   Q ZQRQ b   Q XSTS b   Q VUVU b   Q TWXW m   Q RYY �ZZ J K V A S D   d o w n l o a d   c o r r u p t   M D 5   h a s h   c h e c kX o   R S�`
�` 
ret V l 
 T U[�_�^[ o   T U�]
�] 
ret �_  �^  T m   V W\\ �]]    e x p e c t e d   [R o   X Y�\�\ 0 md5sum md5SumP m   Z [^^ �__  ]N l 
 \ ]`�[�Z` o   \ ]�Y
�Y 
ret �[  �Z  L m   ^ _aa �bb        a c t u a l   [J o   ` a�X�X 0 md5calc md5CalcH l 	 b cc�W�Vc m   b cdd �ee  ]�W  �V  F �Uf�T
�U 
errnf m   O P�S�S��T  �e  �d  �f  	 ghg l     �R�Q�P�R  �Q  �P  h iji i    klk I      �O�N�M�O 0 savelicense saveLicense�N  �M  l k     *mm non r     pqp l 	   r�L�Kr I    �J�Is
�J .sysostflalis    ��� null�I  s �Htu
�H 
prmpt l 	  v�G�Fv m    ww �xx B S p e c i f y   f o l d e r   t o   s a v e   l i c e n s e   t o�G  �F  u �Ey�D
�E 
dflcy l   	z�C�Bz I   	�A{�@
�A .earsffdralis        afdr{ m    �?
�? afdrdocs�@  �C  �B  �D  �L  �K  q o      �>�> 0 dest  o |�=| O   *}~} l 	  )�<�; I   )�:��
�: .coreclon****      � ****� c    #��� l   !��9�8� b    !��� b    ��� o    �7�7 0 destination  � o    �6�6 0 
targetname 
targetName� m     �� ���  _ e u l a . t x t�9  �8  � m   ! "�5
�5 
psxf� �4��3
�4 
insh� o   $ %�2�2 0 dest  �3  �<  �;  ~ m    ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �=  j ��� l     �1�0�/�1  �0  �/  � ��� i    ��� I      �.�-�,�. 0 printlicense printLicense�-  �,  � O    ��� l 	  ��+�*� I   �)��(
�) .aevtpdocnull���     obj � c    ��� l   ��'�&� b    ��� b    ��� o    	�%�% 0 destination  � o   	 �$�$ 0 
targetname 
targetName� m    �� ���  _ e u l a . t x t�'  �&  � m    �#
�# 
psxf�(  �+  �*  � m     ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  � ��� l     �"�!� �"  �!  �   � ��� i     ��� I      ���� 0 cleanup cleanUp�  �  � O     *��� k    )�� ��� I   ���
� .coredeloobj        obj � c    ��� l   ���� b    ��� b    ��� o    	�� 0 destination  � o   	 �� 0 
targetname 
targetName� m    �� ���  _ e u l a . t x t�  �  � m    �
� 
psxf�  � ��� I   )���
� .coredeloobj        obj � c    %��� l   #���� b    #��� o    �� 0 destination  � o    "�� 0 
targetname 
targetName�  �  � m   # $�
� 
psxf�  �  � m     ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �   � ��� l     ���
�  �  �
  � ��� h    �	��	 "0 wsjtappdelegate WSJTAppDelegate� k      �� ��� j     ��
� 
pare� 4     ��
� 
pcls� m    �� ���  N S O b j e c t� ��� l     ����  �  �  � ��� j   	 ��� 0 licenceagreed licenceAgreed� m   	 
�
� boovfals� ��� l     �� ���  �   ��  � ��� j    ����� 0 
mainwindow 
mainWindow� m    ��
�� 
msng� ��� j    ����� 0 eulatextview eulaTextView� m    ��
�� 
msng� ��� j    ����� 0 progressbar progressBar� m    ��
�� 
msng� ��� j    ����� 0 
savebutton 
saveButton� m    ��
�� 
msng� ��� j    ����� 0 printbutton printButton� m    ��
�� 
msng� ��� j    ����� 0 agreecheckbox agreeCheckBox� m    ��
�� 
msng� ��� j     ����� (0 choosetargetbutton chooseTargetButton� m    ��
�� 
msng� ��� j   ! #����� 0 installbutton installButton� m   ! "��
�� 
msng� ��� l     ��������  ��  ��  � ��� j   $ '����� $0 bundlestoprocess bundlesToProcess� J   $ &����  � ��� l     ��������  ��  ��  � ��� p   ( (�� ������ 60 defaultnotificationcentre defaultNotificationCentre��  � ��� l     ��������  ��  ��  � ��� i   ( +��� I      ������� 	0 split  � ��� o      ���� 0 thetext theText� ���� o      ���� 0 thedelimiters theDelimiters��  ��  � k     �� ��� r     � � n     1    ��
�� 
txdl 1     ��
�� 
ascr  o      ���� 0 olddelimiters oldDelimiters�  r     o    ���� 0 thedelimiters theDelimiters n      1    
��
�� 
txdl 1    ��
�� 
ascr 	
	 r     l   ���� n     2   ��
�� 
citm o    ���� 0 thetext theText��  ��   o      ���� 0 	theresult 	theResult
  r     o    ���� 0 olddelimiters oldDelimiters n      1    ��
�� 
txdl 1    ��
�� 
ascr �� L     o    ���� 0 	theresult 	theResult��  �  l     ��������  ��  ��    l     ����     do the install    �    d o   t h e   i n s t a l l   i   , /!"! I      �������� 0 process  ��  ��  " X    �#��$# Q   �%&'% k   }(( )*) r    !+,+ n   -.- I    ��/���� "0 bundlewithpath_ bundleWithPath_/ 0��0 o    ���� 0 
bundlepath 
bundlePath��  ��  . n   121 o    ���� 0 nsbundle NSBundle2 m    ��
�� misccura, o      ���� 0 wsjtxbundle wsjtxBundle* 343 Z   " H56����5 G   " 3787 =   " %9:9 o   " #���� 0 wsjtxbundle wsjtxBundle: m   # $��
�� 
msng8 >   ( 1;<; c   ( /=>= n  ( -?@? I   ) -�������� $0 bundleidentifier bundleIdentifier��  ��  @ o   ( )���� 0 wsjtxbundle wsjtxBundle> m   - .��
�� 
ctxt< m   / 0AA �BB  o r g . k 1 j t . w s j t x6 R   6 D��CD
�� .ascrerr ****      � ****C c   : CEFE b   : AGHG b   : ?IJI b   : =KLK m   : ;MM �NN \ N o t   a n   a p p r o p r i a t e   W S J T - X   a p p l i c a t i o n   b u n d l e :  L o   ; <��
�� 
ret J l 
 = >O����O o   = >��
�� 
ret ��  ��  H o   ? @���� 0 
bundlepath 
bundlePathF m   A B��
�� 
ctxtD ��P��
�� 
errnP m   8 9�������  ��  ��  4 QRQ r   I RSTS c   I PUVU n  I NWXW I   J N�������� 0 
bundlepath 
bundlePath��  ��  X o   I J���� 0 wsjtxbundle wsjtxBundleV m   N O��
�� 
ctxtT o      ���� 0 installroot installRootR YZY I  S u��[\
�� .sysodlogaskr        TEXT[ b   S \]^] b   S Z_`_ b   S Xaba m   S Vcc �dd H I n s t a l l   K V A S D   i n t o   A p l i c a t i o n   B u n d l eb o   V W��
�� 
ret ` l 
 X Ye����e o   X Y��
�� 
ret ��  ��  ^ l 
 Z [f����f o   Z [���� 0 installroot installRoot��  ��  \ ��gh
�� 
btnsg J   _ gii jkj m   _ bll �mm  O kk n��n m   b eoo �pp  S k i p��  h ��q��
�� 
dfltq J   j orr s��s m   j mtt �uu  O k��  ��  Z v��v Z   v}wx����w =   v �yzy n   v }{|{ 1   y }��
�� 
bhit| 1   v y��
�� 
rsltz m   } �}} �~~  O kx Q   �y�� k   �[�� ��� r   � ���� b   � ���� b   � ���� o   � ����� 0 installroot installRoot� m   � ��� ���   / C o n t e n t s / M a c O S /� n  � ���� o   � ����� 0 
targetname 
targetName� o   � ����� 	0 kvasd  � o      ���� 
0 target  � ��� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  c p  � n  � ���� o   � ����� 0 destination  � o   � ����� 	0 kvasd  � n  � ���� o   � ����� 0 
targetname 
targetName� o   � ����� 	0 kvasd  � 1   � ���
�� 
spac� o   � ����� 
0 target  ��  � ��� X   �)����� Z   �$������� F   � ���� E   � ���� o   � ����� 0 theline theLine� m   � ��� ���  . d y l i b� H   � ��� E   � ���� o   � ����� 0 theline theLine� m   � ��� ���  l i b S y s t e m� k   � �� ��� r   � ���� n   � ���� 4 � ����
�� 
cobj� m   � ����� � I   � ����~� 	0 split  � ��� o   � ��}�} 0 theline theLine� ��|� J   � ��� ��� 1   � ��{
�{ 
tab � ��z� 1   � ��y
�y 
spac�z  �|  �~  � o      �x�x 0 thedylib theDylib� ��w� I  � �v��u
�v .sysoexecTEXT���     TEXT� b   ���� b   ���� b   ���� b   ���� b   ���� m   ��� ��� 4 i n s t a l l _ n a m e _ t o o l   - c h a n g e  � o  �t�t 0 thedylib theDylib� m  �� ��� $   @ e x e c u t a b l e _ p a t h /� n  ��� 4 �s�
�s 
cobj� m  �r�r��� I  �q��p�q 	0 split  � ��� o  	�o�o 0 thedylib theDylib� ��n� J  	�� ��m� m  	�� ���  /�m  �n  �p  � 1  �l
�l 
spac� o  �k�k 
0 target  �u  �w  ��  ��  �� 0 theline theLine� n   � ���� 2  � ��j
�j 
cpar� l  � ���i�h� I  � ��g��f
�g .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ���  o t o o l   - L  � o   � ��e�e 
0 target  �f  �i  �h  � ��� I *7�d��c
�d .ascrcmnt****      � ****� I *3�b��a
�b .sysoexecTEXT���     TEXT� b  */��� m  *-�� ���  c h m o d   + x  � o  -.�`�` 
0 target  �a  �c  � ��_� I 8[�^��
�^ .sysodisAaleR        TEXT� b  8A��� b  8?��� b  8=��� m  8;�� ��� P K V A S D   i n s t a l l e d   i n t o   a p p l i c a t i o n   b u n d l e :� o  ;<�]
�] 
ret � o  =>�\
�\ 
ret � l 
?@��[�Z� o  ?@�Y�Y 0 installroot installRoot�[  �Z  � �X��
�X 
btns� J  DI�� ��W� m  DG�� ���  O k�W  � �V��
�V 
dflt� l 	LO �U�T  m  LO �  O k�U  �T  � �S�R
�S 
givu m  RU�Q�Q �R  �_  � R      �P�O
�P .ascrerr ****      � **** o      �N�N 0 errorstring errorString�O  � R  cy�M�L
�M .ascrerr ****      � **** b  ex b  ev	 b  er

 b  ep b  en b  el b  ej m  eh � Z F a i l e d   t o   m o v e   K V A S D   i n t o   a p p l i c a t i o n   b u n d l e : o  hi�K
�K 
ret  o  jk�J
�J 
ret  l 
lm�I�H o  lm�G�G 0 installroot installRoot�I  �H   o  no�F
�F 
ret  o  pq�E
�E 
ret 	 m  ru �  E r r o r :   o  vw�D�D 0 errorstring errorString�L  ��  ��  ��  & R      �C�B
�C .ascrerr ****      � **** o      �A�A 0 errorstring errorString�B  ' I ���@
�@ .sysodisAaleR        TEXT o  ���?�? 0 errorstring errorString �>
�> 
as A m  ���=
�= EAlTwarN �<
�< 
btns J  ��   !�;! m  ��"" �##  O k�;   �:$�9
�: 
dflt$ m  ��%% �&&  O k�9  �� 0 
bundlepath 
bundlePath$ o    �8�8 $0 bundlestoprocess bundlesToProcess  '(' l     �7�6�5�7  �6  �5  ( )*) l     �4+,�4  + H B execute around handler to display a progress bar during an action   , �-- �   e x e c u t e   a r o u n d   h a n d l e r   t o   d i s p l a y   a   p r o g r e s s   b a r   d u r i n g   a n   a c t i o n* ./. i   0 3010 I      �32�2�3  0 progressaction progressAction2 3�13 o      �0�0 
0 action  �1  �2  1 k      44 565 n    
787 I    
�/9�.�/ "0 startanimation_ startAnimation_9 :�-:  f    �-  �.  8 o     �,�, 0 progressbar progressBar6 ;<; O   =>= I   �+�*�)
�+ .aevtoappnull  �   � ****�*  �)  > o    �(�( 
0 action  < ?�'? n    @A@ I     �&B�%�&  0 stopanimation_ stopAnimation_B C�$C  f    �$  �%  A o    �#�# 0 progressbar progressBar�'  / DED l     �"�!� �"  �!  �   E FGF l     ����  �  �  G HIH l     �JK�  J %  NSApplicationDelegate Protocol   K �LL >   N S A p p l i c a t i o n D e l e g a t e   P r o t o c o lI MNM l     ����  �  �  N OPO i   4 7QRQ I      �S�� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_S T�T o      �� 0 anotification aNotification�  �  R Q     }UVWU k    oXX YZY n   [\[ I    �]�� 40 registerfordraggedtypes_ registerForDraggedTypes_] ^�^ J    __ `�` m    	aa �bb  p u b l i c . f i l e - u r l�  �  �  \ o    �� 0 
mainwindow 
mainWindowZ cdc l   ����  �  �  d efe r    ghg n   iji I    ���
� 0 defaultcenter defaultCenter�  �
  j n   klk o    �	�	 ,0 nsnotificationcenter NSNotificationCenterl m    �
� misccurah o      �� 60 defaultnotificationcentre defaultNotificationCentref mnm n   $opo I    $�q�� 0 seteditable_ setEditable_q r�r m     �
� boovfals�  �  p o    �� 0 eulatextview eulaTextViewn sts l  % %�� ���  �   ��  t uvu h   % ,��w�� 0 downloadeula downloadEulaw n    xyx I    ��z���� 0 
setstring_ 
setString_z {��{ I   ��|��
�� .rdwrread****        ****| n   }~} I   
 �������� 0 	fetcheula 	fetchEULA��  ��  ~ o    
���� 	0 kvasd  ��  ��  ��  y o     ���� 0 eulatextview eulaTextViewv � n  - 3��� I   . 3�������  0 progressaction progressAction� ���� o   . /���� 0 downloadeula downloadEula��  ��  �  f   - .� ��� n  4 >��� I   9 >������� 0 setenabled_ setEnabled_� ���� m   9 :��
�� boovtrue��  ��  � o   4 9���� 0 
savebutton 
saveButton� ��� n  ? I��� I   D I������� 0 setenabled_ setEnabled_� ���� m   D E��
�� boovtrue��  ��  � o   ? D���� 0 printbutton printButton� ��� l  J J��������  ��  ��  � ��� l  J J������  � < 6 add observers for view port changes on EULA text view   � ��� l   a d d   o b s e r v e r s   f o r   v i e w   p o r t   c h a n g e s   o n   E U L A   t e x t   v i e w� ��� r   J O��� n  J M��� o   K M���� F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotification� m   J K��
�� misccura� o      ���� (0 boundschangenotice boundsChangeNotice� ��� r   P U��� n  P S��� o   Q S���� D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotification� m   P Q��
�� misccura� o      ���� &0 framechangenotice frameChangeNotice� ��� n  V a��� I   W a������� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_� ���  f   W X� ��� m   X Y�� ���  v i e w C h a n g e d :� ��� o   Y Z���� (0 boundschangenotice boundsChangeNotice� ���� m   Z [��
�� 
msng��  ��  � o   V W���� 60 defaultnotificationcentre defaultNotificationCentre� ���� n  b o��� I   c o������� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_� ���  f   c d� ��� m   d g�� ���  v i e w C h a n g e d :� ��� o   g h���� &0 framechangenotice frameChangeNotice� ���� m   h i��
�� 
msng��  ��  � o   b c���� 60 defaultnotificationcentre defaultNotificationCentre��  V R      �����
�� .ascrerr ****      � ****� o      ���� 0 errorstring errorString��  W I   w }������� 	0 abort  � ���� o   x y���� 0 errorstring errorString��  ��  P ��� l     ��������  ��  ��  � ��� i   8 ;��� I      ������� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_� ���� o      ���� 
0 sender  ��  ��  � L     �� m     ��
�� boovtrue� ��� l     ��������  ��  ��  � ��� i   < ?��� I      ������� 60 applicationwillterminate_ applicationWillTerminate_� ���� o      ���� 
0 sender  ��  ��  � k     �� ��� n    ��� I    ������� "0 removeobserver_ removeObserver_� ����  f    ��  ��  � o     ���� 60 defaultnotificationcentre defaultNotificationCentre� ���� n   ��� I    �������� 0 cleanup cleanUp��  ��  � o    ���� 	0 kvasd  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � N H NSDraggingDestination (NSWindow Delgate) Protocol (Not working on 10.7)   � ��� �   N S D r a g g i n g D e s t i n a t i o n   ( N S W i n d o w   D e l g a t e )   P r o t o c o l   ( N o t   w o r k i n g   o n   1 0 . 7 )� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � ' ! Accept Generic drag&drop sources   � ��� B   A c c e p t   G e n e r i c   d r a g & d r o p   s o u r c e s� ��� l     ������  � %     on draggingEntered_(sender)   � ��� >         o n   d r a g g i n g E n t e r e d _ ( s e n d e r )� ��� l     ������  � A ;        return current application's NSDragOperationGeneric   � ��� v                 r e t u r n   c u r r e n t   a p p l i c a t i o n ' s   N S D r a g O p e r a t i o n G e n e r i c� ��� l     ������  �      end draggingEntered_   � ��� 0         e n d   d r a g g i n g E n t e r e d _� ��� l     ��������  ��  ��  �    l     ����   #  Process a drop on our window    � :   P r o c e s s   a   d r o p   o n   o u r   w i n d o w  l     ����   * $    on performDragOperation_(sender)    �		 H         o n   p e r f o r m D r a g O p e r a t i o n _ ( s e n d e r ) 

 l     ����            try    �                  t r y  l     ����   9 3            set pb to sender's draggingPasteboard()    � f                         s e t   p b   t o   s e n d e r ' s   d r a g g i n g P a s t e b o a r d ( )  l     ����   ] W            if pb's types() as list contains current application's NSURLPboardType then    � �                         i f   p b ' s   t y p e s ( )   a s   l i s t   c o n t a i n s   c u r r e n t   a p p l i c a t i o n ' s   N S U R L P b o a r d T y p e   t h e n  l     ����   w q                set options to {NSPasteboardURLReadingContentsConformToTypesKey:{"com.apple.application-bundle"}}    � �                                 s e t   o p t i o n s   t o   { N S P a s t e b o a r d U R L R e a d i n g C o n t e n t s C o n f o r m T o T y p e s K e y : { " c o m . a p p l e . a p p l i c a t i o n - b u n d l e " } }  l     �� !��    s m                repeat with u in pb's readObjectsForClasses_options_({current application's |NSURL|},options)   ! �"" �                                 r e p e a t   w i t h   u   i n   p b ' s   r e a d O b j e c t s F o r C l a s s e s _ o p t i o n s _ ( { c u r r e n t   a p p l i c a t i o n ' s   | N S U R L | } , o p t i o n s ) #$# l     ��%&��  % D >                    copy u's |path| to end of bundlesToProcess   & �'' |                                         c o p y   u ' s   | p a t h |   t o   e n d   o f   b u n d l e s T o P r o c e s s$ ()( l     ��*+��  *                   end repeat   + �,, 4                                 e n d   r e p e a t) -.- l     ��/0��  / E ?                if bundlesToProcess � {} and licenceAgreed then   0 �11 ~                                 i f   b u n d l e s T o P r o c e s s  "`   { }   a n d   l i c e n c e A g r e e d   t h e n. 232 l     ��45��  4 ; 5                    installButton's setEnabled_(true)   5 �66 j                                         i n s t a l l B u t t o n ' s   s e t E n a b l e d _ ( t r u e )3 787 l     ��9:��  9                  end if   : �;; ,                                 e n d   i f8 <=< l     ��>?��  > !                 return true   ? �@@ 6                                 r e t u r n   t r u e= ABA l     ��CD��  C              end if   D �EE $                         e n d   i fB FGF l     ��HI��  H "         on error errorString   I �JJ 8                 o n   e r r o r   e r r o r S t r i n gG KLK l     ��MN��  M $             abort(errorString)   N �OO <                         a b o r t ( e r r o r S t r i n g )L PQP l     ��RS��  R          end try   S �TT                  e n d   t r yQ UVU l     ��WX��  W          return false   X �YY (                 r e t u r n   f a l s eV Z[Z l     ��\]��  \ #     end performDragOperation_   ] �^^ :         e n d   p e r f o r m D r a g O p e r a t i o n _[ _`_ l     ��������  ��  ��  ` aba l     ��������  ��  ��  b cdc l     ��ef��  e   UI handlers   f �gg    U I   h a n d l e r sd hih l     �������  ��  �  i jkj l     �~�}�|�~  �}  �|  k lml l     �{no�{  n  
 Save EULA   o �pp    S a v e   E U L Am qrq i   @ Csts I      �zu�y�z 0 dosave_ doSave_u v�xv o      �w�w 
0 sender  �x  �y  t Q     $wxyw n   z{z I    �v�u�t�v 0 savelicense saveLicense�u  �t  { o    �s�s 	0 kvasd  x R      �r|}
�r .ascrerr ****      � ****| o      �q�q 0 errorstring errorString} �p~�o
�p 
errn~ o      �n�n 0 errornumber errorNumber�o  y Z    $��m� =   ��� o    �l�l 0 errornumber errorNumber� m    �k�k��� l   �j���j  �   just ignore Cancel   � ��� &   j u s t   i g n o r e   C a n c e l�m  � I    $�i��h�i 	0 abort  � ��g� o     �f�f 0 errorstring errorString�g  �h  r ��� l     �e�d�c�e  �d  �c  � ��� l     �b���b  �  
 Save EULA   � ���    S a v e   E U L A� ��� i   D G��� I      �a��`�a 0 doprint_ doPrint_� ��_� o      �^�^ 
0 sender  �_  �`  � Q     $���� n   ��� I    �]�\�[�] 0 printlicense printLicense�\  �[  � o    �Z�Z 	0 kvasd  � R      �Y��
�Y .ascrerr ****      � ****� o      �X�X 0 errorstring errorString� �W��V
�W 
errn� o      �U�U 0 errornumber errorNumber�V  � Z    $���T�� =   ��� o    �S�S 0 errornumber errorNumber� m    �R�R��� l   �Q���Q  �   just ignore Cancel   � ��� &   j u s t   i g n o r e   C a n c e l�T  � I    $�P��O�P 	0 abort  � ��N� o     �M�M 0 errorstring errorString�N  �O  � ��� l     �L�K�J�L  �K  �J  � ��� l     �I���I  �   Agree Button handler   � ��� *   A g r e e   B u t t o n   h a n d l e r� ��� i   H K��� I      �H��G�H 0 doagree_ doAgree_� ��F� o      �E�E 
0 sender  �F  �G  � Z     ^���D�C� c     ��� n    	��� I    	�B�A�@�B 	0 state  �A  �@  � o     �?�? 0 agreecheckbox agreeCheckBox� m   	 
�>
�> 
bool� k    Z�� ��� Q    -���� k    �� ��� h    �=��= 0 downloadkvasd downloadKvasd� n    	��� I    	�<�;�:�< 0 fetchbinary fetchBinary�;  �:  � o     �9�9 	0 kvasd  � ��8� n   ��� I    �7��6�7  0 progressaction progressAction� ��5� o    �4�4 0 downloadkvasd downloadKvasd�5  �6  �  f    �8  � R      �3��2
�3 .ascrerr ****      � ****� o      �1�1 0 errorstring errorString�2  � I   ' -�0��/�0 	0 abort  � ��.� o   ( )�-�- 0 errorstring errorString�.  �/  � ��� n  . 8��� I   3 8�,��+�, 0 setenabled_ setEnabled_� ��*� m   3 4�)
�) boovfals�*  �+  � o   . 3�(�( 0 agreecheckbox agreeCheckBox� ��� r   9 @��� m   9 :�'
�' boovtrue� o      �&�& 0 licenceagreed licenceAgreed� ��%� Z   A Z���$�#� >   A I��� o   A F�"�" $0 bundlestoprocess bundlesToProcess� J   F H�!�!  � n  L V��� I   Q V� ���  0 setenabled_ setEnabled_� ��� m   Q R�
� boovtrue�  �  � o   L Q�� 0 installbutton installButton�$  �#  �%  �D  �C  � ��� l     ����  �  �  � ��� l     ����  � #  Choose target button handler   � ��� :   C h o o s e   t a r g e t   b u t t o n   h a n d l e r� ��� i   L O��� I      ���� "0 dochoosetarget_ doChooseTarget_� ��� o      �� 
0 sender  �  �  � Q     c���� k    Z�� ��� X    4���� s   % /��� n   % (��� 1   & (�
� 
psxp� o   % &�� 
0 target  � n      ���  ;   - .� o   ( -�� $0 bundlestoprocess bundlesToProcess� 
0 target  � l 	  ���� I   ���
� .sysostdfalis    ��� null�  � �� 
� 
prmp� l 	  	�
�	 m    	 � � C h o o s e   t h e   W S J T - X   a p p l i c a t i o n   b u n d l e   y o u   w i s h   t o   i n s t a l l   K V A S D   i n t o�
  �	    �
� 
ftyp l 	 
 �� m   
  � 8 c o m . a p p l e . a p p l i c a t i o n - b u n d l e�  �   �	

� 
dflc	 l 
  �� c     c     m     �  / A p p l i c a t i o n s m    �
� 
psxf m    �
� 
alis�  �  
 � 
�  
lfiv l 
  ���� m    ��
�� boovfals��  ��   ����
�� 
mlsl m    ��
�� boovtrue��  �  �  � �� Z   5 Z���� F   5 I >   5 = o   5 :���� $0 bundlestoprocess bundlesToProcess J   : <����   o   @ E���� 0 licenceagreed licenceAgreed n  L V I   Q V������ 0 setenabled_ setEnabled_  ��  m   Q R��
�� boovtrue��  ��   o   L Q���� 0 installbutton installButton��  ��  ��  � R      ����!
�� .ascrerr ****      � ****��  ! ��"��
�� 
errn" d      ## m      ���� ���  � l  b b��$%��  $   just ignore Cancel   % �&& &   j u s t   i g n o r e   C a n c e l� '(' l     ��������  ��  ��  ( )*) l     ��+,��  +   Install button handler   , �-- .   I n s t a l l   b u t t o n   h a n d l e r* ./. i   P S010 I      ��2���� 0 
doinstall_ 
doInstall_2 3��3 o      ���� 
0 sender  ��  ��  1 Q     *4564 k    77 898 I    �������� 0 process  ��  ��  9 :;: r   	 <=< J   	 ����  = o      ���� $0 bundlestoprocess bundlesToProcess; >��> n   ?@? I    ��A���� 0 setenabled_ setEnabled_A B��B m    ��
�� boovfals��  ��  @ o    ���� 0 installbutton installButton��  5 R      ��C��
�� .ascrerr ****      � ****C o      ���� 0 errorstring errorString��  6 I   $ *��D���� 	0 abort  D E��E o   % &���� 0 errorstring errorString��  ��  / FGF l     ��������  ��  ��  G HIH l     ��JK��  J < 6 handler called on eulaTextView scroll or view changes   K �LL l   h a n d l e r   c a l l e d   o n   e u l a T e x t V i e w   s c r o l l   o r   v i e w   c h a n g e sI MNM l     ��OP��  O > 8 enables agree/install button once the bottom is reached   P �QQ p   e n a b l e s   a g r e e / i n s t a l l   b u t t o n   o n c e   t h e   b o t t o m   i s   r e a c h e dN RSR i   T WTUT I      ��V���� 0 viewchanged_ viewChanged_V W��W o      ���� 0 anotification aNotification��  ��  U Q     XXYZX k    J[[ \]\ r    ^_^ c    `a` n   
bcb o    
���� 
0 bounds  c o    ���� 0 eulatextview eulaTextViewa m   
 ��
�� 
reco_ o      ���� 0 dr  ] ded r    fgf c    hih n   jkj o    ���� 0 visiblerect visibleRectk o    ���� 0 eulatextview eulaTextViewi m    ��
�� 
recog o      ���� 0 vdr  e l��l Z    Jmn����m F    9opo B   .qrq \    ,sts n     uvu o     ���� 
0 height  v n    wxw o    ���� 0 size  x o    ���� 0 dr  t l    +y����y [     +z{z n     %|}| o   # %���� 0 y  } n     #~~ o   ! #���� 
0 origin   o     !���� 0 vdr  { n   % *��� o   ( *���� 
0 height  � n   % (��� o   & (���� 0 size  � o   % &���� 0 vdr  ��  ��  r l 
 , -������ m   , -����  ��  ��  p H   1 7�� o   1 6���� 0 licenceagreed licenceAgreedn n  < F��� I   A F������� 0 setenabled_ setEnabled_� ���� m   A B��
�� boovtrue��  ��  � o   < A���� 0 agreecheckbox agreeCheckBox��  ��  ��  Y R      �����
�� .ascrerr ****      � ****� o      ���� 0 errorstring errorString��  Z I   R X������� 	0 abort  � ���� o   S T���� 0 errorstring errorString��  ��  S ��� l     ��������  ��  ��  � ��� l     ������  �   Abort handler   � ���    A b o r t   h a n d l e r� ��� i   X [��� I      ������� 	0 abort  � ���� o      ���� 0 errorstring errorString��  ��  � k     �� ��� I    ����
�� .sysodisAaleR        TEXT� o     ���� 0 errorstring errorString� ����
�� 
as A� m    ��
�� EAlTcriT� ����
�� 
btns� J    �� ���� m    �� ���  O k��  � �����
�� 
dflt� m    	�� ���  O k��  � ���� I   ������
�� .aevtquitnull��� ��� null��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   About menu item   � ���     A b o u t   m e n u   i t e m� ���� i   \ _��� I      ������� 0 doabout_ doAbout_� ���� o      ���� 
0 sender  ��  ��  � I    �����
�� .sysodisAaleR        TEXT� m     �� ��� ( K V A S D - i n s t a l l e r   v 1 . 0��  ��  � ���� l     ��~�}�  �~  �}  ��       �|�����|  � �{�z�y�{ 0 curl  �z 	0 kvasd  �y "0 wsjtappdelegate WSJTAppDelegate� �x v  ��x 0 curl  �  ���� �w�v�w 0 download  �v 0 downloadmd5 downloadMD5� �u {�t�s���r�u 0 download  �t �q��q �  �p�o�n�p 0 url  �o 0 filename fileName�n 0 destination  �s  � �m�l�k�j�m 0 url  �l 0 filename fileName�k 0 destination  �j 0 file  �  � ��i�h�g ��f�e
�i .sysoexecTEXT���     TEXT�h  �g  
�f 
ret 
�e 
psxf�r 0��%E�O �%�%�%�%j W X  )j��%�%�%�%O��&� �d ��c�b���a�d 0 downloadmd5 downloadMD5�c �`��` �  �_�^�_ 0 url  �^ 0 filename fileName�b  � �]�\�[�] 0 url  �\ 0 filename fileName�[ 0 md5ext md5Ext�  � � ��Z�Y�X ��W
�Z .sysoexecTEXT���     TEXT�Y  �X  
�W 
ret �a *�E�O �%�%�%�%j W X  )j��%�%�%�%� �V �  ��V 	0 kvasd  � 
 � �� ������� �U�T�S�R�Q�P�O�N�U 0 
serverpath 
serverPath�T 0 destination  �S 0 
targetname 
targetName�R 0 	fetcheula 	fetchEULA�Q 0 fetchbinary fetchBinary�P 0 savelicense saveLicense�O 0 printlicense printLicense�N 0 cleanup cleanUp� ��� b / v a r / f o l d e r s / y d / x s v z l y p n 2 y z 3 7 3 z v y w b 2 h j 1 r 0 0 0 0 g n / T /� �M ��L�K���J�M 0 	fetcheula 	fetchEULA�L  �K  �  � �I�I 0 download  �J b   b   b  �%b  m+ � �H�G�F���E�H 0 fetchbinary fetchBinary�G  �F  � �D�C�B�A�D 0 url  �C 0 md5sum md5Sum�B 0 file  �A 0 md5calc md5Calc� �@�?�>9�=>�<�;Y�:\^ad
�@ .sysoexecTEXT���     TEXT�? 0 downloadmd5 downloadMD5�> 0 download  
�= 
psxp
�< 
errn�;�
�: 
ret �E jb   ��%j %E�Ob   �b  l+ E�Ob   �b  b  m+ E�O��,%�%j E�O�� )��l��%�%�%�%�%�%�%�%�%Y h� �9l�8�7���6�9 0 savelicense saveLicense�8  �7  � �5�5 0 dest  � �4w�3�2�1�0�/���.�-�,
�4 
prmp
�3 
dflc
�2 afdrdocs
�1 .earsffdralis        afdr�0 
�/ .sysostflalis    ��� null
�. 
psxf
�- 
insh
�, .coreclon****      � ****�6 +*����j � E�O� b  b  %�%�&�l U� �+��*�)���(�+ 0 printlicense printLicense�*  �)  �  � ���'�&
�' 
psxf
�& .aevtpdocnull���     obj �( � b  b  %�%�&j U� �%��$�#���"�% 0 cleanup cleanUp�$  �#  �  � ���!� 
�! 
psxf
�  .coredeloobj        obj �" +� 'b  b  %�%�&j Ob  b  %�&j U� ����� "0 wsjtappdelegate WSJTAppDelegate� �� ���
� misccura
� 
pcls� ���  N S O b j e c t�  ��������������������������� ���������
�	��������� ������������
� 
pare� 0 licenceagreed licenceAgreed� 0 
mainwindow 
mainWindow� 0 eulatextview eulaTextView� 0 progressbar progressBar� 0 
savebutton 
saveButton� 0 printbutton printButton� 0 agreecheckbox agreeCheckBox�
 (0 choosetargetbutton chooseTargetButton�	 0 installbutton installButton� $0 bundlestoprocess bundlesToProcess� 	0 split  � 0 process  �  0 progressaction progressAction� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_� 60 applicationwillterminate_ applicationWillTerminate_� 0 dosave_ doSave_�  0 doprint_ doPrint_�� 0 doagree_ doAgree_�� "0 dochoosetarget_ doChooseTarget_�� 0 
doinstall_ 
doInstall_�� 0 viewchanged_ viewChanged_�� 	0 abort  �� 0 doabout_ doAbout_�  
� boovfals
� 
msng
� 
msng
� 
msng
� 
msng
� 
msng
� 
msng
� 
msng
� 
msng� ������  ��  � ������������� 	0 split  �� ����� �  ������ 0 thetext theText�� 0 thedelimiters theDelimiters��  � ���������� 0 thetext theText�� 0 thedelimiters theDelimiters�� 0 olddelimiters oldDelimiters�� 0 	theresult 	theResult� ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�� ��"���������� 0 process  ��  ��  � ���������������� 0 
bundlepath 
bundlePath�� 0 wsjtxbundle wsjtxBundle�� 0 installroot installRoot�� 
0 target  �� 0 theline theLine�� 0 thedylib theDylib�� 0 errorstring errorString� ;������������������A������M����c��lo��t��������}�������������������������������������������"%
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� misccura�� 0 nsbundle NSBundle�� "0 bundlewithpath_ bundleWithPath_
�� 
msng�� $0 bundleidentifier bundleIdentifier
�� 
ctxt
�� 
bool
�� 
errn���
�� 
ret �� 0 
bundlepath 
bundlePath
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 
targetname 
targetName�� 0 destination  
�� 
spac
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
tab �� 	0 split  
�� .ascrcmnt****      � ****
�� 
givu�� �� 
�� .sysodisAaleR        TEXT�� 0 errorstring errorString��  
�� 
as A
�� EAlTwarN����b  
[��l kh  k��,�k+ E�O�� 
 �j+ �&��& )��l��%�%�%�&Y hO�j+ �&E�Oa �%�%�%a a a lva a kva  O_ a ,a   � ٢a %b  a ,%E�Oa b  a ,%b  a ,%_ %�%j  O ma !�%j  a "-[��l kh �a #	 
�a $�& ;*�_ %_ lvl+ &�l/E�Oa '�%a (%*�a )kvl+ &�i/%_ %�%j  Y h[OY��Oa *�%j  j +Oa ,�%�%�%a a -kva a .a /a 0a 1 2W X 3 4)ja 5�%�%�%�%�%a 6%�%Y hW "X 3 4�a 7a 8a a 9kva a :a 1 2[OY�n� ��1����������  0 progressaction progressAction�� ����� �  ���� 
0 action  ��  � ���� 
0 action  � �������� "0 startanimation_ startAnimation_
�� .aevtoappnull  �   � ****��  0 stopanimation_ stopAnimation_�� !b  )k+  O� *j UOb  )k+ � ��R���������� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�� ����� �  ���� 0 anotification aNotification��  � ������������ 0 anotification aNotification�� 0 downloadeula downloadEula�� (0 boundschangenotice boundsChangeNotice�� &0 framechangenotice frameChangeNotice�� 0 errorstring errorString� a��������������w������������������������� 40 registerfordraggedtypes_ registerForDraggedTypes_
�� misccura�� ,0 nsnotificationcenter NSNotificationCenter�� 0 defaultcenter defaultCenter�� 60 defaultnotificationcentre defaultNotificationCentre�� 0 seteditable_ setEditable_�� 0 downloadeula downloadEula� �����������
�� .ascrinit****      � ****� k        �� i      I      ������
�� .aevtoappnull  �   � ****��  ��   k      �� l    w������  ��  ��  ��  ��  ��  � ��
�� .aevtoappnull  �   � ****�  ��������
�� .aevtoappnull  �   � ****��  ��     �������� 0 	fetcheula 	fetchEULA
�� .rdwrread****        ****�� 0 
setstring_ 
setString_�� b  b  j+  j k+ �� L  ��  0 progressaction progressAction�� 0 setenabled_ setEnabled_�� F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotification�� D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotification
�� 
msng�� �� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_�� 0 errorstring errorString��  �� 	0 abort  �� ~ qb  �kvk+ O��,j+ E�Ob  fk+ O��K 	S�O)�k+ 
Ob  ek+ Ob  ek+ O��,E�O��,E�O�)��a + O�)a ��a + W X  *�k+ � ������	
�~�� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�� �}�}   �|�| 
0 sender  �  	 �{�{ 
0 sender  
  �~ e� �z��y�x�w�z 60 applicationwillterminate_ applicationWillTerminate_�y �v�v   �u�u 
0 sender  �x   �t�t 
0 sender   �s�r�q�s 60 defaultnotificationcentre defaultNotificationCentre�r "0 removeobserver_ removeObserver_�q 0 cleanup cleanUp�w �)k+ Ob  j+ � �pt�o�n�m�p 0 dosave_ doSave_�o �l�l   �k�k 
0 sender  �n   �j�i�h�j 
0 sender  �i 0 errorstring errorString�h 0 errornumber errorNumber �g�f�e�d�g 0 savelicense saveLicense�f 0 errorstring errorString �c�b�a
�c 
errn�b 0 errornumber errorNumber�a  �e���d 	0 abort  �m % b  j+  W X  ��  hY *�k+ � �`��_�^�]�` 0 doprint_ doPrint_�_ �\�\   �[�[ 
0 sender  �^   �Z�Y�X�Z 
0 sender  �Y 0 errorstring errorString�X 0 errornumber errorNumber �W�V�U�T�W 0 printlicense printLicense�V 0 errorstring errorString �S�R�Q
�S 
errn�R 0 errornumber errorNumber�Q  �U���T 	0 abort  �] % b  j+  W X  ��  hY *�k+ � �P��O�N�M�P 0 doagree_ doAgree_�O �L�L   �K�K 
0 sender  �N   �J�I�H�J 
0 sender  �I 0 downloadkvasd downloadKvasd�H 0 errorstring errorString 
�G�F�E��D�C�B�A�@�G 	0 state  
�F 
bool�E 0 downloadkvasd downloadKvasd �?�>�=�<
�? .ascrinit****      � **** k      �; i      !  I      �:�9�8
�: .aevtoappnull  �   � ****�9  �8  ! k     	"" #�7# l    	��6�5�6  �5  �7  �;  �>  �=   �4
�4 .aevtoappnull  �   � **** $$ �3!�2�1%&�0
�3 .aevtoappnull  �   � ****�2  �1  %  & �/�/ 0 fetchbinary fetchBinary�0 
b  j+  �< L  �D  0 progressaction progressAction�C 0 errorstring errorString�B  �A 	0 abort  �@ 0 setenabled_ setEnabled_�M _b  j+  �& Q ��K S�O)�k+ W X  *�k+ Ob  fk+ 	OeEc  Ob  
jv b  	ek+ 	Y hY h� �.��-�,'(�+�. "0 dochoosetarget_ doChooseTarget_�- �*)�* )  �)�) 
0 sender  �,  ' �(�'�( 
0 sender  �' 
0 target  ( �&�%�$�#�"�!� ���������*
�& 
prmp
�% 
ftyp
�$ 
dflc
�# 
psxf
�" 
alis
�! 
lfiv
�  
mlsl� 

� .sysostdfalis    ��� null
� 
kocl
� 
cobj
� .corecnte****       ****
� 
psxp
� 
bool� 0 setenabled_ setEnabled_�  * ���
� 
errn����  �+ d \ 0*�������&�&�f�e� [��l kh ��,b  
6G[OY��Ob  
jv	 b  a & b  	ek+ Y hW X  h� �1��+,�� 0 
doinstall_ 
doInstall_� �-� -  �� 
0 sender  �  + ��� 
0 sender  � 0 errorstring errorString, ��
�	��� 0 process  �
 0 setenabled_ setEnabled_�	 0 errorstring errorString�  � 	0 abort  � + *j+  OjvEc  
Ob  	fk+ W X  *�k+ � �U��./�� 0 viewchanged_ viewChanged_� �0� 0  �� 0 anotification aNotification�  . � �������  0 anotification aNotification�� 0 dr  �� 0 vdr  �� 0 errorstring errorString/ �������������������������� 
0 bounds  
�� 
reco�� 0 visiblerect visibleRect�� 0 size  �� 
0 height  �� 
0 origin  �� 0 y  
�� 
bool�� 0 setenabled_ setEnabled_�� 0 errorstring errorString��  �� 	0 abort  � Y Lb  �,�&E�Ob  �,�&E�O��,�,��,�,��,�,j	 
b  �& b  ek+ Y hW X 	 
*�k+ � �������12���� 	0 abort  �� ��3�� 3  ���� 0 errorstring errorString��  1 ���� 0 errorstring errorString2 	����������������
�� 
as A
�� EAlTcriT
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT
�� .aevtquitnull��� ��� null�� �����kv��� O*j � �������45���� 0 doabout_ doAbout_�� ��6�� 6  ���� 
0 sender  ��  4 ���� 
0 sender  5 ���
�� .sysodisAaleR        TEXT�� �j ascr  ��ޭ