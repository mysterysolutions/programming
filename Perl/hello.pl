#!/usr/bin/perl
use strict;
use warnings;

# Subroutine to print a greeting based on the time of day
sub greet_user {
    my ($name) = @_;
    my $current_hour = (localtime)[2];

    my $greeting = $current_hour < 12 ? "Good morning" :
                   $current_hour < 18 ? "Good afternoon" :
                                        "Good evening";

    print "$greeting, $name!\n";
}

# Subroutine to get user input
sub get_user_input {
    print "Enter your name: ";
    my $name = <STDIN>;
    chomp $name;
    return $name;
}

# Main program
sub main {
    print "This is a complex Hello, World! program in Perl.\n";

    my $user_name = get_user_input();
    greet_user($user_name);
}

# Run the main program
main();

