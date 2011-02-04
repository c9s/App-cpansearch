#!/usr/bin/env perl
use strict;
use warnings;
use FindBin;
use lib "$FindBin::RealBin/../lib";
use Curses::UI;


use Curses::UI;
my $cui = new Curses::UI(
    -clear_on_exit => 1, 
    # -debug => 1,
);

$cui->set_binding( sub{ exit }, "\cQ" );

my $mainw = $cui->add("testw","Window");

# my $wid = $mainw->add("testwidget","Listbox");

$mainw->add(
    undef, 'Listbox',
    -y          => 0,
    -padbottom  => 2,
    -values     => [  1 .. 100 ],
#     -labels     => {
#         1  => 'One',     2  => 'Two',
#         3  => 'Three',   4  => 'Four',
#         5  => 'Five',    6  => 'Six',
#         7  => 'Seven',   8  => 'Eight',
#         9  => 'Nine',    10 => 'Ten',
#     },
#    -labels     => { map { $_ => $_ } 1 .. 100 },

    -width      => 78,
    -border     => 1,
    -title      => 'CPAN Modules',
    -vscrollbar => 1,
    -onchange   => sub {  },
);


# $wid->onChange($counter);
# $wid->focus;
# my @lorem = 1 .. 100;

# isa_ok($wid, "Curses::UI::Listbox");
# $wid->values( \@lorem );

# ok(! defined $wid->get(), "get()");

# $wid->set_selection( 1, 4, 7, 99, 5 );

# ok($wid->get() eq "consectetur","set_selection() get()");

# $wid->set_selection( 3 );

# ok($wid->get() eq "sit","set_selection() get()");

# ok($wid->get_active_value() eq "Lorem", "get_active_value()");

# $wid->clear_selection();

# ok(! defined $wid->get(), "get()");

# ok( &$counter == 5, "onChange event");
# while(1) {  }

$cui->mainloop;
