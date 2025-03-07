#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�j��\sspanel-vip.sh �Y�S������[��k"C2L��Sw7��鶝���l˶[�J2�f	�g�M���@�b��fy؄�%���O�=WW~a٘:iv�f�C:�w�=��=WW���iQ���a�I��n��/�^�A�T1(
��z{;�e��ɺ��zDYW4�i���t�)iZDD7�_È�q_ NB�WtK��V�X7ꄉ�#����n�	Cm��D0�t�l]s���UMR�ƦY�$3��t��"x�$��-�]�Ed!$".�3�0��Ƌ���f<J��W��虅cb��F�3�q���7]�maQ/:u
#�P'"}�-����u��B�UU���s����������괱�2{s�X��aj��k	}�-��␤#W'kp|1�;�wv@��Ԉ�3_��(��Y���O�b鰭!���赻�w��[���U%"{˥.�v��a���
b_��<JPQ����(�b�+�O�b��t�V��D�c�B�eL��#S��-<�&���E
W�x�aܜ���x ;T\��W4-,�b�h�B���H!|�&[��}#��3�^���L!��͕��s�b�[C�~0T{
�r����&��#���{O��F���:J��Z��������m�m��ic;��<����˱k��Q1��ؤ1����^)ȴ;]%�)�O�x~/mTzg������l@)|'h�E�J�����O��UE�9l�%��>_K'g���pvv�=�,�̬?��[;L-�(��������$`+�>E-���{�1LJa�/�҆�l5�z���uv2M�J���Y#�`(fV�TA(�F����p�R	�Of_�g6��ޜY��BLlQ<L�%�Z��-fnԃ'0V)���|GS'���X>�\�7��1^Y��3�A��:}�hS���$�撏��4#S��S��X����-Hވӣ��B �;���ɛv��43(�5I0�����J�`�m�`DU�@4
m<�2f�x�~�W�7@6���2�F��aA��[.`�"��g��Yp�����85����	ԛD�%�ɵ���tu:k�kՀ	�hAhWe�����icl��<M �aE��S�"t���5�щ`
�p���^ӉD�ԩ���+l��ϸ@?�\�$7SOZ�G.÷�΢n����=��ٌ��t�宱���n�q�q*�ק*���rX��A�=�Ɍ��:��Rt��-I�6'�����d&�B2�Άq&���4_,��"؊��F��'1������^q��CAt����l�)~>"_��ȣB�"��j+���
J����j�i)Җ�e���1Q:�6�����7[������Tv?���NS��-{��զQ*�_���ߢ��Z,3�u�]E'+�' z�9���O�� �����_;]-����A�@�^q�	F������FӸ�V��R���Lh �C��o������m�3F�_9�ړ��'���>Ts57R1�(�[�8�8��M�i����.����4�0"�x��]���:%Y*Q";�>%,�����2�	��Q�j��e������!��+՗�pP����4ԅ�(�\���0��۶~�\"E	�.�UW.f��<c.��,_���˗T�2��!�������$�H%�r����)�e����1� �~9��aՙ�ȰV��䠌�o�����E�r���E�%� M,F�*�E�����
��j��l�P2v�2���<�N��-?6b��t��d�����ڥe��ˊ�J�
Py��a]�������GD��;�xJ�0����	�_�q����Ry�����8����NY���C{����;�-���[֝>qI5�U�5�xd�*P�{wO,�^`�!�%�v����s�3��8��+{����5R��'�y'�$.v�\67K�g�D�`���n����H�=�ٓ�eZ��^7�/iR�|y�7����^��_NS'�ȓjR��r�Y��<0��]MS�r���݋H�&[}�R!kcK�a
�;HAҾ��<3���Ə����\��1ZO\��y&kkA�����?º��"O_!���5�� Yt	Xl@Py-�(A���<Q�p[PK	*'��^�{�}�9�eak��.~\H-*{d�+V���i*���Aq@���f��E���[�M��<�uYaYSu��UD�6`C����7m2sU�5�]��2��@�t�7�Gq���T��s�r��+W�V>�i�qC�z��1G��t��3o��-*K���{�Ф��;��}teYK���`1_͵^G�P�US�.��4\�l�B'����[��ݧB�>�7�6�G�<�oFv)R�a�_�p����gH�B�b��<������PU?w6w� 5vZh9�!l�} ����q*F�.v���ts	��\v}��<��,� 
9ʈ��gEw�$ސ$#z&���+����Wc��%��u�bt�C��[�'@���~"����I;(�I�7�]��ewސ?����҉׻W�<ɮN�S<������I^G�Q-�h>�J���%A�+�9�n留E~�<�-���f?Y��MUf�I$  