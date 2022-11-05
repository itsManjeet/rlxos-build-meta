use base 'basetest';
use strict;
use testapi;

sub run {
    assert_screen 'bootloader';
    send_key 'ret';

    assert_screen 'desktop', 300;
}