FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 #   WSJTAppDelegate.applescript    
 �   :     W S J T A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��       KVASD-installer     �   "     K V A S D - i n s t a l l e r      l     ��������  ��  ��        l     ��  ��    V P    This script is a drag and drop target that expects a WSJT-X app bundle path.     �   �         T h i s   s c r i p t   i s   a   d r a g   a n d   d r o p   t a r g e t   t h a t   e x p e c t s   a   W S J T - X   a p p   b u n d l e   p a t h .      l     ��  ��    U O    It can also be opened with a file list or by dropping a suitable WSJT-X app     �   �         I t   c a n   a l s o   b e   o p e n e d   w i t h   a   f i l e   l i s t   o r   b y   d r o p p i n g   a   s u i t a b l e   W S J T - X   a p p      l     ��   ��    Q K    bundle onto it. Alternatively a target WSJT-X application bundle may be      � ! ! �         b u n d l e   o n t o   i t .   A l t e r n a t i v e l y   a   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e   m a y   b e   " # " l     �� $ %��   $ > 8    selected by clicking the "Choose target ..." button.    % � & & p         s e l e c t e d   b y   c l i c k i n g   t h e   " C h o o s e   t a r g e t   . . . "   b u t t o n . #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + U O    It fetches the KVASD EULA text and displays it in a dialog which the reader    , � - - �         I t   f e t c h e s   t h e   K V A S D   E U L A   t e x t   a n d   d i s p l a y s   i t   i n   a   d i a l o g   w h i c h   t h e   r e a d e r *  . / . l     �� 0 1��   0 U O    must at least scroll to the end before clicking the Agree button which then    1 � 2 2 �         m u s t   a t   l e a s t   s c r o l l   t o   t h e   e n d   b e f o r e   c l i c k i n g   t h e   A g r e e   b u t t o n   w h i c h   t h e n /  3 4 3 l     �� 5 6��   5 V P    downloads the appropriate KVASD executable. The MD5 hash checksum is checked    6 � 7 7 �         d o w n l o a d s   t h e   a p p r o p r i a t e   K V A S D   e x e c u t a b l e .   T h e   M D 5   h a s h   c h e c k s u m   i s   c h e c k e d 4  8 9 8 l     �� : ;��   : "     on the KVASD executable.    ; � < < 8         o n   t h e   K V A S D   e x e c u t a b l e . 9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A T N    Once the EULA has been accepted the "Install" button is enabled to install    B � C C �         O n c e   t h e   E U L A   h a s   b e e n   a c c e p t e d   t h e   " I n s t a l l "   b u t t o n   i s   e n a b l e d   t o   i n s t a l l @  D E D l     �� F G��   F S M    the KVASD executable into the target WSJT-X application bundle(s) and the    G � H H �         t h e   K V A S D   e x e c u t a b l e   i n t o   t h e   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e ( s )   a n d   t h e E  I J I l     �� K L��   K R L    RPATHs are modified to reference the libgcc support libraries inside the    L � M M �         R P A T H s   a r e   m o d i f i e d   t o   r e f e r e n c e   t h e   l i b g c c   s u p p o r t   l i b r a r i e s   i n s i d e   t h e J  N O N l     �� P Q��   P $     WSJT-X application bundle.    Q � R R <         W S J T - X   a p p l i c a t i o n   b u n d l e . O  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W 9 3  Created by Bill Somerville (G4WJS) on 12/11/2014.    X � Y Y f     C r e a t e d   b y   B i l l   S o m e r v i l l e   ( G 4 W J S )   o n   1 2 / 1 1 / 2 0 1 4 . V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ Y S  The author of this work hereby waives all claim of copyright (economic and moral)    _ � ` ` �     T h e   a u t h o r   o f   t h i s   w o r k   h e r e b y   w a i v e s   a l l   c l a i m   o f   c o p y r i g h t   ( e c o n o m i c   a n d   m o r a l ) ]  a b a l     �� c d��   c ^ X  in this work and immediately places it in the public domain; it may be used, distorted    d � e e �     i n   t h i s   w o r k   a n d   i m m e d i a t e l y   p l a c e s   i t   i n   t h e   p u b l i c   d o m a i n ;   i t   m a y   b e   u s e d ,   d i s t o r t e d b  f g f l     �� h i��   h c ]  or destroyed in any manner whatsoever without further attribution or notice to the creator.    i � j j �     o r   d e s t r o y e d   i n   a n y   m a n n e r   w h a t s o e v e r   w i t h o u t   f u r t h e r   a t t r i b u t i o n   o r   n o t i c e   t o   t h e   c r e a t o r . g  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q ( " curl wraps cURL to download files    r � s s D   c u r l   w r a p s   c U R L   t o   d o w n l o a d   f i l e s p  t u t h     �� v�� 0 curl   v k       w w  x y x i      z { z I      �� |���� 0 download   |  } ~ } o      ���� 0 url   ~   �  o      ���� 0 filename fileName �  ��� � o      ���� 0 destination  ��  ��   { k     3 � �  � � � r      � � � b      � � � o     ���� 0 destination   � o    ���� 0 filename fileName � o      ���� 0 file   �  � � � Q    . � � � � I  	 �� ���
�� .sysoexecTEXT���     TEXT � b   	  � � � b   	  � � � b   	  � � � b   	  � � � m   	 
 � � � � � j c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   - - s h o w - e r r o r   - - o u t p u t   � o   
 ���� 0 file   � m     � � � � �    � o    ���� 0 url   � o    ���� 0 filename fileName��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errorstring errorString��   � R    .�� ���
�� .ascrerr ****      � **** � b     - � � � b     + � � � b     ) � � � b     ' � � � b     % � � � b     # � � � m     ! � � � � � < A n   e r r o r   o c c u r r e d   d o w n l o a d i n g : � o   ! "��
�� 
ret  � o   # $���� 0 url   � o   % &���� 0 filename fileName � o   ' (��
�� 
ret  � o   ) *��
�� 
ret  � o   + ,���� 0 errorstring errorString��   �  ��� � L   / 3 � � c   / 2 � � � o   / 0���� 0 file   � m   0 1��
�� 
psxf��   y  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 0 downloadmd5 downloadMD5 �  � � � o      ���� 0 url   �  ��� � o      ���� 0 filename fileName��  ��   � k     / � �  � � � r      � � � m      � � � � �  . m d 5 � o      ���� 0 md5ext md5Ext �  ��� � Q    / � � � � L     � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � b    
 � � � m     � � � � � > c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   � o    	���� 0 url   � o   
 ���� 0 filename fileName � l 
   ����� � o    ���� 0 md5ext md5Ext��  ��   � m     � � � � � �   |   a w k   ' { m a t c h ( $ 0 , " [ [ : x d i g i t : ] ] { 3 2 } " ) ;   p r i n t   s u b s t r ( $ 0 , R S T A R T , R L E N G T H ) } '��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errorstring errorString��   � R    /�� ���
�� .ascrerr ****      � **** � b    . � � � b    , � � � b    * � � � b    ( � � � b    & � � � b    $ � � � b    " � � � m      � � � � � : A n   e r r o r   o c c u r r e d   d o w n l o a d i n g � o     !��
�� 
ret  � o   " #��
�� 
ret  � o   $ %���� 0 filename fileName � o   & '���� 0 md5ext md5Ext � o   ( )��
�� 
ret  � o   * +��
�� 
ret  � o   , -���� 0 errorstring errorString��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ; kvasd looks after fetching kvasd files from the web source    � � � � v   k v a s d   l o o k s   a f t e r   f e t c h i n g   k v a s d   f i l e s   f r o m   t h e   w e b   s o u r c e �  � � � h    �� ��� 	0 kvasd   � k       � �  � � � j     �� ��� 0 
serverpath 
serverPath � m      � � � � � n h t t p s : / / s v n . c o d e . s f . n e t / p / w s j t / w s j t / t r u n k / k v a s d - b i n a r y / �  � � � j    �� ��� 0 destination   � b    
 � � � l    ����� � I   �� ���
�� .fndrgstl****    ��� **** � m     � � � � �  T M P D I R��  ��  ��   � m    	 � � � � �  / �  �  � j    ���� 0 
targetname 
targetName m     � 
 k v a s d   l     ��������  ��  ��    i    	 I      �������� 0 	fetcheula 	fetchEULA��  ��  	 L     

 n     I    ������ 0 download    o    
���� 0 
serverpath 
serverPath  b   
  o   
 ���� 0 
targetname 
targetName m     �  _ e u l a . t x t �� o    ���� 0 destination  ��  ��   o     ���� 0 curl    l     ��~�}�  �~  �}    i     I      �|�{�z�| 0 fetchbinary fetchBinary�{  �z   k     i  r      !  b     "#" o     �y�y 0 
serverpath 
serverPath# I   �x$�w
�x .sysoexecTEXT���     TEXT$ b    %&% m    '' �(( 4 e c h o   ` u n a m e   - s ` - ` u n a m e   - m `& m    )) �**  /�w  ! o      �v�v 0 url   +,+ r    !-.- n   /0/ I    �u1�t�u 0 downloadmd5 downloadMD51 232 o    �s�s 0 url  3 4�r4 o    �q�q 0 
targetname 
targetName�r  �t  0 o    �p�p 0 curl  . o      �o�o 0 md5sum md5Sum, 565 r   " 8787 n  " 69:9 I   ' 6�n;�m�n 0 download  ; <=< o   ' (�l�l 0 url  = >?> o   ( -�k�k 0 
targetname 
targetName? @�j@ o   - 2�i�i 0 destination  �j  �m  : o   " '�h�h 0 curl  8 o      �g�g 0 file  6 ABA r   9 FCDC I  9 D�fE�e
�f .sysoexecTEXT���     TEXTE b   9 @FGF b   9 >HIH m   9 :JJ �KK  m d 5  I l  : =L�d�cL n   : =MNM 1   ; =�b
�b 
psxpN o   : ;�a�a 0 file  �d  �c  G m   > ?OO �PP     |   c u t   - d '   '   - f 4�e  D o      �`�` 0 md5calc md5CalcB Q�_Q Z   G iRS�^�]R >   G JTUT o   G H�\�\ 0 md5calc md5CalcU o   H I�[�[ 0 md5sum md5SumS R   M e�ZVW
�Z .ascrerr ****      � ****V b   Q dXYX b   Q bZ[Z b   Q `\]\ b   Q ^^_^ b   Q \`a` b   Q Zbcb b   Q Xded b   Q Vfgf b   Q Thih m   Q Rjj �kk J K V A S D   d o w n l o a d   c o r r u p t   M D 5   h a s h   c h e c ki o   R S�Y
�Y 
ret g l 
 T Ul�X�Wl o   T U�V
�V 
ret �X  �W  e m   V Wmm �nn    e x p e c t e d   [c o   X Y�U�U 0 md5sum md5Suma m   Z [oo �pp  ]_ l 
 \ ]q�T�Sq o   \ ]�R
�R 
ret �T  �S  ] m   ^ _rr �ss        a c t u a l   [[ o   ` a�Q�Q 0 md5calc md5CalcY l 	 b ct�P�Ot m   b cuu �vv  ]�P  �O  W �Nw�M
�N 
errnw m   O P�L�L��M  �^  �]  �_   xyx l     �K�J�I�K  �J  �I  y z{z i    |}| I      �H�G�F�H 0 savelicense saveLicense�G  �F  } k     *~~ � r     ��� l 	   ��E�D� I    �C�B�
�C .sysostflalis    ��� null�B  � �A��
�A 
prmp� l 	  ��@�?� m    �� ��� B S p e c i f y   f o l d e r   t o   s a v e   l i c e n s e   t o�@  �?  � �>��=
�> 
dflc� l   	��<�;� I   	�:��9
�: .earsffdralis        afdr� m    �8
�8 afdrdocs�9  �<  �;  �=  �E  �D  � o      �7�7 0 dest  � ��6� O   *��� l 	  )��5�4� I   )�3��
�3 .coreclon****      � ****� c    #��� l   !��2�1� b    !��� b    ��� o    �0�0 0 destination  � o    �/�/ 0 
targetname 
targetName� m     �� ���  _ e u l a . t x t�2  �1  � m   ! "�.
�. 
psxf� �-��,
�- 
insh� o   $ %�+�+ 0 dest  �,  �5  �4  � m    ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �6  { ��� l     �*�)�(�*  �)  �(  � ��� i    ��� I      �'�&�%�' 0 printlicense printLicense�&  �%  � O    ��� l 	  ��$�#� I   �"��!
�" .aevtpdocnull���     obj � c    ��� l   �� �� b    ��� b    ��� o    	�� 0 destination  � o   	 �� 0 
targetname 
targetName� m    �� ���  _ e u l a . t x t�   �  � m    �
� 
psxf�!  �$  �#  � m     ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  � ��� l     ����  �  �  � ��� i    "��� I      ���� 0 cleanup cleanUp�  �  � O     \��� k    [�� ��� Z    1����� I   ���
� .coredoexbool        obj � c    ��� l   ���� b    ��� b    ��� o    	�� 0 destination  � o   	 �� 0 
targetname 
targetName� m    �� ���  _ e u l a . t x t�  �  � m    �
� 
psxf�  � I   -���

� .coredeloobj        obj � c    )��� l   '��	�� b    '��� b    %��� o    �� 0 destination  � o    $�� 0 
targetname 
targetName� m   % &�� ���  _ e u l a . t x t�	  �  � m   ' (�
� 
psxf�
  �  �  � ��� Z   2 [����� I  2 C��� 
� .coredoexbool        obj � c   2 ?��� l  2 =������ b   2 =��� o   2 7���� 0 destination  � o   7 <���� 0 
targetname 
targetName��  ��  � m   = >��
�� 
psxf�   � I  F W�����
�� .coredeloobj        obj � c   F S��� l  F Q������ b   F Q��� o   F K���� 0 destination  � o   K P���� 0 
targetname 
targetName��  ��  � m   Q R��
�� 
psxf��  �  �  �  � m     ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �   � ��� l     ��������  ��  ��  � ��� h    ����� "0 wsjtappdelegate WSJTAppDelegate� k      �� ��� j     ���
�� 
pare� 4     ���
�� 
pcls� m    �� ���  N S O b j e c t� ��� l     ��������  ��  ��  � ��� j   	 ����� 0 licenceagreed licenceAgreed� m   	 
��
�� boovfals� ��� l     ��������  ��  ��  � ��� j    ����� 0 
mainwindow 
mainWindow� m    ��
�� 
msng� ��� j    ����� 0 eulatextview eulaTextView� m    ��
�� 
msng� ��� j    ����� 0 progressbar progressBar� m    ��
�� 
msng� ��� j    �� �� 0 
savebutton 
saveButton  m    ��
�� 
msng�  j    ���� 0 printbutton printButton m    ��
�� 
msng  j    ���� 0 agreecheckbox agreeCheckBox m    ��
�� 
msng  j     ��	�� (0 choosetargetbutton chooseTargetButton	 m    ��
�� 
msng 

 j   ! #���� 0 installbutton installButton m   ! "��
�� 
msng  l     ��������  ��  ��    j   $ '���� $0 bundlestoprocess bundlesToProcess J   $ &����    l     ��������  ��  ��    p   ( ( ������ 60 defaultnotificationcentre defaultNotificationCentre��    l     ��������  ��  ��    i   ( + I      ������ 	0 split    o      ���� 0 thetext theText  ��  o      ���� 0 thedelimiters theDelimiters��  ��   k     !! "#" r     $%$ n    &'& 1    ��
�� 
txdl' 1     ��
�� 
ascr% o      ���� 0 olddelimiters oldDelimiters# ()( r    *+* o    ���� 0 thedelimiters theDelimiters+ n     ,-, 1    
��
�� 
txdl- 1    ��
�� 
ascr) ./. r    010 l   2����2 n    343 2   ��
�� 
citm4 o    ���� 0 thetext theText��  ��  1 o      ���� 0 	theresult 	theResult/ 565 r    787 o    ���� 0 olddelimiters oldDelimiters8 n     9:9 1    ��
�� 
txdl: 1    ��
�� 
ascr6 ;��; L    << o    ���� 0 	theresult 	theResult��   =>= l     ��������  ��  ��  > ?@? l     ��AB��  A   do the install   B �CC    d o   t h e   i n s t a l l@ DED i   , /FGF I      �������� 0 process  ��  ��  G X    �H��IH Q   �JKLJ k   }MM NON r    !PQP n   RSR I    ��T���� "0 bundlewithpath_ bundleWithPath_T U��U o    ���� 0 
bundlepath 
bundlePath��  ��  S n   VWV o    ���� 0 nsbundle NSBundleW m    ��
�� misccuraQ o      ���� 0 wsjtxbundle wsjtxBundleO XYX Z   " HZ[����Z G   " 3\]\ =   " %^_^ o   " #���� 0 wsjtxbundle wsjtxBundle_ m   # $��
�� 
msng] >   ( 1`a` c   ( /bcb n  ( -ded I   ) -�������� $0 bundleidentifier bundleIdentifier��  ��  e o   ( )���� 0 wsjtxbundle wsjtxBundlec m   - .��
�� 
ctxta m   / 0ff �gg  o r g . k 1 j t . w s j t x[ R   6 D��hi
�� .ascrerr ****      � ****h c   : Cjkj b   : Alml b   : ?non b   : =pqp m   : ;rr �ss \ N o t   a n   a p p r o p r i a t e   W S J T - X   a p p l i c a t i o n   b u n d l e :  q o   ; <��
�� 
ret o l 
 = >t����t o   = >��
�� 
ret ��  ��  m o   ? @���� 0 
bundlepath 
bundlePathk m   A B��
�� 
ctxti ��u��
�� 
errnu m   8 9�������  ��  ��  Y vwv r   I Rxyx c   I Pz{z n  I N|}| I   J N�������� 0 
bundlepath 
bundlePath��  ��  } o   I J���� 0 wsjtxbundle wsjtxBundle{ m   N O��
�� 
ctxty o      ���� 0 installroot installRootw ~~ I  S u����
�� .sysodlogaskr        TEXT� b   S \��� b   S Z��� b   S X��� m   S V�� ��� H I n s t a l l   K V A S D   i n t o   A p l i c a t i o n   B u n d l e� o   V W��
�� 
ret � l 
 X Y������ o   X Y��
�� 
ret ��  ��  � l 
 Z [������ o   Z [���� 0 installroot installRoot��  ��  � ����
�� 
btns� J   _ g�� ��� m   _ b�� ���  O k� ���� m   b e�� ���  S k i p��  � �����
�� 
dflt� J   j o�� ��� m   j m�� ���  O k�  ��   ��~� Z   v}���}�|� =   v ���� n   v }��� 1   y }�{
�{ 
bhit� 1   v y�z
�z 
rslt� m   } ��� ���  O k� Q   �y���� k   �[�� ��� r   � ���� b   � ���� b   � ���� o   � ��y�y 0 installroot installRoot� m   � ��� ���   / C o n t e n t s / M a c O S /� n  � ���� o   � ��x�x 0 
targetname 
targetName� o   � ��w�w 	0 kvasd  � o      �v�v 
0 target  � ��� I  � ��u��t
�u .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ���  c p  � n  � ���� o   � ��s�s 0 destination  � o   � ��r�r 	0 kvasd  � n  � ���� o   � ��q�q 0 
targetname 
targetName� o   � ��p�p 	0 kvasd  � 1   � ��o
�o 
spac� o   � ��n�n 
0 target  �t  � ��� X   �)��m�� Z   �$���l�k� F   � ���� E   � ���� o   � ��j�j 0 theline theLine� m   � ��� ���  . d y l i b� H   � ��� E   � ���� o   � ��i�i 0 theline theLine� m   � ��� ���  l i b S y s t e m� k   � �� ��� r   � ���� n   � ���� 4 � ��h�
�h 
cobj� m   � ��g�g � I   � ��f��e�f 	0 split  � ��� o   � ��d�d 0 theline theLine� ��c� J   � ��� ��� 1   � ��b
�b 
tab � ��a� 1   � ��`
�` 
spac�a  �c  �e  � o      �_�_ 0 thedylib theDylib� ��^� I  � �]��\
�] .sysoexecTEXT���     TEXT� b   ���� b   ���� b   ���� b   ���� b   ���� m   ��� ��� 4 i n s t a l l _ n a m e _ t o o l   - c h a n g e  � o  �[�[ 0 thedylib theDylib� m  �� ��� $   @ e x e c u t a b l e _ p a t h /� n  ��� 4 �Z�
�Z 
cobj� m  �Y�Y��� I  �X��W�X 	0 split  � ��� o  	�V�V 0 thedylib theDylib� ��U� J  	�� ��T� m  	�� �    /�T  �U  �W  � 1  �S
�S 
spac� o  �R�R 
0 target  �\  �^  �l  �k  �m 0 theline theLine� n   � � 2  � ��Q
�Q 
cpar l  � ��P�O I  � ��N�M
�N .sysoexecTEXT���     TEXT b   � � m   � � �  o t o o l   - L   o   � ��L�L 
0 target  �M  �P  �O  � 	
	 I *7�K�J
�K .ascrcmnt****      � **** I *3�I�H
�I .sysoexecTEXT���     TEXT b  */ m  *- �  c h m o d   + x   o  -.�G�G 
0 target  �H  �J  
 �F I 8[�E
�E .sysodisAaleR        TEXT b  8A b  8? b  8= m  8; � P K V A S D   i n s t a l l e d   i n t o   a p p l i c a t i o n   b u n d l e : o  ;<�D
�D 
ret  o  =>�C
�C 
ret  l 
?@�B�A o  ?@�@�@ 0 installroot installRoot�B  �A   �?
�? 
btns J  DI  �>  m  DG!! �""  O k�>   �=#$
�= 
dflt# l 	LO%�<�;% m  LO&& �''  O k�<  �;  $ �:(�9
�: 
givu( m  RU�8�8 �9  �F  � R      �7)�6
�7 .ascrerr ****      � ****) o      �5�5 0 errorstring errorString�6  � R  cy�4*�3
�4 .ascrerr ****      � ***** b  ex+,+ b  ev-.- b  er/0/ b  ep121 b  en343 b  el565 b  ej787 m  eh99 �:: Z F a i l e d   t o   m o v e   K V A S D   i n t o   a p p l i c a t i o n   b u n d l e :8 o  hi�2
�2 
ret 6 o  jk�1
�1 
ret 4 l 
lm;�0�/; o  lm�.�. 0 installroot installRoot�0  �/  2 o  no�-
�- 
ret 0 o  pq�,
�, 
ret . m  ru<< �==  E r r o r :  , o  vw�+�+ 0 errorstring errorString�3  �}  �|  �~  K R      �*>�)
�* .ascrerr ****      � ****> o      �(�( 0 errorstring errorString�)  L I ���'?@
�' .sysodisAaleR        TEXT? o  ���&�& 0 errorstring errorString@ �%AB
�% 
as AA m  ���$
�$ EAlTwarNB �#CD
�# 
btnsC J  ��EE F�"F m  ��GG �HH  O k�"  D �!I� 
�! 
dfltI m  ��JJ �KK  O k�   �� 0 
bundlepath 
bundlePathI o    �� $0 bundlestoprocess bundlesToProcessE LML l     ����  �  �  M NON l     ����  �  �  O PQP l     �RS�  R %  NSApplicationDelegate Protocol   S �TT >   N S A p p l i c a t i o n D e l e g a t e   P r o t o c o lQ UVU l     ����  �  �  V WXW i   0 3YZY I      �[�� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_[ \�\ o      �� 0 anotification aNotification�  �  Z Q     l]^_] k    ^`` aba l   �cd�  c L F            mainWindow's registerForDraggedTypes_({"public.file-url"})   d �ee �                         m a i n W i n d o w ' s   r e g i s t e r F o r D r a g g e d T y p e s _ ( { " p u b l i c . f i l e - u r l " } )b fgf l   ����  �  �  g hih r    jkj n   
lml I    
���
� 0 defaultcenter defaultCenter�  �
  m n   non o    �	�	 ,0 nsnotificationcenter NSNotificationCentero m    �
� misccurak o      �� 60 defaultnotificationcentre defaultNotificationCentrei pqp n   rsr I    �t�� 0 seteditable_ setEditable_t u�u m    �
� boovfals�  �  s o    �� 0 eulatextview eulaTextViewq vwv l   �� ���  �   ��  w xyx h    ��z�� 0 downloadeula downloadEulaz n    {|{ I    ��}���� 0 
setstring_ 
setString_} ~��~ I   ����
�� .rdwrread****        **** n   ��� I   
 �������� 0 	fetcheula 	fetchEULA��  ��  � o    
���� 	0 kvasd  ��  ��  ��  | o     ���� 0 eulatextview eulaTextViewy ��� n    &��� I   ! &������� 0 dowithretry doWithRetry� ���� o   ! "���� 0 downloadeula downloadEula��  ��  �  f     !� ��� n  ' 1��� I   , 1������� 0 setenabled_ setEnabled_� ���� m   , -��
�� boovtrue��  ��  � o   ' ,���� 0 
savebutton 
saveButton� ��� n  2 <��� I   7 <������� 0 setenabled_ setEnabled_� ���� m   7 8��
�� boovtrue��  ��  � o   2 7���� 0 printbutton printButton� ��� l  = =��������  ��  ��  � ��� l  = =������  � < 6 add observers for view port changes on EULA text view   � ��� l   a d d   o b s e r v e r s   f o r   v i e w   p o r t   c h a n g e s   o n   E U L A   t e x t   v i e w� ��� r   = B��� n  = @��� o   > @���� F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotification� m   = >��
�� misccura� o      ���� (0 boundschangenotice boundsChangeNotice� ��� r   C H��� n  C F��� o   D F���� D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotification� m   C D��
�� misccura� o      ���� &0 framechangenotice frameChangeNotice� ��� n  I R��� I   J R������� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_� ���  f   J K� ��� m   K L�� ���  v i e w C h a n g e d :� ��� o   L M���� (0 boundschangenotice boundsChangeNotice� ���� m   M N��
�� 
msng��  ��  � o   I J���� 60 defaultnotificationcentre defaultNotificationCentre� ���� n  S ^��� I   T ^������� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_� ���  f   T U� ��� m   U X�� ���  v i e w C h a n g e d :� ��� o   X Y���� &0 framechangenotice frameChangeNotice� ���� m   Y Z��
�� 
msng��  ��  � o   S T���� 60 defaultnotificationcentre defaultNotificationCentre��  ^ R      �����
�� .ascrerr ****      � ****� o      ���� 0 errorstring errorString��  _ I   f l������� 	0 abort  � ���� o   g h���� 0 errorstring errorString��  ��  X ��� l     ��������  ��  ��  � ��� i   4 7��� I      ������� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_� ���� o      ���� 
0 sender  ��  ��  � L     �� m     ��
�� boovtrue� ��� l     ��������  ��  ��  � ��� i   8 ;��� I      ������� 60 applicationwillterminate_ applicationWillTerminate_� ���� o      ���� 
0 sender  ��  ��  � k     �� ��� n    ��� I    ������� "0 removeobserver_ removeObserver_� ����  f    ��  ��  � o     ���� 60 defaultnotificationcentre defaultNotificationCentre� ���� n   ��� I    �������� 0 cleanup cleanUp��  ��  � o    ���� 	0 kvasd  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � N H NSDraggingDestination (NSWindow Delgate) Protocol (Not working on 10.7)   � ��� �   N S D r a g g i n g D e s t i n a t i o n   ( N S W i n d o w   D e l g a t e )   P r o t o c o l   ( N o t   w o r k i n g   o n   1 0 . 7 )� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � ' ! Accept Generic drag&drop sources   � ��� B   A c c e p t   G e n e r i c   d r a g & d r o p   s o u r c e s� ��� l     ������  � %     on draggingEntered_(sender)   � ��� >         o n   d r a g g i n g E n t e r e d _ ( s e n d e r )� ��� l     ������  � A ;        return current application's NSDragOperationGeneric   � ��� v                 r e t u r n   c u r r e n t   a p p l i c a t i o n ' s   N S D r a g O p e r a t i o n G e n e r i c� ��� l     ������  �      end draggingEntered_   � �   0         e n d   d r a g g i n g E n t e r e d _�  l     ��������  ��  ��    l     ����   #  Process a drop on our window    � :   P r o c e s s   a   d r o p   o n   o u r   w i n d o w 	 l     ��
��  
 * $    on performDragOperation_(sender)    � H         o n   p e r f o r m D r a g O p e r a t i o n _ ( s e n d e r )	  l     ����            try    �                  t r y  l     ����   9 3            set pb to sender's draggingPasteboard()    � f                         s e t   p b   t o   s e n d e r ' s   d r a g g i n g P a s t e b o a r d ( )  l     ����   ] W            if pb's types() as list contains current application's NSURLPboardType then    � �                         i f   p b ' s   t y p e s ( )   a s   l i s t   c o n t a i n s   c u r r e n t   a p p l i c a t i o n ' s   N S U R L P b o a r d T y p e   t h e n  l     ����   w q                set options to {NSPasteboardURLReadingContentsConformToTypesKey:{"com.apple.application-bundle"}}    �   �                                 s e t   o p t i o n s   t o   { N S P a s t e b o a r d U R L R e a d i n g C o n t e n t s C o n f o r m T o T y p e s K e y : { " c o m . a p p l e . a p p l i c a t i o n - b u n d l e " } } !"! l     ��#$��  # s m                repeat with u in pb's readObjectsForClasses_options_({current application's |NSURL|},options)   $ �%% �                                 r e p e a t   w i t h   u   i n   p b ' s   r e a d O b j e c t s F o r C l a s s e s _ o p t i o n s _ ( { c u r r e n t   a p p l i c a t i o n ' s   | N S U R L | } , o p t i o n s )" &'& l     ��()��  ( D >                    copy u's |path| to end of bundlesToProcess   ) �** |                                         c o p y   u ' s   | p a t h |   t o   e n d   o f   b u n d l e s T o P r o c e s s' +,+ l     ��-.��  -                   end repeat   . �// 4                                 e n d   r e p e a t, 010 l     ��23��  2 E ?                if bundlesToProcess � {} and licenceAgreed then   3 �44 ~                                 i f   b u n d l e s T o P r o c e s s  "`   { }   a n d   l i c e n c e A g r e e d   t h e n1 565 l     ��78��  7 ; 5                    installButton's setEnabled_(true)   8 �99 j                                         i n s t a l l B u t t o n ' s   s e t E n a b l e d _ ( t r u e )6 :;: l     ��<=��  <                  end if   = �>> ,                                 e n d   i f; ?@? l     ��AB��  A !                 return true   B �CC 6                                 r e t u r n   t r u e@ DED l     ��FG��  F              end if   G �HH $                         e n d   i fE IJI l     ��KL��  K "         on error errorString   L �MM 8                 o n   e r r o r   e r r o r S t r i n gJ NON l     ��PQ��  P $             abort(errorString)   Q �RR <                         a b o r t ( e r r o r S t r i n g )O STS l     ��UV��  U          end try   V �WW                  e n d   t r yT XYX l     ��Z[��  Z          return false   [ �\\ (                 r e t u r n   f a l s eY ]^] l     ��_`��  _ #     end performDragOperation_   ` �aa :         e n d   p e r f o r m D r a g O p e r a t i o n _^ bcb l     ��������  ��  ��  c ded l     ��������  ��  ��  e fgf l     ��hi��  h   UI handlers   i �jj    U I   h a n d l e r sg klk l     �������  ��  �  l mnm l     �~�}�|�~  �}  �|  n opo l     �{qr�{  q  
 Save EULA   r �ss    S a v e   E U L Ap tut i   < ?vwv I      �zx�y�z 0 dosave_ doSave_x y�xy o      �w�w 
0 sender  �x  �y  w Q     $z{|z n   }~} I    �v�u�t�v 0 savelicense saveLicense�u  �t  ~ o    �s�s 	0 kvasd  { R      �r�
�r .ascrerr ****      � **** o      �q�q 0 errorstring errorString� �p��o
�p 
errn� o      �n�n 0 errornumber errorNumber�o  | Z    $���m�� =   ��� o    �l�l 0 errornumber errorNumber� m    �k�k��� l   �j���j  �   just ignore Cancel   � ��� &   j u s t   i g n o r e   C a n c e l�m  � I    $�i��h�i 	0 abort  � ��g� o     �f�f 0 errorstring errorString�g  �h  u ��� l     �e�d�c�e  �d  �c  � ��� l     �b���b  �  
 Save EULA   � ���    S a v e   E U L A� ��� i   @ C��� I      �a��`�a 0 doprint_ doPrint_� ��_� o      �^�^ 
0 sender  �_  �`  � Q     $���� n   ��� I    �]�\�[�] 0 printlicense printLicense�\  �[  � o    �Z�Z 	0 kvasd  � R      �Y��
�Y .ascrerr ****      � ****� o      �X�X 0 errorstring errorString� �W��V
�W 
errn� o      �U�U 0 errornumber errorNumber�V  � Z    $���T�� =   ��� o    �S�S 0 errornumber errorNumber� m    �R�R��� l   �Q���Q  �   just ignore Cancel   � ��� &   j u s t   i g n o r e   C a n c e l�T  � I    $�P��O�P 	0 abort  � ��N� o     �M�M 0 errorstring errorString�N  �O  � ��� l     �L�K�J�L  �K  �J  � ��� l     �I���I  �   Agree Button handler   � ��� *   A g r e e   B u t t o n   h a n d l e r� ��� i   D G��� I      �H��G�H 0 doagree_ doAgree_� ��F� o      �E�E 
0 sender  �F  �G  � Z     ^���D�C� c     ��� n    	��� I    	�B�A�@�B 	0 state  �A  �@  � o     �?�? 0 agreecheckbox agreeCheckBox� m   	 
�>
�> 
bool� k    Z�� ��� Q    -���� k    �� ��� h    �=��= 0 downloadkvasd downloadKvasd� n    	��� I    	�<�;�:�< 0 fetchbinary fetchBinary�;  �:  � o     �9�9 	0 kvasd  � ��8� n   ��� I    �7��6�7 0 dowithretry doWithRetry� ��5� o    �4�4 0 downloadkvasd downloadKvasd�5  �6  �  f    �8  � R      �3��2
�3 .ascrerr ****      � ****� o      �1�1 0 errorstring errorString�2  � I   ' -�0��/�0 	0 abort  � ��.� o   ( )�-�- 0 errorstring errorString�.  �/  � ��� n  . 8��� I   3 8�,��+�, 0 setenabled_ setEnabled_� ��*� m   3 4�)
�) boovfals�*  �+  � o   . 3�(�( 0 agreecheckbox agreeCheckBox� ��� r   9 @��� m   9 :�'
�' boovtrue� o      �&�& 0 licenceagreed licenceAgreed� ��%� Z   A Z���$�#� >   A I��� o   A F�"�" $0 bundlestoprocess bundlesToProcess� J   F H�!�!  � n  L V��� I   Q V� ���  0 setenabled_ setEnabled_� ��� m   Q R�
� boovtrue�  �  � o   L Q�� 0 installbutton installButton�$  �#  �%  �D  �C  � ��� l     ����  �  �  � ��� l     ����  � #  Choose target button handler   � ��� :   C h o o s e   t a r g e t   b u t t o n   h a n d l e r� ��� i   H K��� I      ���� "0 dochoosetarget_ doChooseTarget_� ��� o      �� 
0 sender  �  �  � Q     c���� k    Z�� ��� X    4���� s   % /��� n   % (��� 1   & (�
� 
psxp� o   % &�� 
0 target  � n      ���  ;   - .� o   ( -�� $0 bundlestoprocess bundlesToProcess� 
0 target  � l 	   ��  I   ��
� .sysostdfalis    ��� null�   �
� 
prmp l 	  	�
�	 m    	 � � C h o o s e   t h e   W S J T - X   a p p l i c a t i o n   b u n d l e   y o u   w i s h   t o   i n s t a l l   K V A S D   i n t o�
  �	   �
� 
ftyp l 	 
 	��	 m   
 

 � 8 c o m . a p p l e . a p p l i c a t i o n - b u n d l e�  �   �
� 
dflc l 
  �� c     c     m     �  / A p p l i c a t i o n s m    �
� 
psxf m    �
� 
alis�  �   � 
�  
lfiv l 
  ���� m    ��
�� boovfals��  ��   ����
�� 
mlsl m    ��
�� boovtrue��  �  �  � �� Z   5 Z���� F   5 I >   5 = o   5 :���� $0 bundlestoprocess bundlesToProcess J   : <����   o   @ E���� 0 licenceagreed licenceAgreed n  L V !  I   Q V��"���� 0 setenabled_ setEnabled_" #��# m   Q R��
�� boovtrue��  ��  ! o   L Q���� 0 installbutton installButton��  ��  ��  � R      ����$
�� .ascrerr ****      � ****��  $ ��%��
�� 
errn% d      && m      ���� ���  � l  b b��'(��  '   just ignore Cancel   ( �)) &   j u s t   i g n o r e   C a n c e l� *+* l     ��������  ��  ��  + ,-, l     ��./��  .   Install button handler   / �00 .   I n s t a l l   b u t t o n   h a n d l e r- 121 i   L O343 I      ��5���� 0 
doinstall_ 
doInstall_5 6��6 o      ���� 
0 sender  ��  ��  4 Q     *7897 k    :: ;<; I    �������� 0 process  ��  ��  < =>= r   	 ?@? J   	 ����  @ o      ���� $0 bundlestoprocess bundlesToProcess> A��A n   BCB I    ��D���� 0 setenabled_ setEnabled_D E��E m    ��
�� boovfals��  ��  C o    ���� 0 installbutton installButton��  8 R      ��F��
�� .ascrerr ****      � ****F o      ���� 0 errorstring errorString��  9 I   $ *��G���� 	0 abort  G H��H o   % &���� 0 errorstring errorString��  ��  2 IJI l     ��������  ��  ��  J KLK l     ��MN��  M < 6 handler called on eulaTextView scroll or view changes   N �OO l   h a n d l e r   c a l l e d   o n   e u l a T e x t V i e w   s c r o l l   o r   v i e w   c h a n g e sL PQP l     ��RS��  R > 8 enables agree/install button once the bottom is reached   S �TT p   e n a b l e s   a g r e e / i n s t a l l   b u t t o n   o n c e   t h e   b o t t o m   i s   r e a c h e dQ UVU i   P SWXW I      ��Y���� 0 viewchanged_ viewChanged_Y Z��Z o      ���� 0 anotification aNotification��  ��  X Q     X[\][ k    J^^ _`_ r    aba c    cdc n   
efe o    
���� 
0 bounds  f o    ���� 0 eulatextview eulaTextViewd m   
 ��
�� 
recob o      ���� 0 dr  ` ghg r    iji c    klk n   mnm o    ���� 0 visiblerect visibleRectn o    ���� 0 eulatextview eulaTextViewl m    ��
�� 
recoj o      ���� 0 vdr  h o��o Z    Jpq����p F    9rsr B   .tut \    ,vwv n     xyx o     ���� 
0 height  y n    z{z o    ���� 0 size  { o    ���� 0 dr  w l    +|����| [     +}~} n     %� o   # %���� 0 y  � n     #��� o   ! #���� 
0 origin  � o     !���� 0 vdr  ~ n   % *��� o   ( *���� 
0 height  � n   % (��� o   & (���� 0 size  � o   % &���� 0 vdr  ��  ��  u l 
 , -������ m   , -����  ��  ��  s H   1 7�� o   1 6���� 0 licenceagreed licenceAgreedq n  < F��� I   A F������� 0 setenabled_ setEnabled_� ���� m   A B��
�� boovtrue��  ��  � o   < A���� 0 agreecheckbox agreeCheckBox��  ��  ��  \ R      �����
�� .ascrerr ****      � ****� o      ���� 0 errorstring errorString��  ] I   R X������� 	0 abort  � ���� o   S T���� 0 errorstring errorString��  ��  V ��� l     ��������  ��  ��  � ��� l     ������  �    Do something with retries   � ��� 4   D o   s o m e t h i n g   w i t h   r e t r i e s� ��� i   T W��� I      ������� 0 dowithretry doWithRetry� ���� o      ���� 
0 action  ��  ��  � k     W�� ��� r     ��� m     ��
�� boovfals� o      ���� 0 done  � ���� W    W��� Q   
 R���� k    �� ��� n   ��� I    �������  0 progressaction progressAction� ���� o    ���� 
0 action  ��  ��  �  f    � ���� r    ��� m    ��
�� boovtrue� o      ���� 0 done  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errorstring errorString��  � k    R�� ��� r    "��� m     ��
�� boovfals� o      ���� 0 usercanceled userCanceled� ��� Q   # C���� r   & 8��� I  & 6����
�� .sysodisAaleR        TEXT� o   & '���� 0 errorstring errorString� ����
�� 
as A� l 
 ( )������ m   ( )��
�� EAlTwarN��  ��  � ����
�� 
btns� J   * .�� ��� m   * +�� ���  C a n c e l� ���� m   + ,�� ��� 
 R e t r y��  � ����
�� 
dflt� m   / 0�� ��� 
 R e t r y� ���~
� 
cbtn� m   1 2�� ���  C a n c e l�~  � o      �}�} 0 dialogresult dialogResult� R      �|�{�
�| .ascrerr ****      � ****�{  � �z��y
�z 
errn� d      �� m      �x�x ��y  � r   @ C��� m   @ A�w
�w boovtrue� o      �v�v 0 usercanceled userCanceled� ��u� Z   D R���t�s� o   D E�r�r 0 usercanceled userCanceled� R   H N�q��p
�q .ascrerr ****      � ****� m   J M�� ��� . U s e r   c a n c e l e d   o p e r a t i o n�p  �t  �s  �u  � o    	�o�o 0 done  ��  � ��� l     �n�m�l�n  �m  �l  � ��� l     �k���k  � H B execute around handler to display a progress bar during an action   � ��� �   e x e c u t e   a r o u n d   h a n d l e r   t o   d i s p l a y   a   p r o g r e s s   b a r   d u r i n g   a n   a c t i o n� ��� i   X [��� I      �j��i�j  0 progressaction progressAction� ��h� o      �g�g 
0 action  �h  �i  � k      �� ��� n    
��� I    
�f��e�f "0 startanimation_ startAnimation_� ��d�  f    �d  �e  � o     �c�c 0 progressbar progressBar� ��� O   ��� I   �b�a�`
�b .aevtoappnull  �   � ****�a  �`  � o    �_�_ 
0 action  � ��^� n    ��� I     �]��\�]  0 stopanimation_ stopAnimation_� ��[�  f    �[  �\  � o    �Z�Z 0 progressbar progressBar�^  � ��� l     �Y�X�W�Y  �X  �W  � � � l     �V�V     Abort handler    �    A b o r t   h a n d l e r   i   \ _ I      �U�T�U 	0 abort   	�S	 o      �R�R 0 errorstring errorString�S  �T   k     

  I    �Q
�Q .sysodisAaleR        TEXT o     �P�P 0 errorstring errorString �O
�O 
as A m    �N
�N EAlTcriT �M
�M 
btns J     �L m     �  O k�L   �K�J
�K 
dflt m    	 �  O k�J   �I I   �H�G�F
�H .aevtquitnull��� ��� null�G  �F  �I    l     �E�D�C�E  �D  �C    l     �B �B     About menu item     �!!     A b o u t   m e n u   i t e m "�A" i   ` c#$# I      �@%�?�@ 0 doabout_ doAbout_% &�>& o      �=�= 
0 sender  �>  �?  $ I    �<'�;
�< .sysodisAaleR        TEXT' m     (( �)) ( K V A S D - i n s t a l l e r   v 1 . 0�;  �A  � *�:* l     �9�8�7�9  �8  �7  �:       �6+,-.�6  + �5�4�3�5 0 curl  �4 	0 kvasd  �3 "0 wsjtappdelegate WSJTAppDelegate, �2 v  /�2 0 curl  /  0120 �1�0�1 0 download  �0 0 downloadmd5 downloadMD51 �/ {�.�-34�,�/ 0 download  �. �+5�+ 5  �*�)�(�* 0 url  �) 0 filename fileName�( 0 destination  �-  3 �'�&�%�$�#�' 0 url  �& 0 filename fileName�% 0 destination  �$ 0 file  �# 0 errorstring errorString4  � ��"�!�  ���
�" .sysoexecTEXT���     TEXT�! 0 errorstring errorString�   
� 
ret 
� 
psxf�, 4��%E�O �%�%�%�%j W X  )j��%�%�%�%�%�%O��&2 � ���67�� 0 downloadmd5 downloadMD5� �8� 8  ��� 0 url  � 0 filename fileName�  6 ����� 0 url  � 0 filename fileName� 0 md5ext md5Ext� 0 errorstring errorString7  � � ���� ��
� .sysoexecTEXT���     TEXT� 0 errorstring errorString�  
� 
ret � 0�E�O �%�%�%�%j W X  )j��%�%�%�%�%�%�%- � �  9� 	0 kvasd  9 
 : �;<=>?@: ����
�	���� 0 
serverpath 
serverPath� 0 destination  � 0 
targetname 
targetName�
 0 	fetcheula 	fetchEULA�	 0 fetchbinary fetchBinary� 0 savelicense saveLicense� 0 printlicense printLicense� 0 cleanup cleanUp; �AA d / v a r / f o l d e r s / y d / x s v z l y p n 2 y z 3 7 3 z v y w b 2 h j 1 r 0 0 0 0 g n / T / /< �	��BC�� 0 	fetcheula 	fetchEULA�  �  B  C �� 0 download  � b   b   b  �%b  m+ = � ����DE���  0 fetchbinary fetchBinary��  ��  D ���������� 0 url  �� 0 md5sum md5Sum�� 0 file  �� 0 md5calc md5CalcE ')������J��O����j��moru
�� .sysoexecTEXT���     TEXT�� 0 downloadmd5 downloadMD5�� 0 download  
�� 
psxp
�� 
errn���
�� 
ret �� jb   ��%j %E�Ob   �b  l+ E�Ob   �b  b  m+ E�O��,%�%j E�O�� )��l��%�%�%�%�%�%�%�%�%Y h> ��}����FG���� 0 savelicense saveLicense��  ��  F ���� 0 dest  G ���������������������
�� 
prmp
�� 
dflc
�� afdrdocs
�� .earsffdralis        afdr�� 
�� .sysostflalis    ��� null
�� 
psxf
�� 
insh
�� .coreclon****      � ****�� +*����j � E�O� b  b  %�%�&�l U? �������HI���� 0 printlicense printLicense��  ��  H  I ������
�� 
psxf
�� .aevtpdocnull���     obj �� � b  b  %�%�&j U@ �������JK���� 0 cleanup cleanUp��  ��  J  K ���������
�� 
psxf
�� .coredoexbool        obj 
�� .coredeloobj        obj �� ]� Yb  b  %�%�&j  b  b  %�%�&j Y hOb  b  %�&j  b  b  %�&j Y hU. ���LM�� "0 wsjtappdelegate WSJTAppDelegateL NN ����O
�� misccura
�� 
pclsO �PP  N S O b j e c tM  Q��������������������RSTUVWXYZ[\]^_`aQ ����������������������������������������������������
�� 
pare�� 0 licenceagreed licenceAgreed�� 0 
mainwindow 
mainWindow�� 0 eulatextview eulaTextView�� 0 progressbar progressBar�� 0 
savebutton 
saveButton�� 0 printbutton printButton�� 0 agreecheckbox agreeCheckBox�� (0 choosetargetbutton chooseTargetButton�� 0 installbutton installButton�� $0 bundlestoprocess bundlesToProcess�� 	0 split  �� 0 process  �� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�� 60 applicationwillterminate_ applicationWillTerminate_�� 0 dosave_ doSave_�� 0 doprint_ doPrint_�� 0 doagree_ doAgree_�� "0 dochoosetarget_ doChooseTarget_�� 0 
doinstall_ 
doInstall_�� 0 viewchanged_ viewChanged_�� 0 dowithretry doWithRetry��  0 progressaction progressAction�� 	0 abort  �� 0 doabout_ doAbout_��  
�� boovfals
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msngR ������  ��  S ������bc���� 	0 split  �� ��d�� d  ������ 0 thetext theText�� 0 thedelimiters theDelimiters��  b ���������� 0 thetext theText�� 0 thedelimiters theDelimiters�� 0 olddelimiters oldDelimiters�� 0 	theresult 	theResultc ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�T ��G����ef���� 0 process  ��  ��  e ���������������� 0 
bundlepath 
bundlePath�� 0 wsjtxbundle wsjtxBundle�� 0 installroot installRoot�� 
0 target  �� 0 theline theLine�� 0 thedylib theDylib�� 0 errorstring errorStringf ;������������������f������r���������������������������~�}�|���{�z����y!&�x�w�v�u�t�s9<�r�qGJ
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
targetName� 0 destination  
�~ 
spac
�} .sysoexecTEXT���     TEXT
�| 
cpar
�{ 
tab �z 	0 split  
�y .ascrcmnt****      � ****
�x 
givu�w �v 
�u .sysodisAaleR        TEXT�t 0 errorstring errorString�s  
�r 
as A
�q EAlTwarN����b  
[��l kh  k��,�k+ E�O�� 
 �j+ �&��& )��l��%�%�%�&Y hO�j+ �&E�Oa �%�%�%a a a lva a kva  O_ a ,a   � ٢a %b  a ,%E�Oa b  a ,%b  a ,%_ %�%j  O ma !�%j  a "-[��l kh �a #	 
�a $�& ;*�_ %_ lvl+ &�l/E�Oa '�%a (%*�a )kvl+ &�i/%_ %�%j  Y h[OY��Oa *�%j  j +Oa ,�%�%�%a a -kva a .a /a 0a 1 2W X 3 4)ja 5�%�%�%�%�%a 6%�%Y hW "X 3 4�a 7a 8a a 9kva a :a 1 2[OY�nU �pZ�o�ngh�m�p B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�o �li�l i  �k�k 0 anotification aNotification�n  g �j�i�h�g�f�j 0 anotification aNotification�i 0 downloadeula downloadEula�h (0 boundschangenotice boundsChangeNotice�g &0 framechangenotice frameChangeNotice�f 0 errorstring errorStringh �e�d�c�b�a�`zj�_�^�]�\��[�Z�Y��X�W�V
�e misccura�d ,0 nsnotificationcenter NSNotificationCenter�c 0 defaultcenter defaultCenter�b 60 defaultnotificationcentre defaultNotificationCentre�a 0 seteditable_ setEditable_�` 0 downloadeula downloadEulaj �Uk�T�Slm�R
�U .ascrinit****      � ****k k     nn o�Qo i     pqp I      �P�O�N
�P .aevtoappnull  �   � ****�O  �N  q k     rr s�Ms l    z�L�K�L  �K  �M  �Q  �T  �S  l �J
�J .aevtoappnull  �   � ****m tt �Iq�H�Guv�F
�I .aevtoappnull  �   � ****�H  �G  u  v �E�D�C�E 0 	fetcheula 	fetchEULA
�D .rdwrread****        ****�C 0 
setstring_ 
setString_�F b  b  j+  j k+ �R L  �_ 0 dowithretry doWithRetry�^ 0 setenabled_ setEnabled_�] F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotification�\ D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotification
�[ 
msng�Z �Y F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_�X 0 errorstring errorString�W  �V 	0 abort  �m m `��,j+ E�Ob  fk+ O��K S�O)�k+ Ob  ek+ 	Ob  ek+ 	O��,E�O��,E�O�)���+ O�)a ���+ W X  *�k+ V �B��A�@wx�?�B d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�A �>y�> y  �=�= 
0 sender  �@  w �<�< 
0 sender  x  �? eW �;��:�9z{�8�; 60 applicationwillterminate_ applicationWillTerminate_�: �7|�7 |  �6�6 
0 sender  �9  z �5�5 
0 sender  { �4�3�2�4 60 defaultnotificationcentre defaultNotificationCentre�3 "0 removeobserver_ removeObserver_�2 0 cleanup cleanUp�8 �)k+ Ob  j+ X �1w�0�/}~�.�1 0 dosave_ doSave_�0 �-�-   �,�, 
0 sender  �/  } �+�*�)�+ 
0 sender  �* 0 errorstring errorString�) 0 errornumber errorNumber~ �(�'��&�%�( 0 savelicense saveLicense�' 0 errorstring errorString� �$�#�"
�$ 
errn�# 0 errornumber errorNumber�"  �&���% 	0 abort  �. % b  j+  W X  ��  hY *�k+ Y �!�� �����! 0 doprint_ doPrint_�  ��� �  �� 
0 sender  �  � ���� 
0 sender  � 0 errorstring errorString� 0 errornumber errorNumber� ������ 0 printlicense printLicense� 0 errorstring errorString� ���
� 
errn� 0 errornumber errorNumber�  ���� 	0 abort  � % b  j+  W X  ��  hY *�k+ Z �������� 0 doagree_ doAgree_� ��� �  �� 
0 sender  �  � ��
�	� 
0 sender  �
 0 downloadkvasd downloadKvasd�	 0 errorstring errorString� 
����������� 	0 state  
� 
bool� 0 downloadkvasd downloadKvasd� � ���������
�  .ascrinit****      � ****� k     �� ���� i     ��� I      ������
�� .aevtoappnull  �   � ****��  ��  � k     	�� ���� l    	�������  ��  ��  ��  ��  ��  � ��
�� .aevtoappnull  �   � ****� �� �����������
�� .aevtoappnull  �   � ****��  ��  �  � ���� 0 fetchbinary fetchBinary�� 
b  j+  �� L  � 0 dowithretry doWithRetry� 0 errorstring errorString�  � 	0 abort  � 0 setenabled_ setEnabled_� _b  j+  �& Q ��K S�O)�k+ W X  *�k+ Ob  fk+ 	OeEc  Ob  
jv b  	ek+ 	Y hY h[ ������������� "0 dochoosetarget_ doChooseTarget_�� ����� �  ���� 
0 sender  ��  � ������ 
0 sender  �� 
0 target  � ����
�����������������������������
�� 
prmp
�� 
ftyp
�� 
dflc
�� 
psxf
�� 
alis
�� 
lfiv
�� 
mlsl�� 

�� .sysostdfalis    ��� null
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psxp
�� 
bool�� 0 setenabled_ setEnabled_��  � ������
�� 
errn������  �� d \ 0*�������&�&�f�e� [��l kh ��,b  
6G[OY��Ob  
jv	 b  a & b  	ek+ Y hW X  h\ ��4���������� 0 
doinstall_ 
doInstall_�� ����� �  ���� 
0 sender  ��  � ������ 
0 sender  �� 0 errorstring errorString� ������������ 0 process  �� 0 setenabled_ setEnabled_�� 0 errorstring errorString��  �� 	0 abort  �� + *j+  OjvEc  
Ob  	fk+ W X  *�k+ ] ��X���������� 0 viewchanged_ viewChanged_�� ����� �  ���� 0 anotification aNotification��  � ���������� 0 anotification aNotification�� 0 dr  �� 0 vdr  �� 0 errorstring errorString� �������������������������� 
0 bounds  
�� 
reco�� 0 visiblerect visibleRect�� 0 size  �� 
0 height  �� 
0 origin  �� 0 y  
�� 
bool�� 0 setenabled_ setEnabled_�� 0 errorstring errorString��  �� 	0 abort  �� Y Lb  �,�&E�Ob  �,�&E�O��,�,��,�,��,�,j	 
b  �& b  ek+ Y hW X 	 
*�k+ ^ ������������� 0 dowithretry doWithRetry�� ����� �  ���� 
0 action  ��  � ������������ 
0 action  �� 0 done  �� 0 errorstring errorString�� 0 usercanceled userCanceled�� 0 dialogresult dialogResult� ������������������������������  0 progressaction progressAction�� 0 errorstring errorString��  
�� 
as A
�� EAlTwarN
�� 
btns
�� 
dflt
�� 
cbtn�� 
�� .sysodisAaleR        TEXT��  � ������
�� 
errn������  �� XfE�O Rh� )�k+  OeE�W :X  fE�O ������lv����� E�W 
X  eE�O� )ja Y h[OY��_ �������������  0 progressaction progressAction�� ����� �  ���� 
0 action  ��  � ���� 
0 action  � �������� "0 startanimation_ startAnimation_
�� .aevtoappnull  �   � ****��  0 stopanimation_ stopAnimation_�� !b  )k+  O� *j UOb  )k+ ` ������������ 	0 abort  �� ����� �  ���� 0 errorstring errorString��  � ���� 0 errorstring errorString� 	��������������
�� 
as A
�� EAlTcriT
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT
�� .aevtquitnull��� ��� null�� �����kv��� O*j a ��$��~���}�� 0 doabout_ doAbout_� �|��| �  �{�{ 
0 sender  �~  � �z�z 
0 sender  � (�y
�y .sysodisAaleR        TEXT�} �j  ascr  ��ޭ