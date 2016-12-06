<?php

defined('_JEXEC') or die('Restricted access');

/**
 * @package             Joomla
 * @subpackage          CoalaWeb Contact Component
 * @author              Steven Palmer
 * @author url          http://coalaweb.com
 * @author email        support@coalaweb.com
 * @license             GNU/GPL, see /assets/en-GB.license.txt
 * @copyright           Copyright (c) 2016 Steven Palmer All rights reserved.
 *
 * CoalaWeb Contact is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.

 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

if (!defined('KEY_FOR_RC4')) {
    define('KEY_FOR_RC4', 'adadaNchsadagadgakk342eiejfiejifje4234MnUUK25fjiNNBZBZNAkdaasd8sadhHZKZJnGREQhhsdjdksdsde');
}

class CryptHelper {

    function generateCode($characters) {
        /* list all possible characters, similar looking characters and vowels have been removed */
        $possible = '23456789bcdfghjkmnpqrstvwxyz';
        $code = '';
        $i = 0;
        while ($i < $characters) {
            $code .= substr($possible, mt_rand(0, strlen($possible) - 1), 1);
            $i++;
        }
        return $code;
    }
    
    function str_encrypt($str) {
        $mystrInitial = $this->_RC4($str, KEY_FOR_RC4);
        $mystr = rawurlencode(base64_encode($mystrInitial));
        return $mystr;
    }

    function str_decrypt($str) {
        $mystrInitial = base64_decode(rawurldecode($str));
        $mystr = $this->_RC4($mystrInitial, KEY_FOR_RC4);
        return $mystr;
    }

    private function _RC4($data, $key) {

        $x = 0;
        $j = 0;
        $a = 0;
        $temp = "";
        $Zcrypt = "";
        for ($i = 0; $i <= 255; $i++) {
            $counter[$i] = "";
        }

        $pwd = $key;
        $pwd_length = strlen($pwd);

        for ($i = 0; $i < 255; $i++) {
            $key[$i] = ord(substr($pwd, ($i % $pwd_length) + 1, 1));
            $counter[$i] = $i;
        }
        for ($i = 0; $i < 255; $i++) {
            $x = ($x + $counter[$i] + $key[$i]) % 256;
            $temp_swap = $counter[$i];
            $counter[$i] = $counter[$x];
            $counter[$x] = $temp_swap;
        }
        for ($i = 0; $i < strlen($data); $i++) {
            $a = ($a + 1) % 256;
            $j = ($j + $counter[$a]) % 256;
            $temp = $counter[$a];
            $counter[$a] = $counter[$j];
            $counter[$j] = $temp;
            $k = $counter[(($counter[$a] + $counter[$j]) % 256)];
            $Zcipher = ord(substr($data, $i, 1)) ^ $k;
            $Zcrypt .= chr($Zcipher);
        }

        return $Zcrypt;
    }

}

