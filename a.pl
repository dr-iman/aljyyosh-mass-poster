#!/usr/bin/perl -U
#
# usage : perl a.pl Results.txt
# Tools By : DeMoN
# Site : Guardiran.org
# Tel : mrar1yan

use HTTP::Request;
use LWP::UserAgent;
use IO::Select;
use HTTP::Response;
sub do_visit()
{ 
  $useragen=LWP::UserAgent->new;
  $useragent="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0";
  $useragen->agent($useragent);
  $useragen->timeout(7);
  our $response=$useragen->get($url);
  our $content=$response->content;
}
print " 


 _______ __ __                         __    
|   _   |  |__.--.--.--.--.-----.-----|  |--.
|       |  |  |  |  |  |  |  _  |__ --|     |
|___|___|__|  |___  |___  |_____|_____|__|__|
          |___|_____|_____|                  
 _______                                     
|   |   .---.-.-----.-----.                  
|       |  _  |__ --|__ --|                  
|__|_|__|___._|_____|_____|                  
                                             
 ______             __                       
|   __ .-----.-----|  |_.-----.----.         
|    __|  _  |__ --|   _|  -__|   _|         
|___|  |_____|_____|____|_____|__|           
                                             
											 
 [-][-][-][-][-][-][-][-][-][-]                                                
 [-] Coded By : DeMoN	    [-]
 [-] Site : Guardiran.org   [-]
 [-] Tel : mrar1yan         [-]
 [-][-][-][-][-][-][-][-][-][-]
 
[*] usage : perl a.pl Results.txt

\n";
$file=$ARGV[0];
open(SHELL, "<$file");
         my(@line) = <SHELL>; 
         @line = sort(@line); 
         my($http);
	 lc($http);
         foreach $http (@line)
           {
           chomp($http);
           $http =~ s/^\s+//;
           $http =~ s/\s+$//;
                
          if($http=~/http/)
          {
              our $url=$http;
              do_visit();
         if($content=~/Hacked/ || $content=~/hacked/)
              {
	      $Results=lc($url);
#              print "$Results \n"; 
system "echo $Results >> empes.txt";
## submit to aljyyosh ##

				$target=$Results;
				$notifier="Guardiran Security Team";
				if ($target =~ /http:\/\//)
				{
				$U="http://aljyyosh.org/single.php";
				$lwp=LWP::UserAgent->new;
				$res=$lwp  -> post($U,[
				'hacker'     => $notifier,
				'site'   => $target,
				'how' => '30',
				'why'       => '5',
				'addsite'       => 'Send',
			    'alj'       => 'aljyyosh', 
				]);
				if ($res->content =~ /color="red">(.*)<\/font><\/li>/) {
				print "$Results addsite $1\n";
				}
				else
				{
				print "$Results \n";
				}
				}
				else
				{
				$new="http://" . "$target";
				$U="http://aljyyosh.org/single.php";
				$lwp=LWP::UserAgent->new;
				$res=$lwp  -> post($U,[
				'hacker'     => $notifier,
				'site'   => $target,
				'how' => '1',
				'why'       => '1',
				'addsite'       => 'Send',
				'alj'       => 'aljyyosh',
				]);
				if ($res->content =~ /color="red">(.*)<\/font><\/li>/) {
				print "$Results addsite $1\n";
				}
				else
				{
				print "$Results \n";
				}
				}

## submit Done ###
              }
#	      else{
#	      $Results=lc($url);
#	      print "$Result not found \n";   
#		}
          }
}
close(SHELL);
