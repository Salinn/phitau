# <h2>architecture</h2>
#   <p>Returns the CPU hardware architecture.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On OpenBSD, Linux and Debian’s kfreebsd, use the hardwaremodel fact.</li>
#     <li>Gentoo and Debian call “x86_64” “amd64”.</li>
#     <li>Gentoo also calls “i386” “x86”.</li>
#   </ul>
  $architecture = $architecture

# <h2>augeasversion</h2>
#   <p>Returns the version of the Augeas library.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Loads ruby-augeas and reports the value of <code>/augeas/version</code>, the version of
#   the underlying Augeas library.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>The library version may not indicate the presence of certain lenses,
#   depending on the system packages updated, nor the version of ruby-augeas
#   which may affect support for the Puppet Augeas provider.
#   Versions prior to 0.3.6 cannot be interrogated for their version.</p>
  $augeasversion = $augeasversion

# <h2>blockdevices</h2>
#   <p>Returns a comma-separated list of block devices.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Retrieve the block devices that were identified and iterated over in the creation of the blockdevice_ facts.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Block devices must have been identified using sysfs information</p>
  $blockdevices = $blockdevices

# <h2>boardmanufacturer</h2>
#   <p>Returns the manufacturer of the machine’s motherboard.</p>
  $boardmanufacturer = $boardmanufacturer

# <h2>boardproductname</h2>
#   <p>Returns the model name of the machine’s motherboard.</p>
  $boardproductname = $boardproductname

# <h2>boardserialnumber</h2>
#   <p>Returns the serial number of the machine’s motherboard.</p>
  $boardserialnumber = $boardserialnumber

# <h2>cfkey</h2>
#   <p>Returns the public key(s) for CFengine.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Tries each file of standard localhost.pub &amp; cfkey.pub locations,
#   checks if they appear to be a public key, and then join them all together.</p>
  $cfkey = $cfkey

# <h2>domain</h2>
#   <p>Returns the host’s primary DNS domain name.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On UNIX (excluding Darwin), first try and use the hostname fact, 
#   which uses the hostname system command, and then parse the output of 
#   that.</li>
#     <li>Failing that it tries the dnsdomainname system command.</li>
#     <li>Failing that it uses /etc/resolv.conf and takes the domain from that, or as a final resort, the search from that.</li>
#     <li>Otherwise returns nil.</li>
#     <li>On Windows uses the win32ole gem and winmgmts to get the DNSDomain value from the Win32 networking stack.</li>
#   </ul>
  $domain = $domain

# <h2>facterversion</h2>
#   <p>Returns the version of the facter module.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the version constant.</p>
  $facterversion = $facterversion

# <h2>filesystems</h2>
#   <p>Provides an alphabetic list of file systems for use by block devices such as hard drives, media cards, etc.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Returns a comma-delimited list.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Linux only. FUSE will not be reported.</p>
  $filesystems = $filesystems

# <h2>ldom</h2>
#   <p>Returns a list of dynamic facts that describe the attributes of a Solaris logical domain.</p>
#   <p>The facts returned will include:</p>
#   <ul>
#     <li><code>DOMAINROLE</code></li>
#     <li><code>DOMAINNAME</code></li>
#     <li><code>DOMAINUUID</code></li>
#     <li><code>DOMAINCONTROL</code></li>
#     <li><code>DOMAINCHASSIS</code></li>
#   </ul>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the output of <code>virtinfo -ap</code>.</p>
#   <p><strong>Caveats:</strong></p>
  $ldom = $ldom

# <h2>fqdn</h2>
#   <p>Returns the fully qualified domain name of the host.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Simply joins the hostname fact with the domain name fact.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>No attempt is made to check that the two facts are accurate or that
#   the two facts go together. At no point is there any DNS resolution made
#   either.</p>
  $fqdn = $fqdn

# <h2>gid</h2>
#   <p>Returns the group ID of the user running the puppet process.</p>
#   <p><strong>Resolution</strong></p>
#   <p>Uses the output of <code>gid -ng</code>.</p>
  $gid = $gid

# <h2>hardwareisa</h2>
#   <p>Returns hardware processor type.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>On Solaris, Linux and the BSDs simply uses the output of “uname -p”.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Some linuxes return unknown to uname -p with relative ease.</p>
  $hardwareisa = $hardwareisa

# <h2>hardwaremodel</h2>
#   <p>Returns the hardware model of the system.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>Uses purely “uname -m” on all platforms other than AIX and Windows.</li>
#     <li>On AIX uses the parsed “modelname” output of “lsattr -El sys0 -a modelname”.</li>
#     <li>On Windows uses the ‘host_cpu’ pulled out of Ruby’s config.</li>
#   </ul>
  $hardwaremodel = $hardwaremodel

# <h2>hostname</h2>
#   <p>Returns the system’s short hostname.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On all system bar Darwin, parses the output of the “hostname” system command to everything before the first period.</li>
#     <li>On Darwin, uses the system configuration util to get the LocalHostName variable.</li>
#   </ul>
  $hostname = $hostname

# <h2>id</h2>
#   <p>Internal fact used to specify the program to return the currently running user id.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On all Unixes bar Solaris, just returns “whoami”.</li>
#     <li>On Solaris, parses the output of the “id” command to grab the username, as Solaris doesn’t have the whoami command.</li>
#   </ul>
  $id = $id

# <h2>interfaces</h2>
#   <p>Returns a list of the network interfaces on the machine. These 
#   interface names are also used to construct several additional facts.</p>
  $interfaces = $interfaces

# <h2>ipaddress</h2>
#   <p>Returns the main IP address for a host.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On the Unixes does an ifconfig, and returns the first non 127.0.0.0/8 subnetted IP it finds.</li>
#     <li>On Windows, it attempts to use the socket library and resolve the machine’s hostname via DNS.</li>
#     <li>On LDAP based hosts it tries to use either the win32/resolv 
#   library to resolve the hostname to an IP address, or on Unix, it uses 
#   the resolv library.</li>
#     <li>As a fall back for undefined systems, it tries to run the “host” command to resolve the machine’s hostname using the system DNS.</li>
#   </ul>
#   <p><strong>Caveats:</strong></p>
#   <ul>
#     <li>DNS resolution relies on working DNS infrastructure and resolvers on the host system.</li>
#     <li>The ifconfig parsing purely takes the first IP address it finds without any checking this is a useful IP address.</li>
#   </ul>
  $ipaddress = $ipaddress

# <h2>ipaddress6</h2>
#   <p>Returns the “main” IPv6 IP address of a system.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>OS-dependent code that parses the output of various networking tools 
#   and currently not very intelligent. Returns the first non-loopback and 
#   non-linklocal address found in the ouput unless a default route can be 
#   mapped to a routeable interface. Guessing an interface is currently only
#    possible with BSD type systems to many assumptions have to be made on 
#   other platforms to make this work with the current code. Most code 
#   ported or modeled after the ipaddress fact for the sake of similar 
#   functionality and familiar mechanics.</p>
  $ipaddress6 = $ipaddress6

# <h2>iphostnumber</h2>
#   <p>On selected versions of Darwin, returns the host’s IP address.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses either the scutil program to get the localhost name, or parses output of ifconfig for a MAC address.</p>
  $iphostnumber = $iphostnumber

# <h2>kernel</h2>
#   <p>Returns the operating system’s name.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses Ruby’s rbconfig to find <code>host_os</code>, if that is a Windows derivative, the returns ‘windows’, otherwise returns “uname -s” verbatim.</p>
  $kernel = $kernel

# <h2>kernelmajversion</h2>
#   <p>Returns the operating system’s release number’s major value.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Takes the first 2 elements of the kernel version as delimited by periods.</p>
  $kernelmajversion = $kernelmajversion

# <h2>kernelrelease</h2>
#   <p>Returns the operating system’s release number.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On AIX returns the output from the “oslevel -s” system command.</li>
#     <li>On Windows based systems, uses the win32ole gem to query Windows Management for the ‘<code>Win32_OperatingSystem</code>’ value.</li>
#     <li>Otherwise uses the output of “uname -r” system command.</li>
#   </ul>
  $kernelrelease = $kernelrelease

# <h2>kernelversion</h2>
#   <p>Returns the operating system’s kernel version.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On Solaris and SunOS based machines, returns the output of “uname -v”.</li>
#     <li>Otherwise returns the ‘kernerlrelease’ fact up to the first ‘-‘. This may be the entire ‘kernelrelease’ fact in many cases.</li>
#   </ul>
  $kernelversion = $kernelversion

# <h2>lsbdistcodename</h2>
#   <p>Returns Linux Standard Base information for the host.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the <code>lsb_release</code> system command.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Only works on Linux (and the kfreebsd derivative) systems.
#   Requires the <code>lsb_release</code> program, which may not be installed by default.
#   Also is as only as accurate as that program outputs.</p>
  $lsbdistcodename = $lsbdistcodename

# <h2>lsbdistdescription</h2>
#   <p>Returns Linux Standard Base information for the host.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the <code>lsb_release</code> system command.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Only works on Linux (and the kfreebsd derivative) systems.
#   Requires the <code>lsb_release</code> program, which may not be installed by default.
#   Also is as only as accurate as that program outputs.</p>
  $lsbdistdescription = $lsbdistdescription

# <h2>lsbdistid</h2>
#   <p>Returns Linux Standard Base information for the host.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the <code>lsb_release</code> system command.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Only works on Linux (and the kfreebsd derivative) systems.
#   Requires the <code>lsb_release</code> program, which may not be installed by default.
#   Also is as only as accurate as that program outputs.</p>
  $lsbdistid = $lsbdistid

# <h2>lsbdistrelease</h2>
#   <p>Returns Linux Standard Base information for the host.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the <code>lsb_release</code> system command.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Only works on Linux (and the kfreebsd derivative) systems. Requires the <code>lsb_release</code>
#   program, which may not be installed by default. Also is as only as accurate as that program outputs.</p>
  $lsbdistrelease = $lsbdistrelease

# <h2>lsbmajdistrelease</h2>
#   <p>Returns the major version of the operation system version as gleaned from the lsbdistrelease fact.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Parses the lsbdistrelease fact for numbers followed by a period and 
#   returns those, or just the lsbdistrelease fact if none were found.</p>
  $lsbmajdistrelease = $lsbmajdistrelease

# <h2>lsbminordistrelease</h2>
#   <p>Returns the minor version of the operation system version as gleaned from the lsbdistrelease fact.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Parses the lsbdistrelease fact for numbers preceded by a period and 
#   returns those. If there is no match, the fact is not present.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>If the version number has three components (e.g., ‘1.2.3’), only the second will be included in the fact.</p>
  $lsbminordistrelease = $lsbminordistrelease

# <h2>lsbrelease</h2>
#   <p>Returns Linux Standard Base information for the host.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the <code>lsb_release</code> system command.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Only works on Linux (and the kfreebsd derivative) systems.
#   Requires the <code>lsb_release</code> program, which may not be installed by default.
#   Also is as only as accurate as that program outputs.</p>
  $lsbrelease = $lsbrelease

# <h2>macaddress</h2>
#   <p>Returns the MAC address of the primary network interface.</p>
  $macaddress = $macaddress

# <h2>manufacturer</h2>
#   <p>Returns the hardware’s manufacturer information.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On OpenBSD, queries sysctl values, via a util class.</li>
#     <li>On SunOS Sparc, uses prtdiag via a util class.</li>
#     <li>On Windows, queries the system via a util class.</li>
#     <li>Uses  <code>util/manufacturer.rb</code> for fallback parsing.</li>
#   </ul>
  $manufacturer = $manufacturer

# <h2>memoryfree</h2>
#   <p>Returns the amount of free memory on the system.</p>
  $memoryfree = $memoryfree

# <h2>memorysize</h2>
#   <p>Returns the total amount of memory on the system.</p>
  $memorysize = $memorysize

# <h2>netmask</h2>
#   <p>Returns the netmask for the main interfaces.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses the facter/util/netmask library routines.</p>
  $netmask = $netmask

# <h2>operatingsystem</h2>
#   <p>Returns the name of the operating system.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>If the kernel is a Linux kernel, check for the existence of a selection of files in /etc/ to find the specific flavour.</li>
#     <li>On SunOS based kernels, return Solaris.</li>
#     <li>On systems other than Linux, use the kernel value.</li>
#   </ul>
  $operatingsystem = $operatingsystem

# <h2>operatingsystemmajrelease</h2>
#   <p>Returns the major release of the operating system.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Splits the version number from the <code>operatingsystemrelease</code> fact by <code>.</code> and returns the first element. Only available if <code>operatingsystem</code> returns <code>Amazon</code>, <code>Centos</code>, <code>CloudLinux</code>, <code>CumulusLinux</code>, <code>Debian</code>, <code>Fedora</code>, <code>OEL</code>, <code>OracleLinux</code>, <code>OVS</code>, <code>RedHat</code>, <code>Scientific</code>, or <code>SLC</code>.</p>
  $operatingsystemmajrelease = $operatingsystemmajrelease

# <h2>operatingsystemrelease</h2>
#   <p>Returns the release of the operating system.</p>
#   <p><strong>Resolution:</strong></p>
#   <ul>
#     <li>On RedHat derivatives, returns their ‘<code>/etc/&lt;variant&gt;-release</code>’ file.</li>
#     <li>On Debian, returns ‘<code>/etc/debian_version</code>’.</li>
#     <li>On Ubuntu, parses ‘/etc/issue’ for the release version.</li>
#     <li>On Suse, derivatives, parses ‘/etc/SuSE-release’ for a selection of version information.</li>
#     <li>On Slackware, parses ‘/etc/slackware-version’.</li>
#     <li>On Amazon Linux, returns the ‘lsbdistrelease’ value.</li>
#     <li>On all remaining systems, returns the ‘kernelrelease’ value.</li>
#   </ul>
  $operatingsystemrelease = $operatingsystemrelease

# <h2>osfamily</h2>
#   <p>Returns the operating system family.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Maps operating systems to operating system families, such as Linux distribution derivatives.
#   Adds mappings from specific operating systems to kernels in the case that it is relevant.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>This fact is completely reliant on the operatingsystem fact, and no heuristics are used.</p>
  $osfamily = $osfamily

# <h2>path</h2>
#   <p>Returns the $PATH variable.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Gets $PATH from the environment.</p>
  $path = $path

# <h2>physicalprocessorcount</h2>
#   <p>Returns the number of physical processors.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Attempts to use sysfs to get the physical IDs of the processors. Falls
#   back to <code>/proc/cpuinfo</code> and “physical id” if sysfs is not available.</p>
  $physicalprocessorcount = $physicalprocessorcount

# <h2>processor</h2>
#   <p>Additional Facts about the machine’s CPUs. Only used on BSDs.</p>
  $processor = $processor

# <h2>processorcount</h2>
#   <p>Returns the number of processors in the machine.</p>
  $processorcount = $processorcount

# <h2>productname</h2>
#   <p>Returns the model identifier of the machine.</p>
  $productname = $productname

# <h2>ps</h2>
#   <p>Internal fact for what to use to list all processes. Used by Service{} type in Puppet.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Assumes <code>ps -ef</code> for all operating systems other than BSD derivatives, where it uses
#   <code>ps auxwww</code>.</p>
  $ps = $ps

# <h2>puppetversion</h2>
#   <p>Returns the version of puppet installed.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Requres puppet via Ruby and returns its version constant.</p>
  $puppetversion = $puppetversion

# <h2>rubysitedir</h2>
#   <p>Returns Ruby’s site library directory.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Works out the version to major/minor (1.8, 1.9, etc), then joins that with all the $:
#   library paths.</p>
  $rubysitedir = $rubysitedir

# <h2>rubyversion</h2>
#   <p>Returns the version of Ruby facter is running under.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Returns <code>RUBY_VERSION</code>.</p>
  $rubyversion = $rubyversion

# <h2>selinux</h2>
#   <p>Determine whether SE Linux is enabled on the node.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Checks for the existence of the <code>enforce</code> file under the SE Linux mount point (e.g. <code>/selinux/enforce</code>)
#   and returns <code>true</code> if <code>/proc/self/attr/current</code> does not contain <code>kernel</code>.</p>
  $selinux = $selinux

# <h2>serialnumber</h2>
#   <p>Returns the machine’s serial number.</p>
  $serialnumber = $serialnumber

# <h2>sshdsakey</h2>
#   <p>Returns the host’s SSH DSA key.</p>
  $sshdsakey = $sshdsakey

# <h2>sshecdsakey</h2>
#   <p>Returns the host’s SSH ECDSA key.</p>
  $sshecdsakey = $sshecdsakey

# <h2>sshrsakey</h2>
#   <p>Returns the host’s SSH RSA key.</p>
  $sshrsakey = $sshrsakey

# <h2>swapencrypted</h2>
#   <p>Say whether the system’s swap space is encrypted. Only used on Darwin.</p>
  $swapencrypted = $swapencrypted

# <h2>swapfree</h2>
#   <p>Returns the amount of free swap on the system.</p>
  $swapfree = $swapfree

# <h2>swapsize</h2>
#   <p>Returns the total amount of swap space available on the system.</p>
  $swapsize = $swapsize

# <h2>timezone</h2>
#   <p>Returns the machine’s time zone.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses’s Ruby’s Time module’s Time.new call.</p>
  $timezone = $timezone

# <h2>type</h2>
#   <p>Returns the machine’s chassis type.</p>
  $type = $type

# <h2>uniqueid</h2>
#   <p>Returns the output of the <code>hostid</code> command.</p>
  $uniqueid = $uniqueid

# <h2>uptime</h2>
#   <p>Returns the system uptime in a human readable format.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Does basic maths on the “<code>uptime_seconds</code>” fact to return a count of
#   days, hours and minutes of uptime</p>
  $uptime = $uptime

# <h2>uuid</h2>
#   <p>Returns the universally unique identifier on systems where it is available.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Parses the output of <code>dmidecode</code>.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>Only available on some versions of Linux, including RHEL/CentOS.</p>
  $uuid = $uuid

# <h2>virtual</h2>
#   <p>Determine if the system’s hardware is real or virtualized.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Assumes physical unless proven otherwise.</p>
#   <ul>
#     <li>On Darwin, uses the macosx util module to acquire the 
#   SPDisplaysDataType and from that parses it to see if it’s VMWare or 
#   Parallels pretending to be the display.</li>
#     <li>On Linux, BSD, Solaris, and HPUX: Much of the logic here is 
#   obscured behind util/virtual.rb, which rather than document here, which 
#   would encourage drift, just refer to it. The Xen tests in here rely on <code>/sys</code> and <code>/proc</code>,
#    and check for the presence and contents of files in there. If after all
#    the other tests it’s still seen as physical, then it tries to parse the
#    output of <code>lspci</code>, <code>dmidecode</code> and <code>prtdiag</code>
#    for obvious signs of being under VMWare, Parallels, or VirtualBox. 
#   Finally, it checks for the existence of vmware-vmx, which would hint 
#   it’s VMWare.</li>
#   </ul>
#   <p><strong>Caveats:</strong></p>
#   <p>Many checks rely purely on existence of files.</p>
  $virtual = $virtual

# <h2>vlans</h2>
#   <p>On Linux, return a list of all the VLANs on the system.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>On Linux only, checks for and reads /proc/net/vlan/config and parses it.</p>
  $vlans = $vlans

# <h2>xendomains</h2>
#   <p>Returns the list of Xen domains on the Dom0.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>On a Xen Dom0 host, return a list of Xen domains using the ‘util/xendomains’ library.</p>
  $xendomains = $xendomains

# <h2>zonename</h2>
#   <p>Returns the name of the Solaris zone.</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses <code>zonename</code> to return the name of the Solaris zone.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>No support for Solaris 9 and below, where zones are not available.</p>
  $zonename = $zonename

# <h2>zones</h2>
#   <p><strong>Purpose:</strong></p>
#   <p>Returns the list of zones on the system and adds one <code>zones_</code> fact for each zone, with its state (e.g. “running,” “incomplete,” or “installed.”)</p>
#   <p><strong>Resolution:</strong></p>
#   <p>Uses <code>usr/sbin/zoneadm list -cp</code> to get the list of zones 
#   in separate parsable lines with a delimeter of ‘:’, which is used to 
#   split the line string and get the zone details.</p>
#   <p><strong>Caveats:</strong></p>
#   <p>No support for Solaris 9 and below, where zones are not available.</p>
  $zones = $zones

# <h2>augeas</h2>
#   <p>Apply a change or an array of changes to the filesystem
#   using the augeas tool.</p>
#   <p>Requires:</p>
#   <ul>
#     <li><a href="http://www.augeas.net/">Augeas</a></li>
#     <li>The ruby-augeas bindings</li>
#   </ul>
#   <p>Sample usage with a string:</p>
#   <pre><code>augeas{"test1" :
#     context =&gt; "/files/etc/sysconfig/firstboot",
#     changes =&gt; "set RUN_FIRSTBOOT YES",
#     onlyif  =&gt; "match other_value size &gt; 0",
#   }
#   </code></pre>
#   <p>Sample usage with an array and custom lenses:</p>
#   <pre><code>augeas{"jboss_conf":
#     context   =&gt; "/files",
#     changes   =&gt; [
#         "set etc/jbossas/jbossas.conf/JBOSS_IP $ipaddress",
#         "set etc/jbossas/jbossas.conf/JAVA_HOME /usr",
#       ],
#     load_path =&gt; "$/usr/share/jbossas/lenses",
#   }
#   </code></pre>
define augeas (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this task. Used for uniqueness.</p>
  $name,
# <h2>changes</h2>
#   <p>The changes which should be applied to the filesystem. This
#   can be a command or an array of commands. The following commands are supported:</p>
#   <ul>
#     <li><code>set &lt;PATH&gt; &lt;VALUE&gt;</code> — Sets the value <code>VALUE</code> at loction <code>PATH</code></li>
#     <li><code>setm &lt;PATH&gt; &lt;SUB&gt; &lt;VALUE&gt;</code> — Sets multiple nodes (matching <code>SUB</code> relative to <code>PATH</code>) to <code>VALUE</code></li>
#     <li><code>rm &lt;PATH&gt;</code> — Removes the node at location <code>PATH</code></li>
#     <li><code>remove &lt;PATH&gt;</code> — Synonym for <code>rm</code></li>
#     <li><code>clear &lt;PATH&gt;</code> — Sets the node at <code>PATH</code> to <code>NULL</code>, creating it if needed</li>
#     <li><code>clearm &lt;PATH&gt; &lt;SUB&gt;</code> — Sets multiple nodes (matching <code>SUB</code> relative to <code>PATH</code>) to <code>NULL</code></li>
#     <li><code>ins &lt;LABEL&gt; (before|after) &lt;PATH&gt;</code> — Inserts an empty node <code>LABEL</code> either before or after <code>PATH</code>.</li>
#     <li><code>insert &lt;LABEL&gt; &lt;WHERE&gt; &lt;PATH&gt;</code> — Synonym for <code>ins</code></li>
#     <li><code>mv &lt;PATH&gt; &lt;OTHER PATH&gt;</code> — Moves a node at <code>PATH</code> to the new location <code>OTHER PATH</code></li>
#     <li><code>move &lt;PATH&gt; &lt;OTHER PATH&gt;</code> — Synonym for <code>mv</code></li>
#     <li><code>defvar &lt;NAME&gt; &lt;PATH&gt;</code> — Sets Augeas variable <code>$NAME</code> to <code>PATH</code></li>
#     <li><code>defnode &lt;NAME&gt; &lt;PATH&gt; &lt;VALUE&gt;</code> — Sets Augeas variable <code>$NAME</code> to <code>PATH</code>, creating it with <code>VALUE</code> if needed</li>
#   </ul>
#   <p>If the <code>context</code> parameter is set, that value is prepended to any relative <code>PATH</code>s.</p>
  $changes,
# <h2>context</h2>
#   <p>Optional context path. This value is prepended to the paths of all
#   changes if the path is relative. If the <code>incl</code> parameter is set,
#   defaults to <code>/files + incl</code>; otherwise, defaults to the empty string.</p>
  $context,
# <h2>force</h2>
#   <p>Optional command to force the augeas type to execute even if it thinks changes
#   will not be made. This does not overide the <code>onlyif</code> parameter.</p>
  $force,
# <h2>incl</h2>
#   <p>Load only a specific file, e.g. <code>/etc/hosts</code>. This can greatly speed
#   up the execution the resource. When this parameter is set, you must also
#   set the <code>lens</code> parameter to indicate which lens to use.</p>
  $incl,
# <h2>lens</h2>
#   <p>Use a specific lens, e.g. <code>Hosts.lns</code>. When this parameter is set, you
#   must also set the <code>incl</code> parameter to indicate which file to load.
#   The Augeas documentation includes <a href="http://augeas.net/stock_lenses.html">a list of available lenses</a>.</p>
  $lens,
# <h2>load_path</h2>
#   <p>Optional colon-separated list or array of directories; these directories are searched for schema definitions. The agent’s <code>$libdir/augeas/lenses</code> path will always be added to support pluginsync.</p>
  $load_path,
# <h2>onlyif</h2>
#   <p>Optional augeas command and comparisons to control the execution of this type.
#   Supported onlyif syntax:</p>
#   <ul>
#     <li><code>get &lt;AUGEAS_PATH&gt; &lt;COMPARATOR&gt; &lt;STRING&gt;</code></li>
#     <li><code>match &lt;MATCH_PATH&gt; size &lt;COMPARATOR&gt; &lt;INT&gt;</code></li>
#     <li><code>match &lt;MATCH_PATH&gt; include &lt;STRING&gt;</code></li>
#     <li><code>match &lt;MATCH_PATH&gt; not_include &lt;STRING&gt;</code></li>
#     <li><code>match &lt;MATCH_PATH&gt; == &lt;AN_ARRAY&gt;</code></li>
#     <li><code>match &lt;MATCH_PATH&gt; != &lt;AN_ARRAY&gt;</code></li>
#   </ul>
#   <p>where:</p>
#   <ul>
#     <li><code>AUGEAS_PATH</code> is a valid path scoped by the context</li>
#     <li><code>MATCH_PATH</code> is a valid match synatx scoped by the context</li>
#     <li><code>COMPARATOR</code> is one of <code>&gt;, &gt;=, !=, ==, &lt;=,</code> or <code>&lt;</code></li>
#     <li><code>STRING</code> is a string</li>
#     <li><code>INT</code> is a number</li>
#     <li><code>AN_ARRAY</code> is in the form <code>['a string', 'another']</code></li>
#   </ul>
  $onlyif,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>augeas</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#augeas-provider-augeas"><code>augeas</code></a></li>
#   </ul>
  $provider,
# <h2>returns</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The expected return code from the augeas command. Should not be set.</p>
  $returns,
# <h2>root</h2>
#   <p>A file system path; all files loaded by Augeas are loaded underneath <code>root</code>.</p>
  $root,
# <h2>type_check</h2>
#   <p>Whether augeas should perform typechecking. Defaults to false.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
#   <h3 id="augeas-providers">Providers</h3>
#   <h4 id="augeas-provider-augeas">augeas</h4>
#   <ul>
#     <li>Supported features: <code>execute_changes</code>, <code>need_to_run?</code>, <code>parse_commands</code>.</li>
#   </ul>
#   <h3 id="augeas-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>execute_changes</code> — Actually make the changes</li>
#     <li><code>need_to_run?</code> — If the command should run</li>
#     <li><code>parse_commands</code> — Parse the command string</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>execute changes</th>
#         <th>need to run?</th>
#         <th>parse commands</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>augeas</td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
  $type_check,
) {
  # Stub
}

# <h2>computer</h2>
#   <p>Computer object management using DirectoryService
#   on OS X.</p>
#   <p>Note that these are distinctly different kinds of objects to ‘hosts’,
#   as they require a MAC address and can have all sorts of policy attached to
#   them.</p>
#   <p>This provider only manages Computer objects in the local directory service
#   domain, not in remote directories.</p>
#   <p>If you wish to manage <code>/etc/hosts</code> file on Mac OS X, then simply use the host
#   type as per other platforms.</p>
#   <p>This type primarily exists to create localhost Computer objects that MCX
#   policy can then be attached to.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the plist file representing a
#   Computer object (located at <code>/var/db/dslocal/nodes/Default/computers/{name}.plist</code>),
#   the Computer resource will autorequire it.</p>
define computer (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The authoritative ‘short’ name of the computer record.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Control the existences of this computer record. Set this attribute to
#   <code>present</code> to ensure the computer record exists.  Set it to <code>absent</code>
#   to delete any computer records with this name</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>en_address</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The MAC address of the primary network interface. Must match en0.</p>
  $en_address,
# <h2>ip_address</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The IP Address of the Computer object.</p>
  $ip_address,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>computer</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#computer-provider-directoryservice"><code>directoryservice</code></a></li>
#   </ul>
  $provider,
# <h2>realname</h2>
#   <p>The ‘long’ name of the computer record.</p>
#   <h3 id="computer-providers">Providers</h3>
#   <h4 id="computer-provider-directoryservice">directoryservice</h4>
#   <p>Computer object management using DirectoryService on OS X.
#   Note that these are distinctly different kinds of objects to ‘hosts’,
#   as they require a MAC address and can have all sorts of policy attached to
#   them.</p>
#   <p>This provider only manages Computer objects in the local directory service
#   domain, not in remote directories.</p>
#   <p>If you wish to manage /etc/hosts on Mac OS X, then simply use the host
#   type as per other platforms.</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>darwin</code>.</li>
#   </ul>
#   <hr>
  $realname,
) {
  # Stub
}

# <h2>cron</h2>
#   <p>Installs and manages cron jobs.  Every cron resource requires a command
#   and user attribute, as well as at least one periodic attribute (hour,
#   minute, month, monthday, weekday, or special).  While the name of the cron
#   job is not part of the actual job, the name is stored in a comment beginning with
#   <code># Puppet Name: </code>. These comments are used to match crontab entries created by
#   Puppet with cron resources.</p>
#   <p>If an existing crontab entry happens to match the scheduling and command of a
#   cron resource that has never been synched, Puppet will defer to the existing
#   crontab entry and will not create a new entry tagged with the <code># Puppet Name: </code>
#   comment.</p>
#   <p>Example:</p>
#   <pre><code>cron { logrotate:
#     command =&gt; "/usr/sbin/logrotate",
#     user    =&gt; root,
#     hour    =&gt; 2,
#     minute  =&gt; 0
#   }
#   </code></pre>
#   <p>Note that all periodic attributes can be specified as an array of values:</p>
#   <pre><code>cron { logrotate:
#     command =&gt; "/usr/sbin/logrotate",
#     user    =&gt; root,
#     hour    =&gt; [2, 4]
#   }
#   </code></pre>
#   <p>…or using ranges or the step syntax <code>*/2</code> (although there’s no guarantee
#   that your <code>cron</code> daemon supports these):</p>
#   <pre><code>cron { logrotate:
#     command =&gt; "/usr/sbin/logrotate",
#     user    =&gt; root,
#     hour    =&gt; ['2-4'],
#     minute  =&gt; '*/10'
#   }
#   </code></pre>
#   <p>An important note: <em>the Cron type will not reset parameters that are
#   removed from a manifest</em>. For example, removing a <code>minute =&gt; 10</code> parameter
#   will not reset the minute component of the associated cronjob to <code>*</code>.
#   These changes must be expressed by setting the parameter to
#   <code>minute =&gt; absent</code> because Puppet only manages parameters that are out of
#   sync with manifest entries.</p>
define cron (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The symbolic name of the cron job.  This name
#   is used for human reference only and is generated automatically
#   for cron jobs found on the system.  This generally won’t
#   matter, as Puppet will do its best to match existing cron jobs
#   against specified jobs (and Puppet adds a comment to cron jobs it adds),
#   but it is at least possible that converting from unmanaged jobs to
#   managed jobs might require manual intervention.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>command</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The command to execute in the cron job.  The environment
#   provided to the command varies by local system rules, and it is
#   best to always provide a fully qualified command.  The user’s
#   profile is not sourced when the command is run, so if the
#   user’s environment is desired it should be sourced manually.</p>
#   <p>All cron parameters support <code>absent</code> as a value; this will
#   remove any existing values for that field.</p>
  $command,
# <h2>environment</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Any environment settings associated with this cron job.  They
#   will be stored between the header and the job in the crontab.  There
#   can be no guarantees that other, earlier settings will not also
#   affect a given cron job.</p>
#   <p>Also, Puppet cannot automatically determine whether an existing,
#   unmanaged environment setting is associated with a given cron
#   job.  If you already have cron jobs with environment settings,
#   then Puppet will keep those settings in the same place in the file,
#   but will not associate them with a specific job.</p>
#   <p>Settings should be specified exactly as they should appear in
#   the crontab, e.g., <code>PATH=/bin:/usr/bin:/usr/sbin</code>.</p>
  $environment,
# <h2>hour</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The hour at which to run the cron job. Optional;
#   if specified, must be between 0 and 23, inclusive.</p>
  $hour,
# <h2>minute</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The minute at which to run the cron job.
#   Optional; if specified, must be between 0 and 59, inclusive.</p>
  $minute,
# <h2>month</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The month of the year.  Optional; if specified
#   must be between 1 and 12 or the month name (e.g., December).</p>
  $month,
# <h2>monthday</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The day of the month on which to run the
#   command.  Optional; if specified, must be between 1 and 31.</p>
  $monthday,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>cron</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#cron-provider-crontab"><code>crontab</code></a></li>
#   </ul>
  $provider,
# <h2>special</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A special value such as ‘reboot’ or ‘annually’.
#   Only available on supported systems such as Vixie Cron.
#   Overrides more specific time of day/week settings.
#   Set to ‘absent’ to make puppet revert to a plain numeric schedule.</p>
  $special,
# <h2>target</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The username that will own the cron entry. Defaults to
#   the value of $USER for the shell that invoked Puppet, or root if $USER
#   is empty.</p>
  $target,
# <h2>user</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user to run the command as.  This user must
#   be allowed to run cron jobs, which is not currently checked by
#   Puppet.</p>
#   <p>The user defaults to whomever Puppet is running as.</p>
  $user,
# <h2>weekday</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The weekday on which to run the command.
#   Optional; if specified, must be between 0 and 7, inclusive, with
#   0 (or 7) being Sunday, or must be the name of the day (e.g., Tuesday).</p>
#   <h3 id="cron-providers">Providers</h3>
#   <h4 id="cron-provider-crontab">crontab</h4>
#   <ul>
#     <li>Required binaries: <code>crontab</code>.</li>
#   </ul>
#   <hr>
  $weekday,
) {
  # Stub
}

# <h2>exec</h2>
#   <p>Executes external commands.</p>
#   <p>Any command in an <code>exec</code> resource <strong>must</strong> be able to run multiple times
#   without causing harm — that is, it must be <em>idempotent</em>. There are three
#   main ways for an exec to be idempotent:</p>
#   <ul>
#     <li>The command itself is already idempotent. (For example, <code>apt-get update</code>.)</li>
#     <li>The exec has an <code>onlyif</code>, <code>unless</code>, or <code>creates</code> attribute, which prevents
#   Puppet from running the command unless some condition is met.</li>
#     <li>The exec has <code>refreshonly =&gt; true</code>, which only allows Puppet to run the
#   command when some other resource is changed. (See the notes on refreshing
#   below.)</li>
#   </ul>
#   <p>A caution: There’s a widespread tendency to use collections of execs to
#   manage resources that aren’t covered by an existing resource type. This
#   works fine for simple tasks, but once your exec pile gets complex enough
#   that you really have to think to understand what’s happening, you should
#   consider developing a custom resource type instead, as it will be much
#   more predictable and maintainable.</p>
#   <p><strong>Refresh:</strong> <code>exec</code> resources can respond to refresh events (via
#   <code>notify</code>, <code>subscribe</code>, or the <code>~&gt;</code> arrow). The refresh behavior of execs
#   is non-standard, and can be affected by the <code>refresh</code> and
#   <code>refreshonly</code> attributes:</p>
#   <ul>
#     <li>If <code>refreshonly</code> is set to true, the exec will <em>only</em> run when it receives an
#   event. This is the most reliable way to use refresh with execs.</li>
#     <li>If the exec already would have run and receives an event, it will run its
#   command <strong>up to two times.</strong> (If an <code>onlyif</code>, <code>unless</code>, or <code>creates</code> condition
#   is no longer met after the first run, the second run will not occur.)</li>
#     <li>If the exec already would have run, has a <code>refresh</code> command, and receives an
#   event, it will run its normal command, then run its <code>refresh</code> command
#   (as long as any <code>onlyif</code>, <code>unless</code>, or <code>creates</code> conditions are still met
#   after the normal command finishes).</li>
#     <li>If the exec would <strong>not</strong> have run (due to an <code>onlyif</code>, <code>unless</code>, or <code>creates</code>
#   attribute) and receives an event, it still will not run.</li>
#     <li>If the exec has <code>noop =&gt; true</code>, would otherwise have run, and receives
#   an event from a non-noop resource, it will run once (or run its <code>refresh</code>
#   command instead, if it has one).</li>
#   </ul>
#   <p>In short: If there’s a possibility of your exec receiving refresh events,
#   it becomes doubly important to make sure the run conditions are restricted.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing an exec’s cwd or the executable
#   file used in an exec’s command, the exec resource will autorequire those
#   files. If Puppet is managing the user that an exec should run as, the
#   exec resource will autorequire that user.</p>
define exec (
# <h2>command</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The actual command to execute.  Must either be fully qualified
#   or a search path for the command must be provided.  If the command
#   succeeds, any output produced will be logged at the instance’s
#   normal log level (usually <code>notice</code>), but if the command fails
#   (meaning its return code does not match the specified code) then
#   any output is logged at the <code>err</code> log level.</p>
  $command,
# <h2>creates</h2>
#   <p>A file to look for before running the command. The command will
#   only run if the file <strong>doesn’t exist.</strong></p>
#   <p>This parameter doesn’t cause Puppet to create a file; it is only
#   useful if <strong>the command itself</strong> creates a file.</p>
#   <pre><code>exec { "tar -xf /Volumes/nfs02/important.tar":
#     cwd     =&gt; "/var/tmp",
#     creates =&gt; "/var/tmp/myfile",
#     path    =&gt; ["/usr/bin", "/usr/sbin"]
#   }
#   </code></pre>
#   <p>In this example, <code>myfile</code> is assumed to be a file inside
#   <code>important.tar</code>. If it is ever deleted, the exec will bring it
#   back by re-extracting the tarball. If <code>important.tar</code> does <strong>not</strong>
#   actually contain <code>myfile</code>, the exec will keep running every time
#   Puppet runs.</p>
  $creates,
# <h2>cwd</h2>
#   <p>The directory from which to run the command.  If
#   this directory does not exist, the command will fail.</p>
  $cwd,
# <h2>environment</h2>
#   <p>Any additional environment variables you want to set for a
#   command.  Note that if you use this to set PATH, it will override
#   the <code>path</code> attribute.  Multiple environment variables should be
#   specified as an array.</p>
  $environment,
# <h2>group</h2>
#   <p>The group to run the command as.  This seems to work quite
#   haphazardly on different platforms – it is a platform issue
#   not a Ruby or Puppet one, since the same variety exists when
#   running commands as different users in the shell.</p>
  $group,
# <h2>logoutput</h2>
#   <p>Whether to log command output in addition to logging the
#   exit code.  Defaults to <code>on_failure</code>, which only logs the output
#   when the command has an exit code that does not match any value
#   specified by the <code>returns</code> attribute. As with any resource type,
#   the log level can be controlled with the <code>loglevel</code> metaparameter.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>on_failure</code>.</p>
  $logoutput,
# <h2>onlyif</h2>
#   <p>If this parameter is set, then this <code>exec</code> will only run if
#   the command returns 0.  For example:</p>
#   <pre><code>exec { "logrotate":
#     path   =&gt; "/usr/bin:/usr/sbin:/bin",
#     onlyif =&gt; "test `du /var/log/messages | cut -f1` -gt 100000"
#   }
#   </code></pre>
#   <p>This would run <code>logrotate</code> only if that test returned true.</p>
#   <p>Note that this command follows the same rules as the main command,
#   which is to say that it must be fully qualified if the path is not set.</p>
#   <p>Also note that onlyif can take an array as its value, e.g.:</p>
#   <pre><code>onlyif =&gt; ["test -f /tmp/file1", "test -f /tmp/file2"]
#   </code></pre>
#   <p>This will only run the exec if <em>all</em> conditions in the array return true.</p>
  $onlyif,
# <h2>path</h2>
#   <p>The search path used for command execution.
#   Commands must be fully qualified if no path is specified.  Paths
#   can be specified as an array or as a ‘:’ separated list.</p>
  $path,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>exec</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#exec-provider-posix"><code>posix</code></a></li>
#     <li><a href="#exec-provider-shell"><code>shell</code></a></li>
#     <li><a href="#exec-provider-windows"><code>windows</code></a></li>
#   </ul>
  $provider,
# <h2>refresh</h2>
#   <p>How to refresh this command.  By default, the exec is just
#   called again when it receives an event from another resource,
#   but this parameter allows you to define a different command
#   for refreshing.</p>
  $refresh,
# <h2>refreshonly</h2>
#   <p>The command should only be run as a
#   refresh mechanism for when a dependent object is changed.  It only
#   makes sense to use this option when this command depends on some
#   other object; it is useful for triggering an action:</p>
#   <pre><code># Pull down the main aliases file
#   file { "/etc/aliases":
#     source =&gt; "puppet://server/module/aliases"
#   }
#   # Rebuild the database, but only when the file changes
#   exec { newaliases:
#     path        =&gt; ["/usr/bin", "/usr/sbin"],
#     subscribe   =&gt; File["/etc/aliases"],
#     refreshonly =&gt; true
#   }
#   </code></pre>
#   <p>Note that only <code>subscribe</code> and <code>notify</code> can trigger actions, not <code>require</code>,
#   so it only makes sense to use <code>refreshonly</code> with <code>subscribe</code> or <code>notify</code>.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $refreshonly,
# <h2>returns</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The expected return code(s).  An error will be returned if the
#   executed command returns something else.  Defaults to 0. Can be
#   specified as an array of acceptable return codes or a single value.</p>
  $returns,
# <h2>timeout</h2>
#   <p>The maximum time the command should take.  If the command takes
#   longer than the timeout, the command is considered to have failed
#   and will be stopped. The timeout is specified in seconds. The default
#   timeout is 300 seconds and you can set it to 0 to disable the timeout.</p>
  $timeout,
# <h2>tries</h2>
#   <p>The number of times execution of the command should be tried.
#   Defaults to ‘1’. This many attempts will be made to execute
#   the command until an acceptable return code is returned.
#   Note that the timeout paramater applies to each try rather than
#   to the complete set of tries.</p>
  $tries,
# <h2>try_sleep</h2>
#   <p>The time to sleep in seconds between ‘tries’.</p>
  $try_sleep,
# <h2>umask</h2>
#   <p>Sets the umask to be used while executing this command</p>
  $umask,
# <h2>unless</h2>
#   <p>If this parameter is set, then this <code>exec</code> will run unless
#   the command returns 0.  For example:</p>
#   <pre><code>exec { "/bin/echo root &gt;&gt; /usr/lib/cron/cron.allow":
#     path   =&gt; "/usr/bin:/usr/sbin:/bin",
#     unless =&gt; "grep root /usr/lib/cron/cron.allow 2&gt;/dev/null"
#   }
#   </code></pre>
#   <p>This would add <code>root</code> to the cron.allow file (on Solaris) unless
#   <code>grep</code> determines it’s already there.</p>
#   <p>Note that this command follows the same rules as the main command,
#   which is to say that it must be fully qualified if the path is not set.</p>
  $unless,
# <h2>user</h2>
#   <p>The user to run the command as.  Note that if you
#   use this then any error output is not currently captured.  This
#   is because of a bug within Ruby.  If you are using Puppet to
#   create this user, the exec will automatically require the user,
#   as long as it is specified by name.</p>
#   <p>Please note that the $HOME environment variable is not automatically set
#   when using this attribute.</p>
#   <h3 id="exec-providers">Providers</h3>
#   <h4 id="exec-provider-posix">posix</h4>
#   <p>Executes external binaries directly, without passing through a shell or
#   performing any interpolation. This is a safer and more predictable way
#   to execute most commands, but prevents the use of globbing and shell
#   built-ins (including control logic like “for” and “if” statements).</p>
#   <ul>
#     <li>Default for <code>feature</code> == <code>posix</code>.</li>
#   </ul>
#   <h4 id="exec-provider-shell">shell</h4>
#   <p>Passes the provided command through <code>/bin/sh</code>; only available on
#   POSIX systems. This allows the use of shell globbing and built-ins, and
#   does not require that the path to a command be fully-qualified. Although
#   this can be more convenient than the <code>posix</code> provider, it also means that
#   you need to be more careful with escaping; as ever, with great power comes
#   etc. etc.</p>
#   <p>This provider closely resembles the behavior of the <code>exec</code> type
#   in Puppet 0.25.x.</p>
#   <h4 id="exec-provider-windows">windows</h4>
#   <p>Execute external binaries on Windows systems. As with the <code>posix</code>
#   provider, this provider directly calls the command with the arguments
#   given, without passing it through a shell or performing any interpolation.
#   To use shell built-ins — that is, to emulate the <code>shell</code> provider on
#   Windows — a command must explicitly invoke the shell:</p>
#   <pre><code>exec {'echo foo':
#     command =&gt; 'cmd.exe /c echo "foo"',
#   }
#   </code></pre>
#   <p>If no extension is specified for a command, Windows will use the <code>PATHEXT</code>
#   environment variable to locate the executable.</p>
#   <p><strong>Note on PowerShell scripts:</strong> PowerShell’s default <code>restricted</code>
#   execution policy doesn’t allow it to run saved scripts. To run PowerShell
#   scripts, specify the <code>remotesigned</code> execution policy as part of the
#   command:</p>
#   <pre><code>exec { 'test':
#     path    =&gt; 'C:/Windows/System32/WindowsPowerShell/v1.0',
#     command =&gt; 'powershell -executionpolicy remotesigned -file C:/test.ps1',
#   }
#   </code></pre>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>windows</code>.</li>
#   </ul>
#   <hr>
  $user,
) {
  # Stub
}

# <h2>file</h2>
#   <p>Manages files, including their content, ownership, and permissions.</p>
#   <p>The <code>file</code> type can manage normal files, directories, and symlinks; the
#   type should be specified in the <code>ensure</code> attribute. Note that symlinks cannot
#   be managed on Windows systems.</p>
#   <p>File contents can be managed directly with the <code>content</code> attribute, or
#   downloaded from a remote source using the <code>source</code> attribute; the latter
#   can also be used to recursively serve directories (when the <code>recurse</code>
#   attribute is set to <code>true</code> or <code>local</code>). On Windows, note that file
#   contents are managed in binary mode; Puppet never automatically translates
#   line endings.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the user or group that owns a
#   file, the file resource will autorequire them. If Puppet is managing any
#   parent directories of a file, the file resource will autorequire them.</p>
define file (
# <h2>path</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The path to the file to manage.  Must be fully qualified.</p>
#   <p>On Windows, the path should include the drive letter and should use <code>/</code> as
#   the separator character (rather than <code>\\</code>).</p>
  $path,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether the file should exist, and if so what kind of file it should be.
#   Possible values are <code>present</code>, <code>absent</code>, <code>file</code>, <code>directory</code>, and <code>link</code>.</p>
#   <ul>
#     <li><code>present</code> will accept any form of file existence, and will create a
#   normal file if the file is missing. (The file will have no content
#   unless the <code>content</code> or <code>source</code> attribute is used.)</li>
#     <li><code>absent</code> will make sure the file doesn’t exist, deleting it
#   if necessary.</li>
#     <li><code>file</code> will make sure it’s a normal file, and enables use of the
#   <code>content</code> or <code>source</code> attribute.</li>
#     <li><code>directory</code> will make sure it’s a directory, and enables use of the
#   <code>source</code>, <code>recurse</code>, <code>recurselimit</code>, <code>ignore</code>, and <code>purge</code> attributes.</li>
#     <li><code>link</code> will make sure the file is a symlink, and <strong>requires</strong> that you
#   also set the <code>target</code> attribute. Symlinks are supported on all Posix
#   systems and on Windows Vista / 2008 and higher. On Windows, managing
#   symlinks requires puppet agent’s user account to have the “Create
#   Symbolic Links” privilege; this can be configured in the “User Rights
#   Assignment” section in the Windows policy editor. By default, puppet
#   agent runs as the Administrator account, which does have this privilege.</li>
#   </ul>
#   <p>Puppet avoids destroying directories unless the <code>force</code> attribute is set
#   to <code>true</code>. This means that if a file is currently a directory, setting
#   <code>ensure</code> to anything but <code>directory</code> or <code>present</code> will cause Puppet to
#   skip managing the resource and log either a notice or an error.</p>
#   <p>There is one other non-standard value for <code>ensure</code>. If you specify the
#   path to another file as the ensure value, it is equivalent to specifying
#   <code>link</code> and using that path as the <code>target</code>:</p>
#   <pre><code># Equivalent resources:
#   file { "/etc/inetd.conf":
#     ensure =&gt; "/etc/inet/inetd.conf",
#   }
#   file { "/etc/inetd.conf":
#     ensure =&gt; link,
#     target =&gt; "/etc/inet/inetd.conf",
#   }
#   </code></pre>
#   <p>However, we recommend using <code>link</code> and <code>target</code> explicitly, since this
#   behavior can be harder to read.</p>
#   <p>Valid values are <code>absent</code> (also called <code>false</code>), <code>file</code>, <code>present</code>, <code>directory</code>, <code>link</code>. Values can match <code>/./</code>.</p>
  $ensure,
# <h2>backup</h2>
#   <p>Whether (and how) file content should be backed up before being replaced.
#   This attribute works best as a resource default in the site manifest
#   (<code>File { backup =&gt; main }</code>), so it can affect all file resources.</p>
#   <ul>
#     <li>If set to <code>false</code>, file content won’t be backed up.</li>
#     <li>If set to a string beginning with <code>.</code> (e.g., <code>.puppet-bak</code>), Puppet will
#   use copy the file in the same directory with that value as the extension
#   of the backup. (A value of <code>true</code> is a synonym for <code>.puppet-bak</code>.)</li>
#     <li>If set to any other string, Puppet will try to back up to a filebucket
#   with that title. See the <code>filebucket</code> resource type for more details.
#   (This is the preferred method for backup, since it can be centralized
#   and queried.)</li>
#   </ul>
#   <p>Default value: <code>puppet</code>, which backs up to a filebucket of the same name.
#   (Puppet automatically creates a <strong>local</strong> filebucket named <code>puppet</code> if one
#   doesn’t already exist.)</p>
#   <p>Backing up to a local filebucket isn’t particularly useful. If you want
#   to make organized use of backups, you will generally want to use the
#   puppet master server’s filebucket service. This requires declaring a
#   filebucket resource and a resource default for the <code>backup</code> attribute
#   in site.pp:</p>
#   <pre><code># /etc/puppet/manifests/site.pp
#   filebucket { 'main':
#     path   =&gt; false,                # This is required for remote filebuckets.
#     server =&gt; 'puppet.example.com', # Optional; defaults to the configured puppet master.
#   }
#   File { backup =&gt; main, }
#   </code></pre>
#   <p>If you are using multiple puppet master servers, you will want to
#   centralize the contents of the filebucket. Either configure your load
#   balancer to direct all filebucket traffic to a single master, or use
#   something like an out-of-band rsync task to synchronize the content on all
#   masters.</p>
  $backup,
# <h2>checksum</h2>
#   <p>The checksum type to use when determining whether to replace a file’s contents.</p>
#   <p>The default checksum type is md5.</p>
#   <p>Valid values are <code>md5</code>, <code>md5lite</code>, <code>mtime</code>, <code>ctime</code>, <code>none</code>.</p>
  $checksum,
# <h2>content</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The desired contents of a file, as a string. This attribute is mutually
#   exclusive with <code>source</code> and <code>target</code>.</p>
#   <p>Newlines and tabs can be specified in double-quoted strings using
#   standard escaped syntax — \n for a newline, and \t for a tab.</p>
#   <p>With very small files, you can construct content strings directly in
#   the manifest…</p>
#   <pre><code>define resolve(nameserver1, nameserver2, domain, search) {
#       $str = "search $search
#           domain $domain
#           nameserver $nameserver1
#           nameserver $nameserver2
#           "
#       file { "/etc/resolv.conf":
#         content =&gt; "$str",
#       }
#   }
#   </code></pre>
#   <p>…but for larger files, this attribute is more useful when combined with the
#   <a href="http://docs.puppetlabs.com/references/latest/function.html#template">template</a>
#   function.</p>
  $content,
# <h2>ctime</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A read-only state to check the file ctime. On most modern *nix-like
#   systems, this is the time of the most recent change to the owner, group,
#   permissions, or content of the file.</p>
  $ctime,
# <h2>force</h2>
#   <p>Perform the file operation even if it will destroy one or more directories.
#   You must use <code>force</code> in order to:</p>
#   <ul>
#     <li><code>purge</code> subdirectories</li>
#     <li>Replace directories with files or links</li>
#     <li>Remove a directory when <code>ensure =&gt; absent</code></li>
#   </ul>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $force,
# <h2>group</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Which group should own the file.  Argument can be either a group
#   name or a group ID.</p>
#   <p>On Windows, a user (such as “Administrator”) can be set as a file’s group
#   and a group (such as “Administrators”) can be set as a file’s owner;
#   however, a file’s owner and group shouldn’t be the same. (If the owner
#   is also the group, files with modes like <code>0640</code> will cause log churn, as
#   they will always appear out of sync.)</p>
  $group,
# <h2>ignore</h2>
#   <p>A parameter which omits action on files matching
#   specified patterns during recursion.  Uses Ruby’s builtin globbing
#   engine, so shell metacharacters are fully supported, e.g. <code>[a-z]*</code>.
#   Matches that would descend into the directory structure are ignored,
#   e.g., <code>*/*</code>.</p>
  $ignore,
# <h2>links</h2>
#   <p>How to handle links during file actions.  During file copying,
#   <code>follow</code> will copy the target file instead of the link, <code>manage</code>
#   will copy the link itself, and <code>ignore</code> will just pass it by.
#   When not copying, <code>manage</code> and <code>ignore</code> behave equivalently
#   (because you cannot really ignore links entirely during local
#   recursion), and <code>follow</code> will manage the file to which the link points.</p>
#   <p>Valid values are <code>follow</code>, <code>manage</code>.</p>
  $links,
# <h2>mode</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The desired permissions mode for the file, in symbolic or numeric
#   notation. Puppet uses traditional Unix permission schemes and translates
#   them to equivalent permissions for systems which represent permissions
#   differently, including Windows.</p>
#   <p>Numeric modes should use the standard four-digit octal notation of
#   <code>&lt;setuid/setgid/sticky&gt;&lt;owner&gt;&lt;group&gt;&lt;other&gt;</code> (e.g. 0644). Each of the
#   “owner,” “group,” and “other” digits should be a sum of the
#   permissions for that class of users, where read = 4, write = 2, and
#   execute/search = 1. When setting numeric permissions for
#   directories, Puppet sets the search permission wherever the read
#   permission is set.</p>
#   <p>Symbolic modes should be represented as a string of comma-separated
#   permission clauses, in the form <code>&lt;who&gt;&lt;op&gt;&lt;perm&gt;</code>:</p>
#   <ul>
#     <li>“Who” should be u (user), g (group), o (other), and/or a (all)</li>
#     <li>“Op” should be = (set exact permissions), + (add select permissions),
#   or - (remove select permissions)</li>
#     <li>“Perm” should be one or more of:
#       <ul>
#         <li>r (read)</li>
#         <li>w (write)</li>
#         <li>x (execute/search)</li>
#         <li>t (sticky)</li>
#         <li>s (setuid/setgid)</li>
#         <li>X (execute/search if directory or if any one user can execute)</li>
#         <li>u (user’s current permissions)</li>
#         <li>g (group’s current permissions)</li>
#         <li>o (other’s current permissions)</li>
#       </ul>
#     </li>
#   </ul>
#   <p>Thus, mode <code>0664</code> could be represented symbolically as either <code>a=r,ug+w</code>
#   or <code>ug=rw,o=r</code>.  However, symbolic modes are more expressive than numeric
#   modes: a mode only affects the specified bits, so <code>mode =&gt; 'ug+w'</code> will
#   set the user and group write bits, without affecting any other bits.</p>
#   <p>See the manual page for GNU or BSD <code>chmod</code> for more details
#   on numeric and symbolic modes.</p>
#   <p>On Windows, permissions are translated as follows:</p>
#   <ul>
#     <li>Owner and group names are mapped to Windows SIDs</li>
#     <li>The “other” class of users maps to the “Everyone” SID</li>
#     <li>The read/write/execute permissions map to the <code>FILE_GENERIC_READ</code>,
#   <code>FILE_GENERIC_WRITE</code>, and <code>FILE_GENERIC_EXECUTE</code> access rights; a
#   file’s owner always has the <code>FULL_CONTROL</code> right</li>
#     <li>“Other” users can’t have any permissions a file’s group lacks,
#   and its group can’t have any permissions its owner lacks; that is, 0644
#   is an acceptable mode, but 0464 is not.</li>
#   </ul>
  $mode,
# <h2>mtime</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A read-only state to check the file mtime. On *nix-like systems, this
#   is the time of the most recent change to the content of the file.</p>
  $mtime,
# <h2>owner</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user to whom the file should belong.  Argument can be a user name or a
#   user ID.</p>
#   <p>On Windows, a group (such as “Administrators”) can be set as a file’s owner
#   and a user (such as “Administrator”) can be set as a file’s group; however,
#   a file’s owner and group shouldn’t be the same. (If the owner is also
#   the group, files with modes like <code>0640</code> will cause log churn, as they
#   will always appear out of sync.)</p>
  $owner,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>file</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#file-provider-posix"><code>posix</code></a></li>
#     <li><a href="#file-provider-windows"><code>windows</code></a></li>
#   </ul>
  $provider,
# <h2>purge</h2>
#   <p>Whether unmanaged files should be purged. This option only makes
#   sense when managing directories with <code>recurse =&gt; true</code>.</p>
#   <ul>
#     <li>When recursively duplicating an entire directory with the <code>source</code>
#   attribute, <code>purge =&gt; true</code> will automatically purge any files
#   that are not in the source directory.</li>
#     <li>When managing files in a directory as individual resources,
#   setting <code>purge =&gt; true</code> will purge any files that aren’t being
#   specifically managed.</li>
#   </ul>
#   <p>If you have a filebucket configured, the purged files will be uploaded,
#   but if you do not, this will destroy data.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $purge,
# <h2>recurse</h2>
#   <p>Whether and how to do recursive file management. Options are:</p>
#   <ul>
#     <li><code>inf,true</code> — Regular style recursion on both remote and local
#   directory structure.  See <code>recurselimit</code> to specify a limit to the
#   recursion depth.</li>
#     <li><code>remote</code> — Descends recursively into the remote (source) directory
#   but not the local (destination) directory. Allows copying of
#   a few files into a directory containing many
#   unmanaged files without scanning all the local files.
#   This can only be used when a source parameter is specified.</li>
#     <li><code>false</code> — Default of no recursion.</li>
#   </ul>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>inf</code>, <code>remote</code>.</p>
  $recurse,
# <h2>recurselimit</h2>
#   <p>How deeply to do recursive management.</p>
#   <p>Values can match <code>/^[0-9]+$/</code>.</p>
  $recurselimit,
# <h2>replace</h2>
#   <p>Whether to replace a file or symlink that already exists on the local system but
#   whose content doesn’t match what the <code>source</code> or <code>content</code> attribute
#   specifies.  Setting this to false allows file resources to initialize files
#   without overwriting future changes.  Note that this only affects content;
#   Puppet will still manage ownership and permissions. Defaults to <code>true</code>.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $replace,
# <h2>selinux_ignore_defaults</h2>
#   <p>If this is set then Puppet will not ask SELinux (via matchpathcon) to
#   supply defaults for the SELinux attributes (seluser, selrole,
#   seltype, and selrange). In general, you should leave this set at its
#   default and only set it to true when you need Puppet to not try to fix
#   SELinux labels automatically.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $selinux_ignore_defaults,
# <h2>selrange</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>What the SELinux range component of the context of the file should be.
#   Any valid SELinux range component is accepted.  For example <code>s0</code> or
#   <code>SystemHigh</code>.  If not specified it defaults to the value returned by
#   matchpathcon for the file, if any exists.  Only valid on systems with
#   SELinux support enabled and that have support for MCS (Multi-Category
#   Security).</p>
  $selrange,
# <h2>selrole</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>What the SELinux role component of the context of the file should be.
#   Any valid SELinux role component is accepted.  For example <code>role_r</code>.
#   If not specified it defaults to the value returned by matchpathcon for
#   the file, if any exists.  Only valid on systems with SELinux support
#   enabled.</p>
  $selrole,
# <h2>seltype</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>What the SELinux type component of the context of the file should be.
#   Any valid SELinux type component is accepted.  For example <code>tmp_t</code>.
#   If not specified it defaults to the value returned by matchpathcon for
#   the file, if any exists.  Only valid on systems with SELinux support
#   enabled.</p>
  $seltype,
# <h2>seluser</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>What the SELinux user component of the context of the file should be.
#   Any valid SELinux user component is accepted.  For example <code>user_u</code>.
#   If not specified it defaults to the value returned by matchpathcon for
#   the file, if any exists.  Only valid on systems with SELinux support
#   enabled.</p>
  $seluser,
# <h2>show_diff</h2>
#   <p>Whether to display differences when the file changes, defaulting to
#   true.  This parameter is useful for files that may contain passwords or
#   other secret data, which might otherwise be included in Puppet reports or
#   other insecure outputs.  If the global ``show_diff` setting
#   is false, then no diffs will be shown even if this parameter is true.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $show_diff,
# <h2>source</h2>
#   <p>A source file, which will be copied into place on the local system.
#   Values can be URIs pointing to remote files, or fully qualified paths to
#   files available on the local system (including files on NFS shares or
#   Windows mapped drives). This attribute is mutually exclusive with
#   <code>content</code> and <code>target</code>.</p>
#   <p>The available URI schemes are <em>puppet</em> and <em>file</em>. <em>Puppet</em>
#   URIs will retrieve files from Puppet’s built-in file server, and are
#   usually formatted as:</p>
#   <p><code>puppet:///modules/name_of_module/filename</code></p>
#   <p>This will fetch a file from a module on the puppet master (or from a
#   local module when using puppet apply). Given a <code>modulepath</code> of
#   <code>/etc/puppetlabs/puppet/modules</code>, the example above would resolve to
#   <code>/etc/puppetlabs/puppet/modules/name_of_module/files/filename</code>.</p>
#   <p>Unlike <code>content</code>, the <code>source</code> attribute can be used to recursively copy
#   directories if the <code>recurse</code> attribute is set to <code>true</code> or <code>remote</code>. If
#   a source directory contains symlinks, use the <code>links</code> attribute to
#   specify whether to recreate links or follow them.</p>
#   <p>Multiple <code>source</code> values can be specified as an array, and Puppet will
#   use the first source that exists. This can be used to serve different
#   files to different system types:</p>
#   <pre><code>file { "/etc/nfs.conf":
#     source =&gt; [
#       "puppet:///modules/nfs/conf.$host",
#       "puppet:///modules/nfs/conf.$operatingsystem",
#       "puppet:///modules/nfs/conf"
#     ]
#   }
#   </code></pre>
#   <p>Alternately, when serving directories recursively, multiple sources can
#   be combined by setting the <code>sourceselect</code> attribute to <code>all</code>.</p>
  $source,
# <h2>source_permissions</h2>
#   <p>Whether (and how) Puppet should copy owner, group, and mode permissions from
#   the <code>source</code> to <code>file</code> resources when the permissions are not explicitly
#   specified. (In all cases, explicit permissions will take precedence.)
#   Valid values are <code>use</code>, <code>use_when_creating</code>, and <code>ignore</code>:</p>
#   <ul>
#     <li><code>use</code> (the default) will cause Puppet to apply the owner, group,
#   and mode from the <code>source</code> to any files it is managing.</li>
#     <li><code>use_when_creating</code> will only apply the owner, group, and mode from the
#   <code>source</code> when creating a file; existing files will not have their permissions
#   overwritten.</li>
#     <li><code>ignore</code> will never apply the owner, group, or mode from the <code>source</code> when
#   managing a file. When creating new files without explicit permissions,
#   the permissions they receive will depend on platform-specific behavior.
#   On POSIX, Puppet will use the umask of the user it is running as. On
#   Windows, Puppet will use the default DACL associated with the user it is
#   running as.</li>
#   </ul>
#   <p>Valid values are <code>use</code>, <code>use_when_creating</code>, <code>ignore</code>.</p>
  $source_permissions,
# <h2>sourceselect</h2>
#   <p>Whether to copy all valid sources, or just the first one.  This parameter
#   only affects recursive directory copies; by default, the first valid
#   source is the only one used, but if this parameter is set to <code>all</code>, then
#   all valid sources will have all of their contents copied to the local
#   system. If a given file exists in more than one source, the version from
#   the earliest source in the list will be used.</p>
#   <p>Valid values are <code>first</code>, <code>all</code>.</p>
  $sourceselect,
# <h2>target</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target for creating a link.  Currently, symlinks are the
#   only type supported. This attribute is mutually exclusive with <code>source</code>
#   and <code>content</code>.</p>
#   <p>Symlink targets can be relative, as well as absolute:</p>
#   <pre><code># (Useful on Solaris)
#   file { "/etc/inetd.conf":
#     ensure =&gt; link,
#     target =&gt; "inet/inetd.conf",
#   }
#   </code></pre>
#   <p>Directories of symlinks can be served recursively by instead using the
#   <code>source</code> attribute, setting <code>ensure</code> to <code>directory</code>, and setting the
#   <code>links</code> attribute to <code>manage</code>.</p>
#   <p>Valid values are <code>notlink</code>. Values can match <code>/./</code>.</p>
  $target,
# <h2>type</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A read-only state to check the file type.</p>
  $type,
# <h2>validate_cmd</h2>
#   <p>A command for validating the file’s syntax before replacing it. If
#   Puppet would need to rewrite a file due to new <code>source</code> or <code>content</code>, it
#   will check the new content’s validity first. If validation fails, the file
#   resource will fail.</p>
#   <p>This command must have a fully qualified path, and should contain a
#   percent (<code>%</code>) token where it would expect an input file. It must exit <code>0</code>
#   if the syntax is correct, and non-zero otherwise. The command will be
#   run on the target system while applying the catalog, not on the puppet master.</p>
#   <p>Example:</p>
#   <pre><code>file { '/etc/apache2/apache2.conf':
#     content      =&gt; 'example',
#     validate_cmd =&gt; '/usr/sbin/apache2 -t -f %',
#   }
#   </code></pre>
#   <p>This would replace apache2.conf only if the test returned true.</p>
#   <p>Note that if a validation command requires a <code>%</code> as part of its text,
#   you can specify a different placeholder token with the
#   <code>validate_replacement</code> attribute.</p>
  $validate_cmd,
# <h2>validate_replacement</h2>
#   <p>The replacement string in a <code>validate_cmd</code> that will be replaced
#   with an input file name. Defaults to: <code>%</code></p>
#   <h3 id="file-providers">Providers</h3>
#   <h4 id="file-provider-posix">posix</h4>
#   <p>Uses POSIX functionality to manage file ownership and permissions.</p>
#   <ul>
#     <li>Supported features: <code>manages_symlinks</code>.</li>
#   </ul>
#   <h4 id="file-provider-windows">windows</h4>
#   <p>Uses Microsoft Windows functionality to manage file ownership and permissions.</p>
#   <ul>
#     <li>Supported features: <code>manages_symlinks</code>.</li>
#   </ul>
#   <h3 id="file-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>manages_symlinks</code> — The provider can manage symbolic links.</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>manages symlinks</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>posix</td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>windows</td>
#         <td><em>X</em> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
  $validate_replacement,
) {
  # Stub
}

# <h2>filebucket</h2>
#   <p>A repository for storing and retrieving file content by MD5 checksum. Can
#   be local to each agent node, or centralized on a puppet master server. All
#   puppet masters provide a filebucket service that agent nodes can access
#   via HTTP, but you must declare a filebucket resource before any agents
#   will do so.</p>
#   <p>Filebuckets are used for the following features:</p>
#   <ul>
#     <li><strong>Content backups.</strong> If the <code>file</code> type’s <code>backup</code> attribute is set to
#   the name of a filebucket, Puppet will back up the <em>old</em> content whenever
#   it rewrites a file; see the documentation for the <code>file</code> type for more
#   details. These backups can be used for manual recovery of content, but
#   are more commonly used to display changes and differences in a tool like
#   Puppet Dashboard.</li>
#     <li><strong>Content distribution.</strong> The optional static compiler populates the
#   puppet master’s filebucket with the <em>desired</em> content for each file,
#   then instructs the agent to retrieve the content for a specific
#   checksum. For more details,
#   <a href="http://docs.puppetlabs.com/references/latest/indirection.html#catalog">see the <code>static_compiler</code> section in the catalog indirection docs</a>.</li>
#   </ul>
#   <p>To use a central filebucket for backups, you will usually want to declare
#   a filebucket resource and a resource default for the <code>backup</code> attribute
#   in site.pp:</p>
#   <pre><code># /etc/puppet/manifests/site.pp
#   filebucket { 'main':
#     path   =&gt; false,                # This is required for remote filebuckets.
#     server =&gt; 'puppet.example.com', # Optional; defaults to the configured puppet master.
#   }
#   File { backup =&gt; main, }
#   </code></pre>
#   <p>Puppet master servers automatically provide the filebucket service, so
#   this will work in a default configuration. If you have a heavily
#   restricted <code>auth.conf</code> file, you may need to allow access to the
#   <code>file_bucket_file</code> endpoint.</p>
define filebucket (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the filebucket.</p>
  $name,
# <h2>path</h2>
#   <p>The path to the <em>local</em> filebucket; defaults to the value of the
#   <code>clientbucketdir</code> setting.  To use a remote filebucket, you <em>must</em> set
#   this attribute to <code>false</code>.</p>
  $path,
# <h2>port</h2>
#   <p>The port on which the remote server is listening. Defaults to the
#   value of the <code>masterport</code> setting, which is usually 8140.</p>
  $port,
# <h2>server</h2>
#   <p>The server providing the remote filebucket service. Defaults to the
#   value of the <code>server</code> setting (that is, the currently configured
#   puppet master server).</p>
#   <p>This setting is <em>only</em> consulted if the <code>path</code> attribute is set to <code>false</code>.</p>
#   <hr>
  $server,
) {
  # Stub
}

# <h2>group</h2>
#   <p>Manage groups. On most platforms this can only create groups.
#   Group membership must be managed on individual users.</p>
#   <p>On some platforms such as OS X, group membership is managed as an
#   attribute of the group, not the user record. Providers must have
#   the feature ‘manages_members’ to manage the ‘members’ property of
#   a group record.</p>
define group (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The group name. While naming limitations vary by operating system,
#   it is advisable to restrict names to the lowest common denominator,
#   which is a maximum of 8 characters beginning with a letter.</p>
#   <p>Note that Puppet considers group names to be case-sensitive, regardless
#   of the platform’s own rules; be sure to always use the same case when
#   referring to a given group.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Create or remove the group.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>allowdupe</h2>
#   <p>Whether to allow duplicate GIDs. Defaults to <code>false</code>.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $allowdupe,
# <h2>attribute_membership</h2>
#   <p>Whether specified attribute value pairs should be treated as the only attributes
#   of the user or whether they should merely
#   be treated as the minimum list.</p>
#   <p>Valid values are <code>inclusive</code>, <code>minimum</code>.</p>
  $attribute_membership,
# <h2>attributes</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Specify group AIX attributes in an array of <code>key=value</code> pairs.</p>
#   <p>Requires features manages_aix_lam.</p>
  $attributes,
# <h2>auth_membership</h2>
#   <p>whether the provider is authoritative for group membership.</p>
  $auth_membership,
# <h2>forcelocal</h2>
#   <p>Forces the mangement of local accounts when accounts are also
#   being managed by some other NSS</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
#   <p>Requires features libuser.</p>
  $forcelocal,
# <h2>gid</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The group ID.  Must be specified numerically.  If no group ID is
#   specified when creating a new group, then one will be chosen
#   automatically according to local system standards. This will likely
#   result in the same group having different GIDs on different systems,
#   which is not recommended.</p>
#   <p>On Windows, this property is read-only and will return the group’s security
#   identifier (SID).</p>
  $gid,
# <h2>ia_load_module</h2>
#   <p>The name of the I&amp;A module to use to manage this user</p>
#   <p>Requires features manages_aix_lam.</p>
  $ia_load_module,
# <h2>members</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The members of the group. For directory services where group
#   membership is stored in the group objects, not the users.</p>
#   <p>Requires features manages_members.</p>
  $members,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>group</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#group-provider-aix"><code>aix</code></a></li>
#     <li><a href="#group-provider-directoryservice"><code>directoryservice</code></a></li>
#     <li><a href="#group-provider-groupadd"><code>groupadd</code></a></li>
#     <li><a href="#group-provider-ldap"><code>ldap</code></a></li>
#     <li><a href="#group-provider-pw"><code>pw</code></a></li>
#     <li><a href="#group-provider-windows_adsi"><code>windows_adsi</code></a></li>
#   </ul>
  $provider,
# <h2>system</h2>
#   <p>Whether the group is a system group with lower GID.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
#   <h3 id="group-providers">Providers</h3>
#   <h4 id="group-provider-aix">aix</h4>
#   <p>Group management for AIX.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/chgroup</code>, <code>/usr/bin/mkgroup</code>, <code>/usr/sbin/lsgroup</code>, <code>/usr/sbin/rmgroup</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>aix</code>.</li>
#     <li>Supported features: <code>manages_aix_lam</code>, <code>manages_members</code>.</li>
#   </ul>
#   <h4 id="group-provider-directoryservice">directoryservice</h4>
#   <p>Group management using DirectoryService on OS X.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/dscl</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>darwin</code>.</li>
#     <li>Supported features: <code>manages_members</code>.</li>
#   </ul>
#   <h4 id="group-provider-groupadd">groupadd</h4>
#   <p>Group management via <code>groupadd</code> and its ilk. The default for most platforms.</p>
#   <ul>
#     <li>Required binaries: <code>groupadd</code>, <code>groupdel</code>, <code>groupmod</code>, <code>lgroupadd</code>.</li>
#     <li>Supported features: <code>system_groups</code>.</li>
#   </ul>
#   <h4 id="group-provider-ldap">ldap</h4>
#   <p>Group management via LDAP.</p>
#   <p>This provider requires that you have valid values for all of the
#   LDAP-related settings in <code>puppet.conf</code>, including <code>ldapbase</code>.  You will
#   almost definitely need settings for <code>ldapuser</code> and <code>ldappassword</code> in order
#   for your clients to write to LDAP.</p>
#   <p>Note that this provider will automatically generate a GID for you if you do
#   not specify one, but it is a potentially expensive operation, as it
#   iterates across all existing groups to pick the appropriate next one.</p>
#   <h4 id="group-provider-pw">pw</h4>
#   <p>Group management via <code>pw</code> on FreeBSD and DragonFly BSD.</p>
#   <ul>
#     <li>Required binaries: <code>pw</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>freebsd, dragonfly</code>.</li>
#     <li>Supported features: <code>manages_members</code>.</li>
#   </ul>
#   <h4 id="group-provider-windows_adsi">windows_adsi</h4>
#   <p>Local group management for Windows. Group members can be both users and groups.
#   Additionally, local groups can contain domain users.</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>windows</code>.</li>
#     <li>Supported features: <code>manages_members</code>.</li>
#   </ul>
#   <h3 id="group-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>libuser</code> — Allows local groups to be managed on systems that also use some other remote NSS method of managing accounts.</li>
#     <li><code>manages_aix_lam</code> — The provider can manage AIX Loadable Authentication Module (LAM) system.</li>
#     <li><code>manages_members</code> — For directories where membership is an attribute of groups not users.</li>
#     <li><code>system_groups</code> — The provider allows you to create system groups with lower GIDs.</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>libuser</th>
#         <th>manages aix lam</th>
#         <th>manages members</th>
#         <th>system groups</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>aix</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>directoryservice</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>groupadd</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>ldap</td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>pw</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>windows_adsi</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
  $system,
) {
  # Stub
}

# <h2>host</h2>
#   <p>Installs and manages host entries.  For most systems, these
#   entries will just be in <code>/etc/hosts</code>, but some systems (notably OS X)
#   will have different solutions.</p>
define host (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The host name.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>comment</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A comment that will be attached to the line with a # character.</p>
  $comment,
# <h2>host_aliases</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Any aliases the host might have.  Multiple values must be
#   specified as an array.</p>
  $host_aliases,
# <h2>ip</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The host’s IP address, IPv4 or IPv6.</p>
  $ip,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>host</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#host-provider-parsed"><code>parsed</code></a></li>
#   </ul>
  $provider,
# <h2>target</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The file in which to store service information.  Only used by
#   those providers that write to disk. On most systems this defaults to <code>/etc/hosts</code>.</p>
#   <h3 id="host-providers">Providers</h3>
#   <h4 id="host-provider-parsed">parsed</h4>
#   <hr>
  $target,
) {
  # Stub
}

# <h2>interface</h2>
#   <p>This represents a router or switch interface. It is possible to manage
#   interface mode (access or trunking, native vlan and encapsulation) and
#   switchport characteristics (speed, duplex).</p>
define interface (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The interface’s name.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code> (also called <code>no_shutdown</code>), <code>absent</code> (also called <code>shutdown</code>).</p>
  $ensure,
# <h2>allowed_trunk_vlans</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Allowed list of Vlans that this trunk can forward.</p>
#   <p>Valid values are <code>all</code>. Values can match <code>/./</code>.</p>
  $allowed_trunk_vlans,
# <h2>description</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Interface description.</p>
  $description,
# <h2>device_url</h2>
#   <p>The URL at which the router or switch can be reached.</p>
  $device_url,
# <h2>duplex</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Interface duplex.</p>
#   <p>Valid values are <code>auto</code>, <code>full</code>, <code>half</code>.</p>
  $duplex,
# <h2>encapsulation</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Interface switchport encapsulation.</p>
#   <p>Valid values are <code>none</code>, <code>dot1q</code>, <code>isl</code>.</p>
  $encapsulation,
# <h2>etherchannel</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Channel group this interface is part of.</p>
#   <p>Values can match <code>/^\d+/</code>.</p>
  $etherchannel,
# <h2>ipaddress</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>IP Address of this interface. Note that it might not be possible to set
#   an interface IP address; it depends on the interface type and device type.</p>
#   <p>Valid format of ip addresses are:</p>
#   <ul>
#     <li>IPV4, like 127.0.0.1</li>
#     <li>IPV4/prefixlength like 127.0.1.1/24</li>
#     <li>IPV6/prefixlength like FE80::21A:2FFF:FE30:ECF0/128</li>
#     <li>an optional suffix for IPV6 addresses from this list: <code>eui-64</code>, <code>link-local</code></li>
#   </ul>
#   <p>It is also possible to supply an array of values.</p>
  $ipaddress,
# <h2>mode</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Interface switchport mode.</p>
#   <p>Valid values are <code>access</code>, <code>trunk</code>.</p>
  $mode,
# <h2>native_vlan</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Interface native vlan (for access mode only).</p>
#   <p>Values can match <code>/^\d+/</code>.</p>
  $native_vlan,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>interface</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#interface-provider-cisco"><code>cisco</code></a></li>
#   </ul>
  $provider,
# <h2>speed</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Interface speed.</p>
#   <p>Valid values are <code>auto</code>. Values can match <code>/^\d+/</code>.</p>
#   <h3 id="interface-providers">Providers</h3>
#   <h4 id="interface-provider-cisco">cisco</h4>
#   <p>Cisco switch/router provider for interface.</p>
#   <hr>
  $speed,
) {
  # Stub
}

# <h2>k5login</h2>
#   <p>Manage the <code>.k5login</code> file for a user.  Specify the full path to
#   the <code>.k5login</code> file as the name, and an array of principals as the
#   <code>principals</code> attribute.</p>
define k5login (
# <h2>path</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The path to the <code>.k5login</code> file to manage.  Must be fully qualified.</p>
  $path,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>mode</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The desired permissions mode of the <code>.k5login</code> file. Defaults to <code>644</code>.</p>
  $mode,
# <h2>principals</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The principals present in the <code>.k5login</code> file. This should be specified as an array.</p>
  $principals,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>k5login</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#k5login-provider-k5login"><code>k5login</code></a></li>
#   </ul>
#   <h3 id="k5login-providers">Providers</h3>
#   <h4 id="k5login-provider-k5login">k5login</h4>
#   <p>The k5login provider is the only provider for the k5login
#   type.</p>
#   <hr>
  $provider,
) {
  # Stub
}

# <h2>macauthorization</h2>
#   <p>Manage the Mac OS X authorization database. See the
#   <a href="http://developer.apple.com/documentation/Security/Conceptual/Security_Overview/Security_Services/chapter_4_section_5.html">Apple developer site</a>
#   for more information.</p>
#   <p>Note that authorization store directives with hyphens in their names have
#   been renamed to use underscores, as Puppet does not react well to hyphens
#   in identifiers.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the <code>/etc/authorization</code> file, each
#   macauthorization resource will autorequire it.</p>
define macauthorization (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the right or rule to be managed.
#   Corresponds to <code>key</code> in Authorization Services. The key is the name
#   of a rule. A key uses the same naming conventions as a right. The
#   Security Server uses a rule’s key to match the rule with a right.
#   Wildcard keys end with a ‘.’. The generic rule has an empty key value.
#   Any rights that do not match a specific rule use the generic rule.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>allow_root</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Corresponds to <code>allow-root</code> in the authorization store. Specifies
#   whether a right should be allowed automatically if the requesting process
#   is running with <code>uid == 0</code>.  AuthorizationServices defaults this attribute
#   to false if not specified.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $allow_root,
# <h2>auth_class</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Corresponds to <code>class</code> in the authorization store; renamed due
#   to ‘class’ being a reserved word in Puppet.</p>
#   <p>Valid values are <code>user</code>, <code>evaluate-mechanisms</code>, <code>allow</code>, <code>deny</code>, <code>rule</code>.</p>
  $auth_class,
# <h2>auth_type</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Type — this can be a <code>right</code> or a <code>rule</code>. The <code>comment</code> type has
#   not yet been implemented.</p>
#   <p>Valid values are <code>right</code>, <code>rule</code>.</p>
  $auth_type,
# <h2>authenticate_user</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Corresponds to <code>authenticate-user</code> in the authorization store.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $authenticate_user,
# <h2>comment</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The <code>comment</code> attribute for authorization resources.</p>
  $comment,
# <h2>group</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A group which the user must authenticate as a member of. This
#   must be a single group.</p>
  $group,
# <h2>k_of_n</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>How large a subset of rule mechanisms must succeed for successful
#   authentication. If there are ‘n’ mechanisms, then ‘k’ (the integer value
#   of this parameter) mechanisms must succeed. The most common setting for
#   this parameter is <code>1</code>. If <code>k-of-n</code> is not set, then every mechanism —
#   that is, ‘n-of-n’ — must succeed.</p>
  $k_of_n,
# <h2>mechanisms</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>An array of suitable mechanisms.</p>
  $mechanisms,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>macauthorization</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#macauthorization-provider-macauthorization"><code>macauthorization</code></a></li>
#   </ul>
  $provider,
# <h2>rule</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The rule(s) that this right refers to.</p>
  $rule,
# <h2>session_owner</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether the session owner automatically matches this rule or right.
#   Corresponds to <code>session-owner</code> in the authorization store.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $session_owner,
# <h2>shared</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether the Security Server should mark the credentials used to gain
#   this right as shared. The Security Server may use any shared credentials
#   to authorize this right. For maximum security, set sharing to false so
#   credentials stored by the Security Server for one application may not be
#   used by another application.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $shared,
# <h2>timeout</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The number of seconds in which the credential used by this rule will
#   expire. For maximum security where the user must authenticate every time,
#   set the timeout to 0. For minimum security, remove the timeout attribute
#   so the user authenticates only once per session.</p>
  $timeout,
# <h2>tries</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The number of tries allowed.</p>
#   <h3 id="macauthorization-providers">Providers</h3>
#   <h4 id="macauthorization-provider-macauthorization">macauthorization</h4>
#   <p>Manage Mac OS X authorization database rules and rights.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/security</code>, <code>/usr/bin/sw_vers</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>darwin</code>.</li>
#   </ul>
#   <hr>
  $tries,
) {
  # Stub
}

# <h2>mailalias</h2>
#   <p>Creates an email alias in the local alias database.</p>
define mailalias (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The alias name.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>mailalias</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#mailalias-provider-aliases"><code>aliases</code></a></li>
#   </ul>
  $provider,
# <h2>recipient</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Where email should be sent.  Multiple values
#   should be specified as an array.</p>
  $recipient,
# <h2>target</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The file in which to store the aliases.  Only used by
#   those providers that write to disk.</p>
#   <h3 id="mailalias-providers">Providers</h3>
#   <h4 id="mailalias-provider-aliases">aliases</h4>
#   <hr>
  $target,
) {
  # Stub
}

# <h2>maillist</h2>
#   <p>Manage email lists.  This resource type can only create
#   and remove lists; it cannot currently reconfigure them.</p>
define maillist (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the email list.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>, <code>purged</code>.</p>
  $ensure,
# <h2>admin</h2>
#   <p>The email address of the administrator.</p>
  $admin,
# <h2>description</h2>
#   <p>The description of the mailing list.</p>
  $description,
# <h2>mailserver</h2>
#   <p>The name of the host handling email for the list.</p>
  $mailserver,
# <h2>password</h2>
#   <p>The admin password.</p>
  $password,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>maillist</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#maillist-provider-mailman"><code>mailman</code></a></li>
#   </ul>
  $provider,
# <h2>webserver</h2>
#   <p>The name of the host providing web archives and the administrative interface.</p>
#   <h3 id="maillist-providers">Providers</h3>
#   <h4 id="maillist-provider-mailman">mailman</h4>
#   <ul>
#     <li>Required binaries: <code>/var/lib/mailman/mail/mailman</code>, <code>list_lists</code>, <code>newlist</code>, <code>rmlist</code>.</li>
#   </ul>
#   <hr>
  $webserver,
) {
  # Stub
}

# <h2>mcx</h2>
#   <p>MCX object management using DirectoryService on OS X.</p>
#   <p>The default provider of this type merely manages the XML plist as
#   reported by the <code>dscl -mcxexport</code> command.  This is similar to the
#   content property of the file type in Puppet.</p>
#   <p>The recommended method of using this type is to use Work Group Manager
#   to manage users and groups on the local computer, record the resulting
#   puppet manifest using the command <code>puppet resource mcx</code>, then deploy it
#   to other machines.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the user, group, or computer that these
#   MCX settings refer to, the MCX resource will autorequire that user, group, or computer.</p>
define mcx (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the resource being managed.
#   The default naming convention follows Directory Service paths:</p>
#   <pre><code>/Computers/localhost
#   /Groups/admin
#   /Users/localadmin
#   </code></pre>
#   <p>The <code>ds_type</code> and <code>ds_name</code> type parameters are not necessary if the
#   default naming convention is followed.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Create or remove the MCX setting.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>content</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The XML Plist used as the value of MCXSettings in DirectoryService.
#   This is the standard output from the system command:</p>
#   <pre><code>dscl localhost -mcxexport /Local/Default/&lt;ds_type&gt;/ds_name
#   </code></pre>
#   <p>Note that <code>ds_type</code> is capitalized and plural in the dscl command.</p>
#   <p>Requires features manages_content.</p>
  $content,
# <h2>ds_name</h2>
#   <p>The name to attach the MCX Setting to. (For example, <code>localhost</code>
#   when <code>ds_type =&gt; computer</code>.) This setting is not required, as it can be
#   automatically discovered when the resource name is parseable.  (For
#   example, in <code>/Groups/admin</code>, <code>group</code> will be used as the dstype.)</p>
  $ds_name,
# <h2>ds_type</h2>
#   <p>The DirectoryService type this MCX setting attaches to.</p>
#   <p>Valid values are <code>user</code>, <code>group</code>, <code>computer</code>, <code>computerlist</code>.</p>
  $ds_type,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>mcx</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#mcx-provider-mcxcontent"><code>mcxcontent</code></a></li>
#   </ul>
#   <h3 id="mcx-providers">Providers</h3>
#   <h4 id="mcx-provider-mcxcontent">mcxcontent</h4>
#   <p>MCX Settings management using DirectoryService on OS X.</p>
#   <p>This provider manages the entire MCXSettings attribute available
#   to some directory services nodes.  This management is ‘all or nothing’
#   in that discrete application domain key value pairs are not managed
#   by this provider.</p>
#   <p>It is recommended to use WorkGroup Manager to configure Users, Groups,
#   Computers, or ComputerLists, then use ‘ralsh mcx’ to generate a puppet
#   manifest from the resulting configuration.</p>
#   <p>Original Author: Jeff McCune (mccune.jeff@gmail.com)</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/dscl</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>darwin</code>.</li>
#     <li>Supported features: <code>manages_content</code>.</li>
#   </ul>
#   <h3 id="mcx-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>manages_content</code> — The provider can manage MCXSettings as a string.</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>manages content</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>mcxcontent</td>
#         <td><em>X</em> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
  $provider,
) {
  # Stub
}

# <h2>mount</h2>
#   <p>Manages mounted filesystems, including putting mount
#   information into the mount table. The actual behavior depends
#   on the value of the ‘ensure’ parameter.</p>
#   <p><strong>Refresh:</strong> <code>mount</code> resources can respond to refresh events (via
#   <code>notify</code>, <code>subscribe</code>, or the <code>~&gt;</code> arrow). If a <code>mount</code> receives an event
#   from another resource <strong>and</strong> its <code>ensure</code> attribute is set to <code>mounted</code>,
#   Puppet will try to unmount then remount that filesystem.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing any parents of a mount resource —
#   that is, other mount points higher up in the filesystem — the child
#   mount will autorequire them.</p>
define mount (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The mount path for the mount.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Control what to do with this mount. Set this attribute to
#   <code>unmounted</code> to make sure the filesystem is in the filesystem table
#   but not mounted (if the filesystem is currently mounted, it will be
#   unmounted).  Set it to <code>absent</code> to unmount (if necessary) and remove
#   the filesystem from the fstab.  Set to <code>mounted</code> to add it to the
#   fstab and mount it. Set to <code>present</code> to add to fstab but not change
#   mount/unmount status.</p>
#   <p>Valid values are <code>defined</code> (also called <code>present</code>), <code>unmounted</code>, <code>absent</code>, <code>mounted</code>.</p>
  $ensure,
# <h2>atboot</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether to mount the mount at boot.  Not all platforms
#   support this.</p>
  $atboot,
# <h2>blockdevice</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The device to fsck.  This is property is only valid
#   on Solaris, and in most cases will default to the correct
#   value.</p>
  $blockdevice,
# <h2>device</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The device providing the mount.  This can be whatever
#   device is supporting by the mount, including network
#   devices or devices specified by UUID rather than device
#   path, depending on the operating system.</p>
  $device,
# <h2>dump</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether to dump the mount.  Not all platform support this.
#   Valid values are <code>1</code> or <code>0</code>. or <code>2</code> on FreeBSD, Default is <code>0</code>.</p>
#   <p>Values can match <code>/(0|1)/</code>, <code>/(0|1)/</code>.</p>
  $dump,
# <h2>fstype</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The mount type.  Valid values depend on the
#   operating system.  This is a required option.</p>
  $fstype,
# <h2>options</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Mount options for the mounts, as they would
#   appear in the fstab.</p>
  $options,
# <h2>pass</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The pass in which the mount is checked.</p>
  $pass,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>mount</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#mount-provider-parsed"><code>parsed</code></a></li>
#   </ul>
  $provider,
# <h2>remounts</h2>
#   <p>Whether the mount can be remounted  <code>mount -o remount</code>.  If
#   this is false, then the filesystem will be unmounted and remounted
#   manually, which is prone to failure.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $remounts,
# <h2>target</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The file in which to store the mount table.  Only used by
#   those providers that write to disk.</p>
#   <h3 id="mount-providers">Providers</h3>
#   <h4 id="mount-provider-parsed">parsed</h4>
#   <ul>
#     <li>Required binaries: <code>mount</code>, <code>umount</code>.</li>
#     <li>Supported features: <code>refreshable</code>.</li>
#   </ul>
#   <h3 id="mount-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>refreshable</code> — The provider can remount the filesystem.</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>refreshable</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>parsed</td>
#         <td><em>X</em> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
#   <h2 id="nagioscommand">nagios_command</h2>
#   <ul>
#     <li><a href="#nagios_command-attributes">Attributes</a></li>
#     <li><a href="#nagios_command-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_command-description">Description</h3>
#   <p>The Nagios type command.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_command.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_command-attributes">Attributes</h3>
#   <pre><code>nagios_command { 'resource title':
#     <a href="#nagios_command-attribute-command_name">command_name</a> =&gt; <em># <strong>(namevar)</strong> The name of this nagios_command...</em>
#     <a href="#nagios_command-attribute-ensure">ensure</a>       =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_command-attribute-command_line">command_line</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_command-attribute-group">group</a>        =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_command-attribute-mode">mode</a>         =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_command-attribute-owner">owner</a>        =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_command-attribute-poller_tag">poller_tag</a>   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_command-attribute-provider">provider</a>     =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_command-attribute-target">target</a>       =&gt; <em># The...</em>
#     <a href="#nagios_command-attribute-use">use</a>          =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_command-attribute-command_name">command_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_command resource.</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-command_line">command_line</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_command resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_command resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_command resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-poller_tag">poller_tag</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_command</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_command-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h4 id="nagios_command-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_command-attributes">↑ Back to nagios_command attributes</a>)</p>
#   <h3 id="nagios_command-providers">Providers</h3>
#   <h4 id="nagios_command-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagioscontact">nagios_contact</h2>
#   <ul>
#     <li><a href="#nagios_contact-attributes">Attributes</a></li>
#     <li><a href="#nagios_contact-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_contact-description">Description</h3>
#   <p>The Nagios type contact.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_contact.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_contact-attributes">Attributes</h3>
#   <pre><code>nagios_contact { 'resource title':
#     <a href="#nagios_contact-attribute-contact_name">contact_name</a>                  =&gt; <em># <strong>(namevar)</strong> The name of this nagios_contact...</em>
#     <a href="#nagios_contact-attribute-ensure">ensure</a>                        =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_contact-attribute-address1">address1</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-address2">address2</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-address3">address3</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-address4">address4</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-address5">address5</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-address6">address6</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-alias">alias</a>                         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-can_submit_commands">can_submit_commands</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-contactgroups">contactgroups</a>                 =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-email">email</a>                         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-group">group</a>                         =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_contact-attribute-host_notification_commands">host_notification_commands</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-host_notification_options">host_notification_options</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-host_notification_period">host_notification_period</a>      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-host_notifications_enabled">host_notifications_enabled</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-mode">mode</a>                          =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_contact-attribute-owner">owner</a>                         =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_contact-attribute-pager">pager</a>                         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-provider">provider</a>                      =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_contact-attribute-register">register</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-retain_nonstatus_information">retain_nonstatus_information</a>  =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-retain_status_information">retain_status_information</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-service_notification_commands">service_notification_commands</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-service_notification_options">service_notification_options</a>  =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-service_notification_period">service_notification_period</a>   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-service_notifications_enabled">service_notifications_enabled</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contact-attribute-target">target</a>                        =&gt; <em># The...</em>
#     <a href="#nagios_contact-attribute-use">use</a>                           =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_contact-attribute-contact_name">contact_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_contact resource.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-address1">address1</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-address2">address2</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-address3">address3</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-address4">address4</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-address5">address5</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-address6">address6</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-alias">alias</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-can_submit_commands">can_submit_commands</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-contactgroups">contactgroups</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-email">email</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_contact resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-host_notification_commands">host_notification_commands</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-host_notification_options">host_notification_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-host_notification_period">host_notification_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-host_notifications_enabled">host_notifications_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_contact resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_contact resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-pager">pager</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_contact</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_contact-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-retain_nonstatus_information">retain_nonstatus_information</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-retain_status_information">retain_status_information</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-service_notification_commands">service_notification_commands</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-service_notification_options">service_notification_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-service_notification_period">service_notification_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-service_notifications_enabled">service_notifications_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h4 id="nagios_contact-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contact-attributes">↑ Back to nagios_contact attributes</a>)</p>
#   <h3 id="nagios_contact-providers">Providers</h3>
#   <h4 id="nagios_contact-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagioscontactgroup">nagios_contactgroup</h2>
#   <ul>
#     <li><a href="#nagios_contactgroup-attributes">Attributes</a></li>
#     <li><a href="#nagios_contactgroup-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_contactgroup-description">Description</h3>
#   <p>The Nagios type contactgroup.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_contactgroup.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_contactgroup-attributes">Attributes</h3>
#   <pre><code>nagios_contactgroup { 'resource title':
#     <a href="#nagios_contactgroup-attribute-contactgroup_name">contactgroup_name</a>    =&gt; <em># <strong>(namevar)</strong> The name of this nagios_contactgroup...</em>
#     <a href="#nagios_contactgroup-attribute-ensure">ensure</a>               =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_contactgroup-attribute-alias">alias</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contactgroup-attribute-contactgroup_members">contactgroup_members</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contactgroup-attribute-group">group</a>                =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_contactgroup-attribute-members">members</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contactgroup-attribute-mode">mode</a>                 =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_contactgroup-attribute-owner">owner</a>                =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_contactgroup-attribute-provider">provider</a>             =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_contactgroup-attribute-register">register</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_contactgroup-attribute-target">target</a>               =&gt; <em># The...</em>
#     <a href="#nagios_contactgroup-attribute-use">use</a>                  =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_contactgroup-attribute-contactgroup_name">contactgroup_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_contactgroup resource.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-alias">alias</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-contactgroup_members">contactgroup_members</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_contactgroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-members">members</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_contactgroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_contactgroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_contactgroup</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_contactgroup-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h4 id="nagios_contactgroup-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_contactgroup-attributes">↑ Back to nagios_contactgroup attributes</a>)</p>
#   <h3 id="nagios_contactgroup-providers">Providers</h3>
#   <h4 id="nagios_contactgroup-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagioshost">nagios_host</h2>
#   <ul>
#     <li><a href="#nagios_host-attributes">Attributes</a></li>
#     <li><a href="#nagios_host-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_host-description">Description</h3>
#   <p>The Nagios type host.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_host.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_host-attributes">Attributes</h3>
#   <pre><code>nagios_host { 'resource title':
#     <a href="#nagios_host-attribute-host_name">host_name</a>                    =&gt; <em># <strong>(namevar)</strong> The name of this nagios_host...</em>
#     <a href="#nagios_host-attribute-ensure">ensure</a>                       =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_host-attribute-action_url">action_url</a>                   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-active_checks_enabled">active_checks_enabled</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-address">address</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-alias">alias</a>                        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-business_impact">business_impact</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-check_command">check_command</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-check_freshness">check_freshness</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-check_interval">check_interval</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-check_period">check_period</a>                 =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-contact_groups">contact_groups</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-contacts">contacts</a>                     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-display_name">display_name</a>                 =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-event_handler">event_handler</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-event_handler_enabled">event_handler_enabled</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-failure_prediction_enabled">failure_prediction_enabled</a>   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-first_notification_delay">first_notification_delay</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-flap_detection_enabled">flap_detection_enabled</a>       =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-flap_detection_options">flap_detection_options</a>       =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-freshness_threshold">freshness_threshold</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-group">group</a>                        =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_host-attribute-high_flap_threshold">high_flap_threshold</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-hostgroups">hostgroups</a>                   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-icon_image">icon_image</a>                   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-icon_image_alt">icon_image_alt</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-initial_state">initial_state</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-low_flap_threshold">low_flap_threshold</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-max_check_attempts">max_check_attempts</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-mode">mode</a>                         =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_host-attribute-notes">notes</a>                        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-notes_url">notes_url</a>                    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-notification_interval">notification_interval</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-notification_options">notification_options</a>         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-notification_period">notification_period</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-notifications_enabled">notifications_enabled</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-obsess_over_host">obsess_over_host</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-owner">owner</a>                        =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_host-attribute-parents">parents</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-passive_checks_enabled">passive_checks_enabled</a>       =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-poller_tag">poller_tag</a>                   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-process_perf_data">process_perf_data</a>            =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-provider">provider</a>                     =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_host-attribute-realm">realm</a>                        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-register">register</a>                     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-retain_nonstatus_information">retain_nonstatus_information</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-retain_status_information">retain_status_information</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-retry_interval">retry_interval</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-stalking_options">stalking_options</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-statusmap_image">statusmap_image</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-target">target</a>                       =&gt; <em># The...</em>
#     <a href="#nagios_host-attribute-use">use</a>                          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_host-attribute-vrml_image">vrml_image</a>                   =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_host-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_host resource.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-action_url">action_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-active_checks_enabled">active_checks_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-address">address</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-alias">alias</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-business_impact">business_impact</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-check_command">check_command</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-check_freshness">check_freshness</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-check_interval">check_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-check_period">check_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-contact_groups">contact_groups</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-contacts">contacts</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-display_name">display_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-event_handler">event_handler</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-event_handler_enabled">event_handler_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-failure_prediction_enabled">failure_prediction_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-first_notification_delay">first_notification_delay</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-flap_detection_enabled">flap_detection_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-flap_detection_options">flap_detection_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-freshness_threshold">freshness_threshold</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_host resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-high_flap_threshold">high_flap_threshold</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-hostgroups">hostgroups</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-icon_image">icon_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-icon_image_alt">icon_image_alt</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-initial_state">initial_state</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-low_flap_threshold">low_flap_threshold</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-max_check_attempts">max_check_attempts</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_host resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-notes">notes</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-notes_url">notes_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-notification_interval">notification_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-notification_options">notification_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-notification_period">notification_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-notifications_enabled">notifications_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-obsess_over_host">obsess_over_host</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_host resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-parents">parents</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-passive_checks_enabled">passive_checks_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-poller_tag">poller_tag</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-process_perf_data">process_perf_data</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_host</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_host-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-realm">realm</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-retain_nonstatus_information">retain_nonstatus_information</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-retain_status_information">retain_status_information</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-retry_interval">retry_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-stalking_options">stalking_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-statusmap_image">statusmap_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h4 id="nagios_host-attribute-vrml_image">vrml_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_host-attributes">↑ Back to nagios_host attributes</a>)</p>
#   <h3 id="nagios_host-providers">Providers</h3>
#   <h4 id="nagios_host-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagioshostdependency">nagios_hostdependency</h2>
#   <ul>
#     <li><a href="#nagios_hostdependency-attributes">Attributes</a></li>
#     <li><a href="#nagios_hostdependency-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_hostdependency-description">Description</h3>
#   <p>The Nagios type hostdependency.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_hostdependency.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_hostdependency-attributes">Attributes</h3>
#   <pre><code>nagios_hostdependency { 'resource title':
#     <a href="#nagios_hostdependency-attribute-_naginator_name">_naginator_name</a>               =&gt; <em># <strong>(namevar)</strong> The name of this nagios_hostdependency...</em>
#     <a href="#nagios_hostdependency-attribute-ensure">ensure</a>                        =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_hostdependency-attribute-dependency_period">dependency_period</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-dependent_host_name">dependent_host_name</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-dependent_hostgroup_name">dependent_hostgroup_name</a>      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-execution_failure_criteria">execution_failure_criteria</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-group">group</a>                         =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_hostdependency-attribute-host_name">host_name</a>                     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-hostgroup_name">hostgroup_name</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-inherits_parent">inherits_parent</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-mode">mode</a>                          =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_hostdependency-attribute-notification_failure_criteria">notification_failure_criteria</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-owner">owner</a>                         =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_hostdependency-attribute-provider">provider</a>                      =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_hostdependency-attribute-register">register</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostdependency-attribute-target">target</a>                        =&gt; <em># The...</em>
#     <a href="#nagios_hostdependency-attribute-use">use</a>                           =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_hostdependency-attribute-_naginator_name">_naginator_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_hostdependency resource.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-dependency_period">dependency_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-dependent_host_name">dependent_host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-dependent_hostgroup_name">dependent_hostgroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-execution_failure_criteria">execution_failure_criteria</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_hostdependency resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-hostgroup_name">hostgroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-inherits_parent">inherits_parent</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_hostdependency resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-notification_failure_criteria">notification_failure_criteria</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_hostdependency resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_hostdependency</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_hostdependency-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h4 id="nagios_hostdependency-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostdependency-attributes">↑ Back to nagios_hostdependency attributes</a>)</p>
#   <h3 id="nagios_hostdependency-providers">Providers</h3>
#   <h4 id="nagios_hostdependency-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagioshostescalation">nagios_hostescalation</h2>
#   <ul>
#     <li><a href="#nagios_hostescalation-attributes">Attributes</a></li>
#     <li><a href="#nagios_hostescalation-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_hostescalation-description">Description</h3>
#   <p>The Nagios type hostescalation.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_hostescalation.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_hostescalation-attributes">Attributes</h3>
#   <pre><code>nagios_hostescalation { 'resource title':
#     <a href="#nagios_hostescalation-attribute-_naginator_name">_naginator_name</a>       =&gt; <em># <strong>(namevar)</strong> The name of this nagios_hostescalation...</em>
#     <a href="#nagios_hostescalation-attribute-ensure">ensure</a>                =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_hostescalation-attribute-contact_groups">contact_groups</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-contacts">contacts</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-escalation_options">escalation_options</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-escalation_period">escalation_period</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-first_notification">first_notification</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-group">group</a>                 =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_hostescalation-attribute-host_name">host_name</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-hostgroup_name">hostgroup_name</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-last_notification">last_notification</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-mode">mode</a>                  =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_hostescalation-attribute-notification_interval">notification_interval</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-owner">owner</a>                 =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_hostescalation-attribute-provider">provider</a>              =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_hostescalation-attribute-register">register</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostescalation-attribute-target">target</a>                =&gt; <em># The...</em>
#     <a href="#nagios_hostescalation-attribute-use">use</a>                   =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_hostescalation-attribute-_naginator_name">_naginator_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_hostescalation resource.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-contact_groups">contact_groups</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-contacts">contacts</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-escalation_options">escalation_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-escalation_period">escalation_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-first_notification">first_notification</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_hostescalation resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-hostgroup_name">hostgroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-last_notification">last_notification</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_hostescalation resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-notification_interval">notification_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_hostescalation resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_hostescalation</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_hostescalation-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h4 id="nagios_hostescalation-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostescalation-attributes">↑ Back to nagios_hostescalation attributes</a>)</p>
#   <h3 id="nagios_hostescalation-providers">Providers</h3>
#   <h4 id="nagios_hostescalation-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagioshostextinfo">nagios_hostextinfo</h2>
#   <ul>
#     <li><a href="#nagios_hostextinfo-attributes">Attributes</a></li>
#     <li><a href="#nagios_hostextinfo-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_hostextinfo-description">Description</h3>
#   <p>The Nagios type hostextinfo.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_hostextinfo.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_hostextinfo-attributes">Attributes</h3>
#   <pre><code>nagios_hostextinfo { 'resource title':
#     <a href="#nagios_hostextinfo-attribute-host_name">host_name</a>       =&gt; <em># <strong>(namevar)</strong> The name of this nagios_hostextinfo...</em>
#     <a href="#nagios_hostextinfo-attribute-ensure">ensure</a>          =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_hostextinfo-attribute-group">group</a>           =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_hostextinfo-attribute-icon_image">icon_image</a>      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostextinfo-attribute-icon_image_alt">icon_image_alt</a>  =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostextinfo-attribute-mode">mode</a>            =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_hostextinfo-attribute-notes">notes</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostextinfo-attribute-notes_url">notes_url</a>       =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostextinfo-attribute-owner">owner</a>           =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_hostextinfo-attribute-provider">provider</a>        =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_hostextinfo-attribute-register">register</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostextinfo-attribute-statusmap_image">statusmap_image</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostextinfo-attribute-target">target</a>          =&gt; <em># The...</em>
#     <a href="#nagios_hostextinfo-attribute-use">use</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostextinfo-attribute-vrml_image">vrml_image</a>      =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_hostextinfo-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_hostextinfo resource.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_hostextinfo resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-icon_image">icon_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-icon_image_alt">icon_image_alt</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_hostextinfo resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-notes">notes</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-notes_url">notes_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_hostextinfo resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_hostextinfo</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_hostextinfo-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-statusmap_image">statusmap_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h4 id="nagios_hostextinfo-attribute-vrml_image">vrml_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostextinfo-attributes">↑ Back to nagios_hostextinfo attributes</a>)</p>
#   <h3 id="nagios_hostextinfo-providers">Providers</h3>
#   <h4 id="nagios_hostextinfo-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagioshostgroup">nagios_hostgroup</h2>
#   <ul>
#     <li><a href="#nagios_hostgroup-attributes">Attributes</a></li>
#     <li><a href="#nagios_hostgroup-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_hostgroup-description">Description</h3>
#   <p>The Nagios type hostgroup.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_hostgroup.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_hostgroup-attributes">Attributes</h3>
#   <pre><code>nagios_hostgroup { 'resource title':
#     <a href="#nagios_hostgroup-attribute-hostgroup_name">hostgroup_name</a>    =&gt; <em># <strong>(namevar)</strong> The name of this nagios_hostgroup...</em>
#     <a href="#nagios_hostgroup-attribute-ensure">ensure</a>            =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_hostgroup-attribute-action_url">action_url</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-alias">alias</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-group">group</a>             =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_hostgroup-attribute-hostgroup_members">hostgroup_members</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-members">members</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-mode">mode</a>              =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_hostgroup-attribute-notes">notes</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-notes_url">notes_url</a>         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-owner">owner</a>             =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_hostgroup-attribute-provider">provider</a>          =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_hostgroup-attribute-realm">realm</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-register">register</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_hostgroup-attribute-target">target</a>            =&gt; <em># The...</em>
#     <a href="#nagios_hostgroup-attribute-use">use</a>               =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_hostgroup-attribute-hostgroup_name">hostgroup_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_hostgroup resource.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-action_url">action_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-alias">alias</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_hostgroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-hostgroup_members">hostgroup_members</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-members">members</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_hostgroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-notes">notes</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-notes_url">notes_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_hostgroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_hostgroup</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_hostgroup-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-realm">realm</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h4 id="nagios_hostgroup-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_hostgroup-attributes">↑ Back to nagios_hostgroup attributes</a>)</p>
#   <h3 id="nagios_hostgroup-providers">Providers</h3>
#   <h4 id="nagios_hostgroup-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagiosservice">nagios_service</h2>
#   <ul>
#     <li><a href="#nagios_service-attributes">Attributes</a></li>
#     <li><a href="#nagios_service-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_service-description">Description</h3>
#   <p>The Nagios type service.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_service.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_service-attributes">Attributes</h3>
#   <pre><code>nagios_service { 'resource title':
#     <a href="#nagios_service-attribute-_naginator_name">_naginator_name</a>              =&gt; <em># <strong>(namevar)</strong> The name of this nagios_service...</em>
#     <a href="#nagios_service-attribute-ensure">ensure</a>                       =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_service-attribute-action_url">action_url</a>                   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-active_checks_enabled">active_checks_enabled</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-business_impact">business_impact</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-check_command">check_command</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-check_freshness">check_freshness</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-check_interval">check_interval</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-check_period">check_period</a>                 =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-contact_groups">contact_groups</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-contacts">contacts</a>                     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-display_name">display_name</a>                 =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-event_handler">event_handler</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-event_handler_enabled">event_handler_enabled</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-failure_prediction_enabled">failure_prediction_enabled</a>   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-first_notification_delay">first_notification_delay</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-flap_detection_enabled">flap_detection_enabled</a>       =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-flap_detection_options">flap_detection_options</a>       =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-freshness_threshold">freshness_threshold</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-group">group</a>                        =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_service-attribute-high_flap_threshold">high_flap_threshold</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-host_name">host_name</a>                    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-hostgroup_name">hostgroup_name</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-icon_image">icon_image</a>                   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-icon_image_alt">icon_image_alt</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-initial_state">initial_state</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-is_volatile">is_volatile</a>                  =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-low_flap_threshold">low_flap_threshold</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-max_check_attempts">max_check_attempts</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-mode">mode</a>                         =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_service-attribute-normal_check_interval">normal_check_interval</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-notes">notes</a>                        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-notes_url">notes_url</a>                    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-notification_interval">notification_interval</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-notification_options">notification_options</a>         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-notification_period">notification_period</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-notifications_enabled">notifications_enabled</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-obsess_over_service">obsess_over_service</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-owner">owner</a>                        =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_service-attribute-parallelize_check">parallelize_check</a>            =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-passive_checks_enabled">passive_checks_enabled</a>       =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-poller_tag">poller_tag</a>                   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-process_perf_data">process_perf_data</a>            =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-provider">provider</a>                     =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_service-attribute-register">register</a>                     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-retain_nonstatus_information">retain_nonstatus_information</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-retain_status_information">retain_status_information</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-retry_check_interval">retry_check_interval</a>         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-retry_interval">retry_interval</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-service_description">service_description</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-servicegroups">servicegroups</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-stalking_options">stalking_options</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_service-attribute-target">target</a>                       =&gt; <em># The...</em>
#     <a href="#nagios_service-attribute-use">use</a>                          =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_service-attribute-_naginator_name">_naginator_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_service resource.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-action_url">action_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-active_checks_enabled">active_checks_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-business_impact">business_impact</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-check_command">check_command</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-check_freshness">check_freshness</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-check_interval">check_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-check_period">check_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-contact_groups">contact_groups</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-contacts">contacts</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-display_name">display_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-event_handler">event_handler</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-event_handler_enabled">event_handler_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-failure_prediction_enabled">failure_prediction_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-first_notification_delay">first_notification_delay</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-flap_detection_enabled">flap_detection_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-flap_detection_options">flap_detection_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-freshness_threshold">freshness_threshold</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_service resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-high_flap_threshold">high_flap_threshold</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-hostgroup_name">hostgroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-icon_image">icon_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-icon_image_alt">icon_image_alt</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-initial_state">initial_state</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-is_volatile">is_volatile</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-low_flap_threshold">low_flap_threshold</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-max_check_attempts">max_check_attempts</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_service resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-normal_check_interval">normal_check_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-notes">notes</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-notes_url">notes_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-notification_interval">notification_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-notification_options">notification_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-notification_period">notification_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-notifications_enabled">notifications_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-obsess_over_service">obsess_over_service</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_service resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-parallelize_check">parallelize_check</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-passive_checks_enabled">passive_checks_enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-poller_tag">poller_tag</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-process_perf_data">process_perf_data</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_service</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_service-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-retain_nonstatus_information">retain_nonstatus_information</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-retain_status_information">retain_status_information</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-retry_check_interval">retry_check_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-retry_interval">retry_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-service_description">service_description</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-servicegroups">servicegroups</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-stalking_options">stalking_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h4 id="nagios_service-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_service-attributes">↑ Back to nagios_service attributes</a>)</p>
#   <h3 id="nagios_service-providers">Providers</h3>
#   <h4 id="nagios_service-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagiosservicedependency">nagios_servicedependency</h2>
#   <ul>
#     <li><a href="#nagios_servicedependency-attributes">Attributes</a></li>
#     <li><a href="#nagios_servicedependency-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_servicedependency-description">Description</h3>
#   <p>The Nagios type servicedependency.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_servicedependency.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_servicedependency-attributes">Attributes</h3>
#   <pre><code>nagios_servicedependency { 'resource title':
#     <a href="#nagios_servicedependency-attribute-_naginator_name">_naginator_name</a>               =&gt; <em># <strong>(namevar)</strong> The name of this nagios_servicedependency...</em>
#     <a href="#nagios_servicedependency-attribute-ensure">ensure</a>                        =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_servicedependency-attribute-dependency_period">dependency_period</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-dependent_host_name">dependent_host_name</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-dependent_hostgroup_name">dependent_hostgroup_name</a>      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-dependent_service_description">dependent_service_description</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-execution_failure_criteria">execution_failure_criteria</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-group">group</a>                         =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_servicedependency-attribute-host_name">host_name</a>                     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-hostgroup_name">hostgroup_name</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-inherits_parent">inherits_parent</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-mode">mode</a>                          =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_servicedependency-attribute-notification_failure_criteria">notification_failure_criteria</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-owner">owner</a>                         =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_servicedependency-attribute-provider">provider</a>                      =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_servicedependency-attribute-register">register</a>                      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-service_description">service_description</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicedependency-attribute-target">target</a>                        =&gt; <em># The...</em>
#     <a href="#nagios_servicedependency-attribute-use">use</a>                           =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_servicedependency-attribute-_naginator_name">_naginator_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_servicedependency resource.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-dependency_period">dependency_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-dependent_host_name">dependent_host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-dependent_hostgroup_name">dependent_hostgroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-dependent_service_description">dependent_service_description</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-execution_failure_criteria">execution_failure_criteria</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_servicedependency resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-hostgroup_name">hostgroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-inherits_parent">inherits_parent</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_servicedependency resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-notification_failure_criteria">notification_failure_criteria</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_servicedependency resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_servicedependency</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_servicedependency-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-service_description">service_description</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h4 id="nagios_servicedependency-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicedependency-attributes">↑ Back to nagios_servicedependency attributes</a>)</p>
#   <h3 id="nagios_servicedependency-providers">Providers</h3>
#   <h4 id="nagios_servicedependency-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagiosserviceescalation">nagios_serviceescalation</h2>
#   <ul>
#     <li><a href="#nagios_serviceescalation-attributes">Attributes</a></li>
#     <li><a href="#nagios_serviceescalation-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_serviceescalation-description">Description</h3>
#   <p>The Nagios type serviceescalation.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_serviceescalation.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_serviceescalation-attributes">Attributes</h3>
#   <pre><code>nagios_serviceescalation { 'resource title':
#     <a href="#nagios_serviceescalation-attribute-_naginator_name">_naginator_name</a>       =&gt; <em># <strong>(namevar)</strong> The name of this nagios_serviceescalation...</em>
#     <a href="#nagios_serviceescalation-attribute-ensure">ensure</a>                =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_serviceescalation-attribute-contact_groups">contact_groups</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-contacts">contacts</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-escalation_options">escalation_options</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-escalation_period">escalation_period</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-first_notification">first_notification</a>    =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-group">group</a>                 =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_serviceescalation-attribute-host_name">host_name</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-hostgroup_name">hostgroup_name</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-last_notification">last_notification</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-mode">mode</a>                  =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_serviceescalation-attribute-notification_interval">notification_interval</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-owner">owner</a>                 =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_serviceescalation-attribute-provider">provider</a>              =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_serviceescalation-attribute-register">register</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-service_description">service_description</a>   =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-servicegroup_name">servicegroup_name</a>     =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceescalation-attribute-target">target</a>                =&gt; <em># The...</em>
#     <a href="#nagios_serviceescalation-attribute-use">use</a>                   =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_serviceescalation-attribute-_naginator_name">_naginator_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_serviceescalation resource.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-contact_groups">contact_groups</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-contacts">contacts</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-escalation_options">escalation_options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-escalation_period">escalation_period</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-first_notification">first_notification</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_serviceescalation resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-hostgroup_name">hostgroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-last_notification">last_notification</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_serviceescalation resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-notification_interval">notification_interval</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_serviceescalation resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_serviceescalation</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_serviceescalation-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-service_description">service_description</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-servicegroup_name">servicegroup_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h4 id="nagios_serviceescalation-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceescalation-attributes">↑ Back to nagios_serviceescalation attributes</a>)</p>
#   <h3 id="nagios_serviceescalation-providers">Providers</h3>
#   <h4 id="nagios_serviceescalation-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagiosserviceextinfo">nagios_serviceextinfo</h2>
#   <ul>
#     <li><a href="#nagios_serviceextinfo-attributes">Attributes</a></li>
#     <li><a href="#nagios_serviceextinfo-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_serviceextinfo-description">Description</h3>
#   <p>The Nagios type serviceextinfo.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_serviceextinfo.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_serviceextinfo-attributes">Attributes</h3>
#   <pre><code>nagios_serviceextinfo { 'resource title':
#     <a href="#nagios_serviceextinfo-attribute-_naginator_name">_naginator_name</a>     =&gt; <em># <strong>(namevar)</strong> The name of this nagios_serviceextinfo...</em>
#     <a href="#nagios_serviceextinfo-attribute-ensure">ensure</a>              =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_serviceextinfo-attribute-action_url">action_url</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-group">group</a>               =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_serviceextinfo-attribute-host_name">host_name</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-icon_image">icon_image</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-icon_image_alt">icon_image_alt</a>      =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-mode">mode</a>                =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_serviceextinfo-attribute-notes">notes</a>               =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-notes_url">notes_url</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-owner">owner</a>               =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_serviceextinfo-attribute-provider">provider</a>            =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_serviceextinfo-attribute-register">register</a>            =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-service_description">service_description</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_serviceextinfo-attribute-target">target</a>              =&gt; <em># The...</em>
#     <a href="#nagios_serviceextinfo-attribute-use">use</a>                 =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_serviceextinfo-attribute-_naginator_name">_naginator_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_serviceextinfo resource.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-action_url">action_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_serviceextinfo resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-host_name">host_name</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-icon_image">icon_image</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-icon_image_alt">icon_image_alt</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_serviceextinfo resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-notes">notes</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-notes_url">notes_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_serviceextinfo resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_serviceextinfo</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_serviceextinfo-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-service_description">service_description</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h4 id="nagios_serviceextinfo-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_serviceextinfo-attributes">↑ Back to nagios_serviceextinfo attributes</a>)</p>
#   <h3 id="nagios_serviceextinfo-providers">Providers</h3>
#   <h4 id="nagios_serviceextinfo-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagiosservicegroup">nagios_servicegroup</h2>
#   <ul>
#     <li><a href="#nagios_servicegroup-attributes">Attributes</a></li>
#     <li><a href="#nagios_servicegroup-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_servicegroup-description">Description</h3>
#   <p>The Nagios type servicegroup.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_servicegroup.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_servicegroup-attributes">Attributes</h3>
#   <pre><code>nagios_servicegroup { 'resource title':
#     <a href="#nagios_servicegroup-attribute-servicegroup_name">servicegroup_name</a>    =&gt; <em># <strong>(namevar)</strong> The name of this nagios_servicegroup...</em>
#     <a href="#nagios_servicegroup-attribute-ensure">ensure</a>               =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_servicegroup-attribute-action_url">action_url</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicegroup-attribute-alias">alias</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicegroup-attribute-group">group</a>                =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_servicegroup-attribute-members">members</a>              =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicegroup-attribute-mode">mode</a>                 =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_servicegroup-attribute-notes">notes</a>                =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicegroup-attribute-notes_url">notes_url</a>            =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicegroup-attribute-owner">owner</a>                =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_servicegroup-attribute-provider">provider</a>             =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_servicegroup-attribute-register">register</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicegroup-attribute-servicegroup_members">servicegroup_members</a> =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_servicegroup-attribute-target">target</a>               =&gt; <em># The...</em>
#     <a href="#nagios_servicegroup-attribute-use">use</a>                  =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_servicegroup-attribute-servicegroup_name">servicegroup_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_servicegroup resource.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-action_url">action_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-alias">alias</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_servicegroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-members">members</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_servicegroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-notes">notes</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-notes_url">notes_url</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_servicegroup resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_servicegroup</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_servicegroup-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-servicegroup_members">servicegroup_members</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h4 id="nagios_servicegroup-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_servicegroup-attributes">↑ Back to nagios_servicegroup attributes</a>)</p>
#   <h3 id="nagios_servicegroup-providers">Providers</h3>
#   <h4 id="nagios_servicegroup-provider-naginator">naginator</h4>
#   <hr>
#   <h2 id="nagiostimeperiod">nagios_timeperiod</h2>
#   <ul>
#     <li><a href="#nagios_timeperiod-attributes">Attributes</a></li>
#     <li><a href="#nagios_timeperiod-providers">Providers</a></li>
#   </ul>
#   <h3 id="nagios_timeperiod-description">Description</h3>
#   <p>The Nagios type timeperiod.  This resource type is autogenerated using the
#   model developed in Naginator, and all of the Nagios types are generated using the
#   same code and the same library.</p>
#   <p>This type generates Nagios configuration statements in Nagios-parseable configuration
#   files.  By default, the statements will be added to <code>/etc/nagios/nagios_timeperiod.cfg</code>, but
#   you can send them to a different file by setting their <code>target</code> attribute.</p>
#   <p>You can purge Nagios resources using the <code>resources</code> type, but <em>only</em>
#   in the default file locations.  This is an architectural limitation.</p>
#   <h3 id="nagios_timeperiod-attributes">Attributes</h3>
#   <pre><code>nagios_timeperiod { 'resource title':
#     <a href="#nagios_timeperiod-attribute-timeperiod_name">timeperiod_name</a> =&gt; <em># <strong>(namevar)</strong> The name of this nagios_timeperiod...</em>
#     <a href="#nagios_timeperiod-attribute-ensure">ensure</a>          =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#nagios_timeperiod-attribute-alias">alias</a>           =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-exclude">exclude</a>         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-friday">friday</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-group">group</a>           =&gt; <em># The desired group of the config file for this...</em>
#     <a href="#nagios_timeperiod-attribute-mode">mode</a>            =&gt; <em># The desired mode of the config file for this...</em>
#     <a href="#nagios_timeperiod-attribute-monday">monday</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-owner">owner</a>           =&gt; <em># The desired owner of the config file for this...</em>
#     <a href="#nagios_timeperiod-attribute-provider">provider</a>        =&gt; <em># The specific backend to use for this...</em>
#     <a href="#nagios_timeperiod-attribute-register">register</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-saturday">saturday</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-sunday">sunday</a>          =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-target">target</a>          =&gt; <em># The...</em>
#     <a href="#nagios_timeperiod-attribute-thursday">thursday</a>        =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-tuesday">tuesday</a>         =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-use">use</a>             =&gt; <em># Nagios configuration file...</em>
#     <a href="#nagios_timeperiod-attribute-wednesday">wednesday</a>       =&gt; <em># Nagios configuration file...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="nagios_timeperiod-attribute-timeperiod_name">timeperiod_name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of this nagios_timeperiod resource.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-alias">alias</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-exclude">exclude</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-friday">friday</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-group">group</h4>
#   <p>The desired group of the config file for this nagios_timeperiod resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-mode">mode</h4>
#   <p>The desired mode of the config file for this nagios_timeperiod resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-monday">monday</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-owner">owner</h4>
#   <p>The desired owner of the config file for this nagios_timeperiod resource.</p>
#   <p>NOTE: If the target file is explicitly managed by a file resource in your manifest,
#   this parameter has no effect. If a parent directory of the target is managed by
#   a recursive file resource, this limitation does not apply (i.e., this parameter
#   takes precedence, and if purge is used, the target file is exempt).</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>nagios_timeperiod</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#nagios_timeperiod-provider-naginator"><code>naginator</code></a></li>
#   </ul>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-register">register</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-saturday">saturday</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-sunday">sunday</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The target.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-thursday">thursday</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-tuesday">tuesday</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-use">use</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h4 id="nagios_timeperiod-attribute-wednesday">wednesday</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Nagios configuration file parameter.</p>
#   <p>(<a href="#nagios_timeperiod-attributes">↑ Back to nagios_timeperiod attributes</a>)</p>
#   <h3 id="nagios_timeperiod-providers">Providers</h3>
#   <h4 id="nagios_timeperiod-provider-naginator">naginator</h4>
#   <hr>
  $target,
) {
  # Stub
}

# <h2>notify</h2>
#   <p>Sends an arbitrary message to the agent run-time log.</p>
define notify (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>An arbitrary tag for your own reference; the name of the message.</p>
  $name,
# <h2>message</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The message to be sent to the log.</p>
  $message,
# <h2>withpath</h2>
#   <p>Whether to show the full object path. Defaults to false.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
#   <hr>
  $withpath,
) {
  # Stub
}

# <h2>package</h2>
#   <p>Manage packages.  There is a basic dichotomy in package
#   support right now:  Some package types (e.g., yum and apt) can
#   retrieve their own package files, while others (e.g., rpm and sun)
#   cannot.  For those package formats that cannot retrieve their own files,
#   you can use the <code>source</code> parameter to point to the correct file.</p>
#   <p>Puppet will automatically guess the packaging format that you are
#   using based on the platform you are on, but you can override it
#   using the <code>provider</code> parameter; each provider defines what it
#   requires in order to function, and you must meet those requirements
#   to use a given provider.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the files specified as a
#   package’s <code>adminfile</code>, <code>responsefile</code>, or <code>source</code>, the package
#   resource will autorequire those files.</p>
define package (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The package name.  This is the name that the packaging
#   system uses internally, which is sometimes (especially on Solaris)
#   a name that is basically useless to humans.  If you want to
#   abstract package installation, then you can use aliases to provide
#   a common name to packages:</p>
#   <pre><code># In the 'openssl' class
#   $ssl = $operatingsystem ? {
#     solaris =&gt; SMCossl,
#     default =&gt; openssl
#   }
#   # It is not an error to set an alias to the same value as the
#   # object name.
#   package { $ssl:
#     ensure =&gt; installed,
#     alias  =&gt; openssl
#   }
#   . etc. .
#   $ssh = $operatingsystem ? {
#     solaris =&gt; SMCossh,
#     default =&gt; openssh
#   }
#   # Use the alias to specify a dependency, rather than
#   # having another selector to figure it out again.
#   package { $ssh:
#     ensure  =&gt; installed,
#     alias   =&gt; openssh,
#     require =&gt; Package[openssl]
#   }
#   </code></pre>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>What state the package should be in. On packaging systems that can
#   retrieve new packages on their own, you can choose which package to
#   retrieve by specifying a version number or <code>latest</code> as the ensure
#   value. On packaging systems that manage configuration files separately
#   from “normal” system files, you can uninstall config files by
#   specifying <code>purged</code> as the ensure value. This defaults to <code>installed</code>.</p>
#   <p>Valid values are <code>present</code> (also called <code>installed</code>), <code>absent</code>, <code>purged</code>, <code>held</code>, <code>latest</code>. Values can match <code>/./</code>.</p>
  $ensure,
# <h2>adminfile</h2>
#   <p>A file containing package defaults for installing packages.
#   This is currently only used on Solaris.  The value will be
#   validated according to system rules, which in the case of
#   Solaris means that it should either be a fully qualified path
#   or it should be in <code>/var/sadm/install/admin</code>.</p>
  $adminfile,
# <h2>allowcdrom</h2>
#   <p>Tells apt to allow cdrom sources in the sources.list file.
#   Normally apt will bail if you try this.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $allowcdrom,
# <h2>category</h2>
#   <p>A read-only parameter set by the package.</p>
  $category,
# <h2>configfiles</h2>
#   <p>Whether configfiles should be kept or replaced.  Most packages
#   types do not support this parameter. Defaults to <code>keep</code>.</p>
#   <p>Valid values are <code>keep</code>, <code>replace</code>.</p>
  $configfiles,
# <h2>description</h2>
#   <p>A read-only parameter set by the package.</p>
  $description,
# <h2>flavor</h2>
#   <p>OpenBSD supports ‘flavors’, which are further specifications for
#   which type of package you want.</p>
  $flavor,
# <h2>install_options</h2>
#   <p>An array of additional options to pass when installing a package. These
#   options are package-specific, and should be documented by the software
#   vendor.  One commonly implemented option is <code>INSTALLDIR</code>:</p>
#   <pre><code>package { 'mysql':
#     ensure          =&gt; installed,
#     source          =&gt; 'N:/packages/mysql-5.5.16-winx64.msi',
#     install_options =&gt; [ '/S', { 'INSTALLDIR' =&gt; 'C:\mysql-5.5' } ],
#   }
#   </code></pre>
#   <p>Each option in the array can either be a string or a hash, where each
#   key and value pair are interpreted in a provider specific way.  Each
#   option will automatically be quoted when passed to the install command.</p>
#   <p>On Windows, this is the <strong>only</strong> place in Puppet where backslash
#   separators should be used.  Note that backslashes in double-quoted
#   strings <em>must</em> be double-escaped and backslashes in single-quoted
#   strings <em>may</em> be double-escaped.</p>
#   <p>Requires features install_options.</p>
  $install_options,
# <h2>instance</h2>
#   <p>A read-only parameter set by the package.</p>
  $instance,
# <h2>package_settings</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Package settings. The definition of package settings is provider
#   specific. In general, these are certain properties which alter contents
#   of a package being installed. An example of package settings are the
#   FreeBSD ports options.</p>
#   <p>The package_settings attribute is a property. This means that the options
#   can be enforced during package installation and verified/retrieved
#   for packages that are already installed.</p>
#   <p>For example, ports provider on FreeBSD implements the package settings
#   as port build options (the ones you normally set with make config).
#   There is a simple usage example for this particular provider:</p>
#   <pre><code>package { 'www/apache22':
#     package_settings =&gt; { 'SUEXEC' =&gt; false }
#   }
#   </code></pre>
#   <p>The above manifest ensures, that apache22 is compiled without SUEXEC
#   module.</p>
#   <p>Despite the package_settings are provider specific, the typical
#   behavior, when you change package’s package_settings in your manifest,
#   is to reinstall package with new settings.</p>
#   <p>Requires features package_settings.</p>
  $package_settings,
# <h2>platform</h2>
#   <p>A read-only parameter set by the package.</p>
  $platform,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>package</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#package-provider-aix"><code>aix</code></a></li>
#     <li><a href="#package-provider-appdmg"><code>appdmg</code></a></li>
#     <li><a href="#package-provider-apple"><code>apple</code></a></li>
#     <li><a href="#package-provider-apt"><code>apt</code></a></li>
#     <li><a href="#package-provider-aptitude"><code>aptitude</code></a></li>
#     <li><a href="#package-provider-aptrpm"><code>aptrpm</code></a></li>
#     <li><a href="#package-provider-blastwave"><code>blastwave</code></a></li>
#     <li><a href="#package-provider-dpkg"><code>dpkg</code></a></li>
#     <li><a href="#package-provider-fink"><code>fink</code></a></li>
#     <li><a href="#package-provider-freebsd"><code>freebsd</code></a></li>
#     <li><a href="#package-provider-gem"><code>gem</code></a></li>
#     <li><a href="#package-provider-hpux"><code>hpux</code></a></li>
#     <li><a href="#package-provider-macports"><code>macports</code></a></li>
#     <li><a href="#package-provider-msi"><code>msi</code></a></li>
#     <li><a href="#package-provider-nim"><code>nim</code></a></li>
#     <li><a href="#package-provider-openbsd"><code>openbsd</code></a></li>
#     <li><a href="#package-provider-opkg"><code>opkg</code></a></li>
#     <li><a href="#package-provider-pacman"><code>pacman</code></a></li>
#     <li><a href="#package-provider-pip"><code>pip</code></a></li>
#     <li><a href="#package-provider-pkg"><code>pkg</code></a></li>
#     <li><a href="#package-provider-pkgdmg"><code>pkgdmg</code></a></li>
#     <li><a href="#package-provider-pkgin"><code>pkgin</code></a></li>
#     <li><a href="#package-provider-pkgutil"><code>pkgutil</code></a></li>
#     <li><a href="#package-provider-portage"><code>portage</code></a></li>
#     <li><a href="#package-provider-ports"><code>ports</code></a></li>
#     <li><a href="#package-provider-portupgrade"><code>portupgrade</code></a></li>
#     <li><a href="#package-provider-rpm"><code>rpm</code></a></li>
#     <li><a href="#package-provider-rug"><code>rug</code></a></li>
#     <li><a href="#package-provider-sun"><code>sun</code></a></li>
#     <li><a href="#package-provider-sunfreeware"><code>sunfreeware</code></a></li>
#     <li><a href="#package-provider-up2date"><code>up2date</code></a></li>
#     <li><a href="#package-provider-urpmi"><code>urpmi</code></a></li>
#     <li><a href="#package-provider-windows"><code>windows</code></a></li>
#     <li><a href="#package-provider-yum"><code>yum</code></a></li>
#     <li><a href="#package-provider-zypper"><code>zypper</code></a></li>
#   </ul>
  $provider,
# <h2>responsefile</h2>
#   <p>A file containing any necessary answers to questions asked by
#   the package.  This is currently used on Solaris and Debian.  The
#   value will be validated according to system rules, but it should
#   generally be a fully qualified path.</p>
  $responsefile,
# <h2>root</h2>
#   <p>A read-only parameter set by the package.</p>
  $root,
# <h2>source</h2>
#   <p>Where to find the actual package. This must be a local file
#   (or on a network file system) or a URL that your specific
#   packaging type understands; Puppet will not retrieve files for you,
#   although you can manage packages as <code>file</code> resources.</p>
  $source,
# <h2>status</h2>
#   <p>A read-only parameter set by the package.</p>
  $status,
# <h2>uninstall_options</h2>
#   <p>An array of additional options to pass when uninstalling a package. These
#   options are package-specific, and should be documented by the software
#   vendor.  For example:</p>
#   <pre><code>package { 'VMware Tools':
#     ensure            =&gt; absent,
#     uninstall_options =&gt; [ { 'REMOVE' =&gt; 'Sync,VSS' } ],
#   }
#   </code></pre>
#   <p>Each option in the array can either be a string or a hash, where each
#   key and value pair are interpreted in a provider specific way.  Each
#   option will automatically be quoted when passed to the uninstall
#   command.</p>
#   <p>On Windows, this is the <strong>only</strong> place in Puppet where backslash
#   separators should be used.  Note that backslashes in double-quoted
#   strings <em>must</em> be double-escaped and backslashes in single-quoted
#   strings <em>may</em> be double-escaped.</p>
#   <p>Requires features uninstall_options.</p>
  $uninstall_options,
# <h2>vendor</h2>
#   <p>A read-only parameter set by the package.</p>
#   <h3 id="package-providers">Providers</h3>
#   <h4 id="package-provider-aix">aix</h4>
#   <p>Installation from an AIX software directory, using the AIX <code>installp</code>
#   command.  The <code>source</code> parameter is required for this provider, and should
#   be set to the absolute path (on the puppet agent machine) of a directory
#   containing one or more BFF package files.</p>
#   <p>The <code>installp</code> command will generate a table of contents file (named <code>.toc</code>)
#   in this directory, and the <code>name</code> parameter (or resource title) that you
#   specify for your <code>package</code> resource must match a package name that exists
#   in the <code>.toc</code> file.</p>
#   <p>Note that package downgrades are <em>not</em> supported; if your resource specifies
#   a specific version number and there is already a newer version of the package
#   installed on the machine, the resource will fail with an error message.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/lslpp</code>, <code>/usr/sbin/installp</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>aix</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-appdmg">appdmg</h4>
#   <p>Package management which copies application bundles to a target.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/curl</code>, <code>/usr/bin/ditto</code>, <code>/usr/bin/hdiutil</code>.</li>
#     <li>Supported features: <code>installable</code>.</li>
#   </ul>
#   <h4 id="package-provider-apple">apple</h4>
#   <p>Package management based on OS X’s builtin packaging system.  This is
#   essentially the simplest and least functional package system in existence –
#   it only supports installation; no deletion or upgrades.  The provider will
#   automatically add the <code>.pkg</code> extension, so leave that off when specifying
#   the package name.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/installer</code>.</li>
#     <li>Supported features: <code>installable</code>.</li>
#   </ul>
#   <h4 id="package-provider-apt">apt</h4>
#   <p>Package management via <code>apt-get</code>.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/apt-cache</code>, <code>/usr/bin/apt-get</code>, <code>/usr/bin/debconf-set-selections</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>debian, ubuntu</code>.</li>
#     <li>Supported features: <code>holdable</code>, <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-aptitude">aptitude</h4>
#   <p>Package management via <code>aptitude</code>.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/apt-cache</code>, <code>/usr/bin/aptitude</code>.</li>
#     <li>Supported features: <code>holdable</code>, <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-aptrpm">aptrpm</h4>
#   <p>Package management via <code>apt-get</code> ported to <code>rpm</code>.</p>
#   <ul>
#     <li>Required binaries: <code>apt-cache</code>, <code>apt-get</code>, <code>rpm</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-blastwave">blastwave</h4>
#   <p>Package management using Blastwave.org’s <code>pkg-get</code> command on Solaris.</p>
#   <ul>
#     <li>Required binaries: <code>pkg-get</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-dpkg">dpkg</h4>
#   <p>Package management via <code>dpkg</code>.  Because this only uses <code>dpkg</code>
#   and not <code>apt</code>, you must specify the source of any packages you want
#   to manage.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/dpkg-deb</code>, <code>/usr/bin/dpkg-query</code>, <code>/usr/bin/dpkg</code>.</li>
#     <li>Supported features: <code>holdable</code>, <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-fink">fink</h4>
#   <p>Package management via <code>fink</code>.</p>
#   <ul>
#     <li>Required binaries: <code>/sw/bin/apt-cache</code>, <code>/sw/bin/apt-get</code>, <code>/sw/bin/dpkg-query</code>, <code>/sw/bin/fink</code>.</li>
#     <li>Supported features: <code>holdable</code>, <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-freebsd">freebsd</h4>
#   <p>The specific form of package management on FreeBSD.  This is an
#   extremely quirky packaging system, in that it freely mixes between
#   ports and packages.  Apparently all of the tools are written in Ruby,
#   so there are plans to rewrite this support to directly use those
#   libraries.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/pkg_add</code>, <code>/usr/sbin/pkg_delete</code>, <code>/usr/sbin/pkg_info</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>.</li>
#   </ul>
#   <h4 id="package-provider-gem">gem</h4>
#   <p>Ruby Gem support.  If a URL is passed via <code>source</code>, then that URL is used as the
#   remote gem repository; if a source is present but is not a valid URL, it will be
#   interpreted as the path to a local gem file.  If source is not present at all,
#   the gem will be installed from the default gem repositories.</p>
#   <ul>
#     <li>Required binaries: <code>gem</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-hpux">hpux</h4>
#   <p>HP-UX’s packaging system.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/swinstall</code>, <code>/usr/sbin/swlist</code>, <code>/usr/sbin/swremove</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>hp-ux</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>.</li>
#   </ul>
#   <h4 id="package-provider-macports">macports</h4>
#   <p>Package management using MacPorts on OS X.</p>
#   <p>Supports MacPorts versions and revisions, but not variants.
#   Variant preferences may be specified using
#   <a href="http://guide.macports.org/chunked/internals.configuration-files.html#internals.configuration-files.variants-conf">the MacPorts variants.conf file</a>.</p>
#   <p>When specifying a version in the Puppet DSL, only specify the version, not the revision.
#   Revisions are only used internally for ensuring the latest version/revision of a port.</p>
#   <ul>
#     <li>Required binaries: <code>/opt/local/bin/port</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-msi">msi</h4>
#   <p>Windows package management by installing and removing MSIs.</p>
#   <p>The <code>msi</code> provider is deprecated. Use the <code>windows</code> provider instead.</p>
#   <ul>
#     <li>Supported features: <code>install_options</code>, <code>installable</code>, <code>uninstall_options</code>, <code>uninstallable</code>.</li>
#   </ul>
#   <h4 id="package-provider-nim">nim</h4>
#   <p>Installation from an AIX NIM LPP source.  The <code>source</code> parameter is required
#   for this provider, and should specify the name of a NIM <code>lpp_source</code> resource
#   that is visible to the puppet agent machine.  This provider supports the
#   management of both BFF/installp and RPM packages.</p>
#   <p>Note that package downgrades are <em>not</em> supported; if your resource specifies
#   a specific version number and there is already a newer version of the package
#   installed on the machine, the resource will fail with an error message.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/lslpp</code>, <code>/usr/sbin/nimclient</code>, <code>rpm</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-openbsd">openbsd</h4>
#   <p>OpenBSD’s form of <code>pkg_add</code> support.</p>
#   <ul>
#     <li>Required binaries: <code>pkg_add</code>, <code>pkg_delete</code>, <code>pkg_info</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>openbsd</code>.</li>
#     <li>Supported features: <code>install_options</code>, <code>installable</code>, <code>purgeable</code>, <code>uninstall_options</code>, <code>uninstallable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-opkg">opkg</h4>
#   <p>Opkg packaging support. Common on OpenWrt and OpenEmbedded platforms</p>
#   <ul>
#     <li>Required binaries: <code>opkg</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>openwrt</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-pacman">pacman</h4>
#   <p>Support for the Package Manager Utility (pacman) used in Archlinux.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/pacman</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>archlinux</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-pip">pip</h4>
#   <p>Python packages via <code>pip</code>.</p>
#   <ul>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-pkg">pkg</h4>
#   <p>OpenSolaris image packaging system. See pkg(5) for more information</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/pkg</code>.</li>
#     <li>Default for <code>kernelrelease</code> == <code>5.11</code> and <code>osfamily</code> == <code>solaris</code>.</li>
#     <li>Supported features: <code>holdable</code>, <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-pkgdmg">pkgdmg</h4>
#   <p>Package management based on Apple’s Installer.app and DiskUtility.app.</p>
#   <p>This provider works by checking the contents of a DMG image for Apple pkg or
#   mpkg files. Any number of pkg or mpkg files may exist in the root directory
#   of the DMG file system, and Puppet will install all of them. Subdirectories
#   are not checked for packages.</p>
#   <p>This provider can also accept plain .pkg (but not .mpkg) files in addition
#   to .dmg files.</p>
#   <p>Notes:</p>
#   <ul>
#     <li>The <code>source</code> attribute is mandatory. It must be either a local disk path
#   or an HTTP, HTTPS, or FTP URL to the package.</li>
#     <li>The <code>name</code> of the resource must be the filename (without path) of the DMG file.</li>
#     <li>When installing the packages from a DMG, this provider writes a file to
#   disk at <code>/var/db/.puppet_pkgdmg_installed_NAME</code>. If that file is present,
#   Puppet assumes all packages from that DMG are already installed.</li>
#     <li>
#       <p>This provider is not versionable and uses DMG filenames to determine
#   whether a package has been installed. Thus, to install new a version of a
#   package, you must create a new DMG with a different filename.</p>
#     </li>
#     <li>Required binaries: <code>/usr/bin/curl</code>, <code>/usr/bin/hdiutil</code>, <code>/usr/sbin/installer</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>darwin</code>.</li>
#     <li>Supported features: <code>installable</code>.</li>
#   </ul>
#   <h4 id="package-provider-pkgin">pkgin</h4>
#   <p>Package management using pkgin, a binary package manager for pkgsrc.</p>
#   <ul>
#     <li>Required binaries: <code>pkgin</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>dragonfly, smartos</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-pkgutil">pkgutil</h4>
#   <p>Package management using Peter Bonivart’s <code>pkgutil</code> command on Solaris.</p>
#   <ul>
#     <li>Required binaries: <code>pkgutil</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-portage">portage</h4>
#   <p>Provides packaging support for Gentoo’s portage system.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/eix-update</code>, <code>/usr/bin/eix</code>, <code>/usr/bin/emerge</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>gentoo</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-ports">ports</h4>
#   <p>Support for FreeBSD’s ports.  Note that this, too, mixes packages and ports.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/local/sbin/pkg_deinstall</code>, <code>/usr/local/sbin/portupgrade</code>, <code>/usr/local/sbin/portversion</code>, <code>/usr/sbin/pkg_info</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>freebsd</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-portupgrade">portupgrade</h4>
#   <p>Support for FreeBSD’s ports using the portupgrade ports management software.
#   Use the port’s full origin as the resource name. eg (ports-mgmt/portupgrade)
#   for the portupgrade port.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/local/sbin/pkg_deinstall</code>, <code>/usr/local/sbin/portinstall</code>, <code>/usr/local/sbin/portupgrade</code>, <code>/usr/local/sbin/portversion</code>, <code>/usr/sbin/pkg_info</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-rpm">rpm</h4>
#   <p>RPM packaging support; should work anywhere with a working <code>rpm</code>
#   binary.</p>
#   <p>This provider supports the <code>install_options</code> and <code>uninstall_options</code>
#   attributes, which allow command-line flags to be passed to the RPM binary.
#   These options should be specified as an array, where each element is either
#   a string or a <code>{'--flag' =&gt; 'value'}</code> hash. (That hash example would be
#   equivalent to a <code>'--flag=value'</code> string; the hash syntax is available as a
#   convenience.)</p>
#   <ul>
#     <li>Required binaries: <code>rpm</code>.</li>
#     <li>Supported features: <code>install_options</code>, <code>installable</code>, <code>uninstall_options</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-rug">rug</h4>
#   <p>Support for suse <code>rug</code> package manager.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/rug</code>, <code>rpm</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>suse, sles</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-sun">sun</h4>
#   <p>Sun’s packaging system.  Requires that you specify the source for
#   the packages you’re managing.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/pkginfo</code>, <code>/usr/sbin/pkgadd</code>, <code>/usr/sbin/pkgrm</code>.</li>
#     <li>Default for <code>osfamily</code> == <code>solaris</code>.</li>
#     <li>Supported features: <code>install_options</code>, <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-sunfreeware">sunfreeware</h4>
#   <p>Package management using sunfreeware.com’s <code>pkg-get</code> command on Solaris.
#   At this point, support is exactly the same as <code>blastwave</code> support and
#   has not actually been tested.</p>
#   <ul>
#     <li>Required binaries: <code>pkg-get</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-up2date">up2date</h4>
#   <p>Support for Red Hat’s proprietary <code>up2date</code> package update
#   mechanism.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/up2date-nox</code>.</li>
#     <li>Default for <code>lsbdistrelease</code> == <code>2.1, 3, 4</code> and <code>osfamily</code> == <code>redhat</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>.</li>
#   </ul>
#   <h4 id="package-provider-urpmi">urpmi</h4>
#   <p>Support via <code>urpmi</code>.</p>
#   <ul>
#     <li>Required binaries: <code>rpm</code>, <code>urpme</code>, <code>urpmi</code>, <code>urpmq</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>mandriva, mandrake</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-windows">windows</h4>
#   <p>Windows package management.</p>
#   <p>This provider supports either MSI or self-extracting executable installers.</p>
#   <p>This provider requires a <code>source</code> attribute when installing the package.
#   It accepts paths to local files, mapped drives, or UNC paths.</p>
#   <p>If the executable requires special arguments to perform a silent install or
#   uninstall, then the appropriate arguments should be specified using the
#   <code>install_options</code> or <code>uninstall_options</code> attributes, respectively.  Puppet
#   will automatically quote any option that contains spaces.</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>windows</code>.</li>
#     <li>Supported features: <code>install_options</code>, <code>installable</code>, <code>uninstall_options</code>, <code>uninstallable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-yum">yum</h4>
#   <p>Support via <code>yum</code>.</p>
#   <p>Using this provider’s <code>uninstallable</code> feature will not remove dependent packages. To
#   remove dependent packages with this provider use the <code>purgeable</code> feature, but note this
#   feature is destructive and should be used with the utmost care.</p>
#   <ul>
#     <li>Required binaries: <code>python</code>, <code>rpm</code>, <code>yum</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>fedora, centos, redhat</code>.</li>
#     <li>Supported features: <code>installable</code>, <code>purgeable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h4 id="package-provider-zypper">zypper</h4>
#   <p>Support for SuSE <code>zypper</code> package manager. Found in SLES10sp2+ and SLES11</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/zypper</code>.</li>
#     <li>Supported features: <code>install_options</code>, <code>installable</code>, <code>uninstallable</code>, <code>upgradeable</code>, <code>versionable</code>.</li>
#   </ul>
#   <h3 id="package-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>holdable</code> — The provider is capable of placing 
#   packages on hold such that they are not automatically upgraded as a 
#   result of other package dependencies unless explicit action is taken by a
#    user or another package. Held is considered a superset of installed.</li>
#     <li><code>install_options</code> — The provider accepts options to be passed to the installer command.</li>
#     <li><code>installable</code> — The provider can install packages.</li>
#     <li><code>package_settings</code> — The provider accepts 
#   package_settings to be ensured for the given package. The meaning and 
#   format of these settings is provider-specific.</li>
#     <li><code>purgeable</code> — The provider can purge packages.  This 
#   generally means that all traces of the package are removed, including 
#   existing configuration files.  This feature is thus destructive and 
#   should be used with the utmost care.</li>
#     <li><code>uninstall_options</code> — The provider accepts options to be passed to the uninstaller command.</li>
#     <li><code>uninstallable</code> — The provider can uninstall packages.</li>
#     <li><code>upgradeable</code> — The provider can upgrade to the latest version of a package.  This feature is used by specifying <code>latest</code> as the desired value for the package.</li>
#     <li><code>versionable</code> — The provider is capable of 
#   interrogating the package database for installed version(s), and can 
#   select which out of a set of available versions of a package to install 
#   if asked.</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>holdable</th>
#         <th>install options</th>
#         <th>installable</th>
#         <th>package settings</th>
#         <th>purgeable</th>
#         <th>uninstall options</th>
#         <th>uninstallable</th>
#         <th>upgradeable</th>
#         <th>versionable</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>aix</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>appdmg</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>apple</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>apt</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>aptitude</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>aptrpm</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>blastwave</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>dpkg</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>fink</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>freebsd</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>gem</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>hpux</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>macports</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>msi</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>nim</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>openbsd</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>opkg</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>pacman</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>pip</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>pkg</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>pkgdmg</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>pkgin</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>pkgutil</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>portage</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>ports</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>portupgrade</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>rpm</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>rug</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>sun</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>sunfreeware</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>up2date</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>urpmi</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>windows</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>yum</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>zypper</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
  $vendor,
) {
  # Stub
}

# <h2>resources</h2>
#   <p>This is a metatype that can manage other resource types.  Any
#   metaparams specified here will be passed on to any generated resources,
#   so you can purge umanaged resources but set <code>noop</code> to true so the
#   purging is only logged and does not actually happen.</p>
define resources (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the type to be managed.</p>
  $name,
# <h2>purge</h2>
#   <p>Purge unmanaged resources.  This will delete any resource
#   that is not specified in your configuration
#   and is not required by any specified resources.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $purge,
# <h2>unless_system_user</h2>
#   <p>This keeps system users from being purged.  By default, it
#   does not purge users whose UIDs are less than or equal to 500, but you can specify
#   a different UID as the inclusive limit.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>. Values can match <code>/^\d+$/</code>.</p>
  $unless_system_user,
# <h2>unless_uid</h2>
#   <p>This keeps specific uids or ranges of uids from being purged when purge is true.
#   Accepts ranges, integers and (mixed) arrays of both.</p>
#   <hr>
  $unless_uid,
) {
  # Stub
}

# <h2>router</h2>
#   <p>Manages connected router.</p>
define router (
# <h2>url</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>An SSH or telnet URL at which to access the router, in the form
#   <code>ssh://user:pass:enable@host/</code> or <code>telnet://user:pass:enable@host/</code>.</p>
#   <hr>
  $url,
) {
  # Stub
}

# <h2>schedule</h2>
#   <p>Define schedules for Puppet. Resources can be limited to a schedule by using the
#   <a href="http://docs.puppetlabs.com/references/latest/metaparameter.html#schedule"><code>schedule</code></a>
#   metaparameter.</p>
#   <p>Currently, <strong>schedules can only be used to stop a resource from being
#   applied;</strong> they cannot cause a resource to be applied when it otherwise
#   wouldn’t be, and they cannot accurately specify a time when a resource
#   should run.</p>
#   <p>Every time Puppet applies its configuration, it will apply the
#   set of resources whose schedule does not eliminate them from
#   running right then, but there is currently no system in place to
#   guarantee that a given resource runs at a given time.  If you
#   specify a very  restrictive schedule and Puppet happens to run at a
#   time within that schedule, then the resources will get applied;
#   otherwise, that work may never get done.</p>
#   <p>Thus, it is advisable to use wider scheduling (e.g., over a couple of
#   hours) combined with periods and repetitions.  For instance, if you
#   wanted to restrict certain resources to only running once, between
#   the hours of two and 4 AM, then you would use this schedule:</p>
#   <pre><code>schedule { 'maint':
#     range  =&gt; "2 - 4",
#     period =&gt; daily,
#     repeat =&gt; 1,
#   }
#   </code></pre>
#   <p>With this schedule, the first time that Puppet runs between 2 and 4 AM,
#   all resources with this schedule will get applied, but they won’t
#   get applied again between 2 and 4 because they will have already
#   run once that day, and they won’t get applied outside that schedule
#   because they will be outside the scheduled range.</p>
#   <p>Puppet automatically creates a schedule for each of the valid periods
#   with the same name as that period (e.g., hourly and daily).
#   Additionally, a schedule named <code>puppet</code> is created and used as the
#   default, with the following attributes:</p>
#   <pre><code>schedule { 'puppet':
#     period =&gt; hourly,
#     repeat =&gt; 2,
#   }
#   </code></pre>
#   <p>This will cause resources to be applied every 30 minutes by default.</p>
define schedule (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the schedule.  This name is used when assigning the schedule
#   to a resource with the <code>schedule</code> metaparameter:</p>
#   <pre><code>schedule { 'everyday':
#     period =&gt; daily,
#     range  =&gt; "2 - 4",
#   }
#   exec { "/usr/bin/apt-get update":
#     schedule =&gt; 'everyday',
#   }
#   </code></pre>
  $name,
# <h2>period</h2>
#   <p>The period of repetition for resources on this schedule. The default is
#   for resources to get applied every time Puppet runs.</p>
#   <p>Note that the period defines how often a given resource will get
#   applied but not when; if you would like to restrict the hours
#   that a given resource can be applied (e.g., only at night during
#   a maintenance window), then use the <code>range</code> attribute.</p>
#   <p>If the provided periods are not sufficient, you can provide a
#   value to the <em>repeat</em> attribute, which will cause Puppet to
#   schedule the affected resources evenly in the period the
#   specified number of times.  Take this schedule:</p>
#   <pre><code>schedule { 'veryoften':
#     period =&gt; hourly,
#     repeat =&gt; 6,
#   }
#   </code></pre>
#   <p>This can cause Puppet to apply that resource up to every 10 minutes.</p>
#   <p>At the moment, Puppet cannot guarantee that level of repetition; that
#   is, the resource can applied <em>up to</em> every 10 minutes, but internal
#   factors might prevent it from actually running that often (e.g. if a
#   Puppet run is still in progress when the next run is scheduled to start,
#   that next run will be suppressed).</p>
#   <p>See the <code>periodmatch</code> attribute for tuning whether to match
#   times by their distance apart or by their specific value.</p>
#   <p>Valid values are <code>hourly</code>, <code>daily</code>, <code>weekly</code>, <code>monthly</code>, <code>never</code>.</p>
  $period,
# <h2>periodmatch</h2>
#   <p>Whether periods should be matched by number (e.g., the two times
#   are in the same hour) or by distance (e.g., the two times are
#   60 minutes apart).</p>
#   <p>Valid values are <code>number</code>, <code>distance</code>.</p>
  $periodmatch,
# <h2>range</h2>
#   <p>The earliest and latest that a resource can be applied.  This is
#   always a hyphen-separated range within a 24 hour period, and hours
#   must be specified in numbers between 0 and 23, inclusive.  Minutes and
#   seconds can optionally be provided, using the normal colon as a
#   separator. For instance:</p>
#   <pre><code>schedule { 'maintenance':
#     range =&gt; "1:30 - 4:30",
#   }
#   </code></pre>
#   <p>This is mostly useful for restricting certain resources to being
#   applied in maintenance windows or during off-peak hours. Multiple
#   ranges can be applied in array context. As a convenience when specifying
#   ranges, you may cross midnight (e.g.: range =&gt; “22:00 - 04:00”).</p>
  $range,
# <h2>repeat</h2>
#   <p>How often a given resource may be applied in this schedule’s <code>period</code>.
#   Defaults to 1; must be an integer.</p>
  $repeat,
# <h2>weekday</h2>
#   <p>The days of the week in which the schedule should be valid.
#   You may specify the full day name (Tuesday), the three character
#   abbreviation (Tue), or a number corresponding to the day of the
#   week where 0 is Sunday, 1 is Monday, etc. Multiple days can be specified
#   as an array. If not specified, the day of the week will not be
#   considered in the schedule.</p>
#   <p>If you are also using a range match that spans across midnight
#   then this parameter will match the day that it was at the start
#   of the range, not necessarily the day that it is when it matches.
#   For example, consider this schedule:</p>
#   <pre><code>schedule { 'maintenance_window':
#     range   =&gt; '22:00 - 04:00',
#     weekday =&gt; 'Saturday',
#   }
#   </code></pre>
#   <p>This will match at 11 PM on Saturday and 2 AM on Sunday, but not
#   at 2 AM on Saturday.</p>
#   <hr>
#   <h2 id="scheduledtask">scheduled_task</h2>
#   <ul>
#     <li><a href="#scheduled_task-attributes">Attributes</a></li>
#     <li><a href="#scheduled_task-providers">Providers</a></li>
#   </ul>
#   <h3 id="scheduled_task-description">Description</h3>
#   <p>Installs and manages Windows Scheduled Tasks.  All attributes
#   except <code>name</code>, <code>command</code>, and <code>trigger</code> are optional; see the description
#   of the <code>trigger</code> attribute for details on setting schedules.</p>
#   <h3 id="scheduled_task-attributes">Attributes</h3>
#   <pre><code>scheduled_task { 'resource title':
#     <a href="#scheduled_task-attribute-name">name</a>        =&gt; <em># <strong>(namevar)</strong> The name assigned to the scheduled task.  This...</em>
#     <a href="#scheduled_task-attribute-ensure">ensure</a>      =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#scheduled_task-attribute-arguments">arguments</a>   =&gt; <em># Any arguments or flags that should be passed to...</em>
#     <a href="#scheduled_task-attribute-command">command</a>     =&gt; <em># The full path to the application to run, without </em>
#     <a href="#scheduled_task-attribute-enabled">enabled</a>     =&gt; <em># Whether the triggers for this task should be...</em>
#     <a href="#scheduled_task-attribute-password">password</a>    =&gt; <em># The password for the user specified in the...</em>
#     <a href="#scheduled_task-attribute-provider">provider</a>    =&gt; <em># The specific backend to use for this...</em>
#     <a href="#scheduled_task-attribute-trigger">trigger</a>     =&gt; <em># One or more triggers defining when the task...</em>
#     <a href="#scheduled_task-attribute-user">user</a>        =&gt; <em># The user to run the scheduled task as.  Please...</em>
#     <a href="#scheduled_task-attribute-working_dir">working_dir</a> =&gt; <em># The full path of the directory in which to start </em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="scheduled_task-attribute-name">name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name assigned to the scheduled task.  This will uniquely
#   identify the task on the system.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-arguments">arguments</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Any arguments or flags that should be passed to the command. Multiple arguments
#   should be specified as a space-separated string.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-command">command</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The full path to the application to run, without any arguments.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-enabled">enabled</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether the triggers for this task should be enabled. This attribute
#   affects every trigger for the task; triggers cannot be enabled or
#   disabled individually.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-password">password</h4>
#   <p>The password for the user specified in the ‘user’ attribute.
#   This is only used if specifying a user other than ‘SYSTEM’.
#   Since there is no way to retrieve the password used to set the
#   account information for a task, this parameter will not be used
#   to determine if a scheduled task is in sync or not.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>scheduled_task</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#scheduled_task-provider-win32_taskscheduler"><code>win32_taskscheduler</code></a></li>
#   </ul>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-trigger">trigger</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>One or more triggers defining when the task should run. A single trigger is
#   represented as a hash, and multiple triggers can be specified with an array of
#   hashes.</p>
#   <p>A trigger can contain the following keys:</p>
#   <ul>
#     <li>For all triggers:
#       <ul>
#         <li><code>schedule</code> <strong>(Required)</strong> — The schedule type. Valid values are
#   <code>daily</code>, <code>weekly</code>, <code>monthly</code>, or <code>once</code>.</li>
#         <li><code>start_time</code> <strong>(Required)</strong> — The time of day when the trigger should
#   first become active. Several time formats will work, but we
#   suggest 24-hour time formatted as HH:MM.</li>
#         <li><code>start_date</code> —  The date when the trigger should first become active.
#   Defaults to “today.” Several date formats will work, including
#   special dates like “today,” but we suggest formatting dates as
#   YYYY-MM-DD.</li>
#       </ul>
#     </li>
#     <li>For daily triggers:
#       <ul>
#         <li><code>every</code> — How often the task should run, as a number of days. Defaults
#   to 1. (“2” means every other day, “3” means every three days, etc.)</li>
#       </ul>
#     </li>
#     <li>For weekly triggers:
#       <ul>
#         <li><code>every</code> — How often the task should run, as a number of weeks. Defaults
#   to 1. (“2” means every other week, “3” means every three weeks, etc.)</li>
#         <li><code>day_of_week</code> — Which days of the week the task should run, as an array.
#   Defaults to all days. Each day must be one of <code>mon</code>, <code>tues</code>,
#   <code>wed</code>, <code>thurs</code>, <code>fri</code>, <code>sat</code>, <code>sun</code>, or <code>all</code>.</li>
#       </ul>
#     </li>
#     <li>For monthly-by-date triggers:
#       <ul>
#         <li><code>months</code> — Which months the task should run, as an array. Defaults to
#   all months. Each month must be an integer between 1 and 12.</li>
#         <li><code>on</code> <strong>(Required)</strong> — Which days of the month the task should run,
#   as an array. Each day must beeither an integer between 1 and 31,
#   or the special value <code>last,</code> which is always the last day of the month.</li>
#       </ul>
#     </li>
#     <li>For monthly-by-weekday triggers:
#       <ul>
#         <li><code>months</code> — Which months the task should run, as an array. Defaults to
#   all months. Each month must be an integer between 1 and 12.</li>
#         <li><code>day_of_week</code> <strong>(Required)</strong> — Which day of the week the task should
#   run, as an array with only one element. Each day must be one of <code>mon</code>,
#   <code>tues</code>, <code>wed</code>, <code>thurs</code>, <code>fri</code>, <code>sat</code>, <code>sun</code>, or <code>all</code>.</li>
#         <li><code>which_occurrence</code> <strong>(Required)</strong> — The occurrence of the chosen weekday
#   when the task should run. Must be one of <code>first</code>, <code>second</code>, <code>third</code>,
#   <code>fourth</code>, <code>fifth</code>, or <code>last</code>.</li>
#       </ul>
#     </li>
#   </ul>
#   <p>Examples:</p>
#   <pre><code># Run at 8am on the 1st, 15th, and last day of the month in January, March,
#   # May, July, September, and November, starting after August 31st, 2011.
#   trigger =&gt; {
#     schedule   =&gt; monthly,
#     start_date =&gt; '2011-08-31',   # Defaults to 'today'
#     start_time =&gt; '08:00',        # Must be specified
#     months     =&gt; [1,3,5,7,9,11], # Defaults to all
#     on         =&gt; [1, 15, last],  # Must be specified
#   }
#   # Run at 8am on the first Monday of the month for January, March, and May,
#   # starting after August 31st, 2011.
#   trigger =&gt; {
#     schedule         =&gt; monthly,
#     start_date       =&gt; '2011-08-31', # Defaults to 'today'
#     start_time       =&gt; '08:00',      # Must be specified
#     months           =&gt; [1,3,5],      # Defaults to all
#     which_occurrence =&gt; first,        # Must be specified
#     day_of_week      =&gt; [mon],        # Must be specified
#   }
#   </code></pre>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-user">user</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user to run the scheduled task as.  Please note that not
#   all security configurations will allow running a scheduled task
#   as ‘SYSTEM’, and saving the scheduled task under these
#   conditions will fail with a reported error of ‘The operation
#   completed successfully’.  It is recommended that you either
#   choose another user to run the scheduled task, or alter the
#   security policy to allow v1 scheduled tasks to run as the
#   ‘SYSTEM’ account.  Defaults to ‘SYSTEM’.</p>
#   <p>Please also note that Puppet must be running as a privileged user
#   in order to manage <code>scheduled_task</code> resources. Running as an
#   unprivileged user will result in ‘access denied’ errors.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h4 id="scheduled_task-attribute-working_dir">working_dir</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The full path of the directory in which to start the command.</p>
#   <p>(<a href="#scheduled_task-attributes">↑ Back to scheduled_task attributes</a>)</p>
#   <h3 id="scheduled_task-providers">Providers</h3>
#   <h4 id="scheduled_task-provider-win32_taskscheduler">win32_taskscheduler</h4>
#   <p>This provider uses the win32-taskscheduler gem to manage scheduled
#   tasks on Windows.</p>
#   <p>Puppet requires version 0.2.1 or later of the win32-taskscheduler gem;
#   previous versions can cause “Could not evaluate: The operation completed
#   successfully” errors.</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>windows</code>.</li>
#   </ul>
#   <hr>
  $weekday,
) {
  # Stub
}

# <h2>selboolean</h2>
#   <p>Manages SELinux booleans on systems with SELinux support.  The supported booleans
#   are any of the ones found in <code>/selinux/booleans/</code>.</p>
define selboolean (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the SELinux boolean to be managed.</p>
  $name,
# <h2>persistent</h2>
#   <p>If set true, SELinux booleans will be written to disk and persist accross reboots.
#   The default is <code>false</code>.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $persistent,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>selboolean</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#selboolean-provider-getsetsebool"><code>getsetsebool</code></a></li>
#   </ul>
  $provider,
# <h2>value</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether the SELinux boolean should be enabled or disabled.</p>
#   <p>Valid values are <code>on</code>, <code>off</code>.</p>
#   <h3 id="selboolean-providers">Providers</h3>
#   <h4 id="selboolean-provider-getsetsebool">getsetsebool</h4>
#   <p>Manage SELinux booleans using the getsebool and setsebool binaries.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/getsebool</code>, <code>/usr/sbin/setsebool</code>.</li>
#   </ul>
#   <hr>
  $value,
) {
  # Stub
}

# <h2>selmodule</h2>
#   <p>Manages loading and unloading of SELinux policy modules
#   on the system.  Requires SELinux support.  See man semodule(8)
#   for more information on SELinux policy modules.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the file containing this SELinux
#   policy module (which is either explicitly specified in the <code>selmodulepath</code>
#   attribute or will be found at {<code>selmoduledir</code>}/{<code>name</code>}.pp), the selmodule
#   resource will autorequire that file.</p>
define selmodule (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the SELinux policy to be managed.  You should not
#   include the customary trailing .pp extension.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>selmodule</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#selmodule-provider-semodule"><code>semodule</code></a></li>
#   </ul>
  $provider,
# <h2>selmoduledir</h2>
#   <p>The directory to look for the compiled pp module file in.
#   Currently defaults to <code>/usr/share/selinux/targeted</code>.  If the
#   <code>selmodulepath</code> attribute is not specified, Puppet will expect to find
#   the module in <code>&lt;selmoduledir&gt;/&lt;name&gt;.pp</code>, where <code>name</code> is the value of the
#   <code>name</code> parameter.</p>
  $selmoduledir,
# <h2>selmodulepath</h2>
#   <p>The full path to the compiled .pp policy module.  You only need to use
#   this if the module file is not in the <code>selmoduledir</code> directory.</p>
  $selmodulepath,
# <h2>syncversion</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>If set to <code>true</code>, the policy will be reloaded if the
#   version found in the on-disk file differs from the loaded
#   version.  If set to <code>false</code> (the default) the only check
#   that will be made is if the policy is loaded at all or not.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
#   <h3 id="selmodule-providers">Providers</h3>
#   <h4 id="selmodule-provider-semodule">semodule</h4>
#   <p>Manage SELinux policy modules using the semodule binary.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/semodule</code>.</li>
#   </ul>
#   <hr>
  $syncversion,
) {
  # Stub
}

# <h2>service</h2>
#   <p>Manage running services.  Service support unfortunately varies
#   widely by platform — some platforms have very little if any concept of a
#   running service, and some have a very codified and powerful concept.
#   Puppet’s service support is usually capable of doing the right thing, but
#   the more information you can provide, the better behaviour you will get.</p>
#   <p>Puppet 2.7 and newer expect init scripts to have a working status command.
#   If this isn’t the case for any of your services’ init scripts, you will
#   need to set <code>hasstatus</code> to false and possibly specify a custom status
#   command in the <code>status</code> attribute.</p>
#   <p><strong>Refresh:</strong> <code>service</code> resources can respond to refresh events (via
#   <code>notify</code>, <code>subscribe</code>, or the <code>~&gt;</code> arrow). If a <code>service</code> receives an
#   event from another resource, Puppet will restart the service it manages.
#   The actual command used to restart the service depends on the platform and
#   can be configured:</p>
#   <ul>
#     <li>If you set <code>hasrestart</code> to true, Puppet will use the init script’s restart command.</li>
#     <li>You can provide an explicit command for restarting with the <code>restart</code> attribute.</li>
#     <li>If you do neither, the service’s stop and start commands will be used.</li>
#   </ul>
define service (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the service to run.</p>
#   <p>This name is used to find the service; on platforms where services
#   have short system names and long display names, this should be the
#   short name. (To take an example from Windows, you would use “wuauserv”
#   rather than “Automatic Updates.”)</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether a service should be running.</p>
#   <p>Valid values are <code>stopped</code> (also called <code>false</code>), <code>running</code> (also called <code>true</code>).</p>
  $ensure,
# <h2>binary</h2>
#   <p>The path to the daemon.  This is only used for
#   systems that do not support init scripts.  This binary will be
#   used to start the service if no <code>start</code> parameter is
#   provided.</p>
  $binary,
# <h2>control</h2>
#   <p>The control variable used to manage services (originally for HP-UX).
#   Defaults to the upcased service name plus <code>START</code> replacing dots with
#   underscores, for those providers that support the <code>controllable</code> feature.</p>
  $control,
# <h2>enable</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether a service should be enabled to start at boot.
#   This property behaves quite differently depending on the platform;
#   wherever possible, it relies on local tools to enable or disable
#   a given service.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>manual</code>.</p>
#   <p>Requires features enableable.</p>
  $enable,
# <h2>hasrestart</h2>
#   <p>Specify that an init script has a <code>restart</code> command.  If this is
#   false and you do not specify a command in the <code>restart</code> attribute,
#   the init script’s <code>stop</code> and <code>start</code> commands will be used.</p>
#   <p>Defaults to false.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $hasrestart,
# <h2>hasstatus</h2>
#   <p>Declare whether the service’s init script has a functional status
#   command; defaults to <code>true</code>. This attribute’s default value changed in
#   Puppet 2.7.0.</p>
#   <p>The init script’s status command must return 0 if the service is
#   running and a nonzero value otherwise. Ideally, these exit codes
#   should conform to <a href="http://refspecs.linuxfoundation.org/LSB_4.1.0/LSB-Core-generic/LSB-Core-generic/iniscrptact.html">the LSB’s specification</a> for init
#   script status actions, but Puppet only considers the difference
#   between 0 and nonzero to be relevant.</p>
#   <p>If a service’s init script does not support any kind of status command,
#   you should set <code>hasstatus</code> to false and either provide a specific
#   command using the <code>status</code> attribute or expect that Puppet will look for
#   the service name in the process table. Be aware that ‘virtual’ init
#   scripts (like ‘network’ under Red Hat systems) will respond poorly to
#   refresh events from other resources if you override the default behavior
#   without providing a status command.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $hasstatus,
# <h2>manifest</h2>
#   <p>Specify a command to config a service, or a path to a manifest to do so.</p>
  $manifest,
# <h2>path</h2>
#   <p>The search path for finding init scripts.  Multiple values should
#   be separated by colons or provided as an array.</p>
  $path,
# <h2>pattern</h2>
#   <p>The pattern to search for in the process table.
#   This is used for stopping services on platforms that do not
#   support init scripts, and is also used for determining service
#   status on those service whose init scripts do not include a status
#   command.</p>
#   <p>Defaults to the name of the service. The pattern can be a simple string
#   or any legal Ruby pattern.</p>
  $pattern,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>service</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#service-provider-base"><code>base</code></a></li>
#     <li><a href="#service-provider-bsd"><code>bsd</code></a></li>
#     <li><a href="#service-provider-daemontools"><code>daemontools</code></a></li>
#     <li><a href="#service-provider-debian"><code>debian</code></a></li>
#     <li><a href="#service-provider-freebsd"><code>freebsd</code></a></li>
#     <li><a href="#service-provider-gentoo"><code>gentoo</code></a></li>
#     <li><a href="#service-provider-init"><code>init</code></a></li>
#     <li><a href="#service-provider-launchd"><code>launchd</code></a></li>
#     <li><a href="#service-provider-openbsd"><code>openbsd</code></a></li>
#     <li><a href="#service-provider-openrc"><code>openrc</code></a></li>
#     <li><a href="#service-provider-openwrt"><code>openwrt</code></a></li>
#     <li><a href="#service-provider-redhat"><code>redhat</code></a></li>
#     <li><a href="#service-provider-runit"><code>runit</code></a></li>
#     <li><a href="#service-provider-service"><code>service</code></a></li>
#     <li><a href="#service-provider-smf"><code>smf</code></a></li>
#     <li><a href="#service-provider-src"><code>src</code></a></li>
#     <li><a href="#service-provider-systemd"><code>systemd</code></a></li>
#     <li><a href="#service-provider-upstart"><code>upstart</code></a></li>
#     <li><a href="#service-provider-windows"><code>windows</code></a></li>
#   </ul>
  $provider,
# <h2>restart</h2>
#   <p>Specify a <em>restart</em> command manually.  If left
#   unspecified, the service will be stopped and then started.</p>
  $restart,
# <h2>start</h2>
#   <p>Specify a <em>start</em> command manually.  Most service subsystems
#   support a <code>start</code> command, so this will not need to be
#   specified.</p>
  $start,
# <h2>status</h2>
#   <p>Specify a <em>status</em> command manually.  This command must
#   return 0 if the service is running and a nonzero value otherwise.
#   Ideally, these exit codes should conform to <a href="http://refspecs.linuxfoundation.org/LSB_4.1.0/LSB-Core-generic/LSB-Core-generic/iniscrptact.html">the LSB’s
#   specification</a> for init script status actions, but
#   Puppet only considers the difference between 0 and nonzero to be
#   relevant.</p>
#   <p>If left unspecified, the status of the service will be determined
#   automatically, usually by looking for the service in the process
#   table.</p>
  $status,
# <h2>stop</h2>
#   <p>Specify a <em>stop</em> command manually.</p>
#   <h3 id="service-providers">Providers</h3>
#   <h4 id="service-provider-base">base</h4>
#   <p>The simplest form of Unix service support.</p>
#   <p>You have to specify enough about your service for this to work; the
#   minimum you can specify is a binary for starting the process, and this
#   same binary will be searched for in the process table to stop the
#   service.  As with <code>init</code>-style services, it is preferable to specify start,
#   stop, and status commands.</p>
#   <ul>
#     <li>Required binaries: <code>kill</code>.</li>
#     <li>Supported features: <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-bsd">bsd</h4>
#   <p>FreeBSD’s (and probably NetBSD’s?) form of <code>init</code>-style service management.</p>
#   <p>Uses <code>rc.conf.d</code> for service enabling and disabling.</p>
#   <ul>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-daemontools">daemontools</h4>
#   <p>Daemontools service management.</p>
#   <p>This provider manages daemons supervised by D.J. Bernstein daemontools.
#   When detecting the service directory it will check, in order of preference:</p>
#   <ul>
#     <li><code>/service</code></li>
#     <li><code>/etc/service</code></li>
#     <li><code>/var/lib/svscan</code></li>
#   </ul>
#   <p>The daemon directory should be in one of the following locations:</p>
#   <ul>
#     <li><code>/var/lib/service</code></li>
#     <li><code>/etc</code></li>
#   </ul>
#   <p>…or this can be overriden in the resource’s attributes:</p>
#   <pre><code>service { "myservice":
#     provider =&gt; "daemontools",
#     path     =&gt; "/path/to/daemons",
#   }
#   </code></pre>
#   <p>This provider supports out of the box:</p>
#   <ul>
#     <li>start/stop (mapped to enable/disable)</li>
#     <li>enable/disable</li>
#     <li>restart</li>
#     <li>status</li>
#   </ul>
#   <p>If a service has <code>ensure =&gt; "running"</code>, it will link /path/to/daemon to
#   /path/to/service, which will automatically enable the service.</p>
#   <p>If a service has <code>ensure =&gt; "stopped"</code>, it will only shut down the service, not
#   remove the <code>/path/to/service</code> link.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/svc</code>, <code>/usr/bin/svstat</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-debian">debian</h4>
#   <p>Debian’s form of <code>init</code>-style management.</p>
#   <p>The only differences from <code>init</code> are support for enabling and disabling
#   services via <code>update-rc.d</code> and the ability to determine enabled status via
#   <code>invoke-rc.d</code>.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/invoke-rc.d</code>, <code>/usr/sbin/update-rc.d</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>debian, ubuntu</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-freebsd">freebsd</h4>
#   <p>Provider for FreeBSD and DragonFly BSD. Uses the <code>rcvar</code> argument of init scripts and parses/edits rc files.</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>freebsd, dragonfly</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-gentoo">gentoo</h4>
#   <p>Gentoo’s form of <code>init</code>-style service management.</p>
#   <p>Uses <code>rc-update</code> for service enabling and disabling.</p>
#   <ul>
#     <li>Required binaries: <code>/sbin/rc-update</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-init">init</h4>
#   <p>Standard <code>init</code>-style service management.</p>
#   <ul>
#     <li>Supported features: <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-launchd">launchd</h4>
#   <p>This provider manages jobs with <code>launchd</code>, which is the default service
#   framework for Mac OS X (and may be available for use on other platforms).</p>
#   <p>For <code>launchd</code> documentation, see:</p>
#   <ul>
#     <li><a href="http://developer.apple.com/macosx/launchd.html">http://developer.apple.com/macosx/launchd.html</a></li>
#     <li><a href="http://launchd.macosforge.org/">http://launchd.macosforge.org/</a></li>
#   </ul>
#   <p>This provider reads plists out of the following directories:</p>
#   <ul>
#     <li><code>/System/Library/LaunchDaemons</code></li>
#     <li><code>/System/Library/LaunchAgents</code></li>
#     <li><code>/Library/LaunchDaemons</code></li>
#     <li><code>/Library/LaunchAgents</code></li>
#   </ul>
#   <p>…and builds up a list of services based upon each plist’s “Label” entry.</p>
#   <p>This provider supports:</p>
#   <ul>
#     <li>ensure =&gt; running/stopped,</li>
#     <li>enable =&gt; true/false</li>
#     <li>status</li>
#     <li>restart</li>
#   </ul>
#   <p>Here is how the Puppet states correspond to <code>launchd</code> states:</p>
#   <ul>
#     <li>stopped — job unloaded</li>
#     <li>started — job loaded</li>
#     <li>enabled — ‘Disable’ removed from job plist file</li>
#     <li>disabled — ‘Disable’ added to job plist file</li>
#   </ul>
#   <p>Note that this allows you to do something <code>launchctl</code> can’t do, which is to
#   be in a state of “stopped/enabled” or “running/disabled”.</p>
#   <p>Note that this provider does not support overriding ‘restart’ or ‘status’.</p>
#   <ul>
#     <li>Required binaries: <code>/bin/launchctl</code>, <code>/usr/bin/plutil</code>, <code>/usr/bin/sw_vers</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>darwin</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-openbsd">openbsd</h4>
#   <p>Provider for OpenBSD’s rc.d daemon control scripts</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>openbsd</code>.</li>
#     <li>Supported features: <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-openrc">openrc</h4>
#   <p>Support for Gentoo’s OpenRC initskripts</p>
#   <p>Uses rc-update, rc-status and rc-service to manage services.</p>
#   <ul>
#     <li>Required binaries: <code>/bin/rc-status</code>, <code>/sbin/rc-service</code>, <code>/sbin/rc-update</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>gentoo</code>. Default for <code>operatingsystem</code> == <code>funtoo</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-openwrt">openwrt</h4>
#   <p>Support for OpenWrt flavored init scripts.</p>
#   <p>Uses /etc/init.d/service_name enable, disable, and enabled.</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>openwrt</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-redhat">redhat</h4>
#   <p>Red Hat’s (and probably many others’) form of <code>init</code>-style service
#   management. Uses <code>chkconfig</code> for service enabling and disabling.</p>
#   <ul>
#     <li>Required binaries: <code>/sbin/chkconfig</code>, <code>/sbin/service</code>.</li>
#     <li>Default for <code>osfamily</code> == <code>redhat, suse</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-runit">runit</h4>
#   <p>Runit service management.</p>
#   <p>This provider manages daemons running supervised by Runit.
#   When detecting the service directory it will check, in order of preference:</p>
#   <ul>
#     <li><code>/service</code></li>
#     <li><code>/etc/service</code></li>
#     <li><code>/var/service</code></li>
#   </ul>
#   <p>The daemon directory should be in one of the following locations:</p>
#   <ul>
#     <li><code>/etc/sv</code></li>
#     <li><code>/var/lib/service</code></li>
#   </ul>
#   <p>or this can be overriden in the service resource parameters::</p>
#   <pre><code>service { "myservice":
#     provider =&gt; "runit",
#     path =&gt; "/path/to/daemons",
#   }
#   </code></pre>
#   <p>This provider supports out of the box:</p>
#   <ul>
#     <li>start/stop</li>
#     <li>enable/disable</li>
#     <li>restart</li>
#     <li>
#       <p>status</p>
#     </li>
#     <li>Required binaries: <code>/usr/bin/sv</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-service">service</h4>
#   <p>The simplest form of service support.</p>
#   <ul>
#     <li>Supported features: <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-smf">smf</h4>
#   <p>Support for Sun’s new Service Management Framework.</p>
#   <p>Starting a service is effectively equivalent to enabling it, so there is
#   only support for starting and stopping services, which also enables and
#   disables them, respectively.</p>
#   <p>By specifying <code>manifest =&gt; "/path/to/service.xml"</code>, the SMF manifest will
#   be imported if it does not exist.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/svcs</code>, <code>/usr/sbin/svcadm</code>, <code>/usr/sbin/svccfg</code>.</li>
#     <li>Default for <code>osfamily</code> == <code>solaris</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-src">src</h4>
#   <p>Support for AIX’s System Resource controller.</p>
#   <p>Services are started/stopped based on the <code>stopsrc</code> and <code>startsrc</code>
#   commands, and some services can be refreshed with <code>refresh</code> command.</p>
#   <p>Enabling and disabling services is not supported, as it requires
#   modifications to <code>/etc/inittab</code>. Starting and stopping groups of subsystems
#   is not yet supported.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/lssrc</code>, <code>/usr/bin/refresh</code>, <code>/usr/bin/startsrc</code>, <code>/usr/bin/stopsrc</code>, <code>/usr/sbin/chitab</code>, <code>/usr/sbin/lsitab</code>, <code>/usr/sbin/mkitab</code>, <code>/usr/sbin/rmitab</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>aix</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-systemd">systemd</h4>
#   <p>Manages <code>systemd</code> services using <code>systemctl</code>.</p>
#   <ul>
#     <li>Required binaries: <code>systemctl</code>.</li>
#     <li>Default for <code>osfamily</code> == <code>archlinux</code>. Default for <code>operatingsystemmajrelease</code> == <code>7</code> and <code>osfamily</code> == <code>redhat</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-upstart">upstart</h4>
#   <p>Ubuntu service management with <code>upstart</code>.</p>
#   <p>This provider manages <code>upstart</code> jobs on Ubuntu. For <code>upstart</code> documentation,
#   see <a href="http://upstart.ubuntu.com/">http://upstart.ubuntu.com/</a>.</p>
#   <ul>
#     <li>Required binaries: <code>/sbin/initctl</code>, <code>/sbin/restart</code>, <code>/sbin/start</code>, <code>/sbin/status</code>, <code>/sbin/stop</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>ubuntu</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h4 id="service-provider-windows">windows</h4>
#   <p>Support for Windows Service Control Manager (SCM). This provider can
#   start, stop, enable, and disable services, and the SCM provides working
#   status methods for all services.</p>
#   <p>Control of service groups (dependencies) is not yet supported, nor is running
#   services as a specific user.</p>
#   <ul>
#     <li>Required binaries: <code>net.exe</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>windows</code>.</li>
#     <li>Supported features: <code>enableable</code>, <code>refreshable</code>.</li>
#   </ul>
#   <h3 id="service-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>controllable</code> — The provider uses a control variable.</li>
#     <li><code>enableable</code> — The provider can enable and disable the service</li>
#     <li><code>refreshable</code> — The provider can restart the service.</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>controllable</th>
#         <th>enableable</th>
#         <th>refreshable</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>base</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>bsd</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>daemontools</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>debian</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>freebsd</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>gentoo</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>init</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>launchd</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>openbsd</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>openrc</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>openwrt</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>redhat</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>runit</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>service</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>smf</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>src</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>systemd</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>upstart</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>windows</td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
#   <h2 id="sshauthorizedkey">ssh_authorized_key</h2>
#   <ul>
#     <li><a href="#ssh_authorized_key-attributes">Attributes</a></li>
#     <li><a href="#ssh_authorized_key-providers">Providers</a></li>
#   </ul>
#   <h3 id="ssh_authorized_key-description">Description</h3>
#   <p>Manages SSH authorized keys. Currently only type 2 keys are
#   supported.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the user account in which this
#   SSH key should be installed, the <code>ssh_authorized_key</code> resource will autorequire
#   that user.</p>
#   <h3 id="ssh_authorized_key-attributes">Attributes</h3>
#   <pre><code>ssh_authorized_key { 'resource title':
#     <a href="#ssh_authorized_key-attribute-name">name</a>     =&gt; <em># <strong>(namevar)</strong> The SSH key comment. This attribute is currently </em>
#     <a href="#ssh_authorized_key-attribute-ensure">ensure</a>   =&gt; <em># The basic property that the resource should be...</em>
#     <a href="#ssh_authorized_key-attribute-key">key</a>      =&gt; <em># The public key itself; generally a long string...</em>
#     <a href="#ssh_authorized_key-attribute-options">options</a>  =&gt; <em># Key options, see sshd(8) for possible values...</em>
#     <a href="#ssh_authorized_key-attribute-provider">provider</a> =&gt; <em># The specific backend to use for this...</em>
#     <a href="#ssh_authorized_key-attribute-target">target</a>   =&gt; <em># The absolute filename in which to store the SSH...</em>
#     <a href="#ssh_authorized_key-attribute-type">type</a>     =&gt; <em># The encryption type used: ssh-dss or ssh-rsa....</em>
#     <a href="#ssh_authorized_key-attribute-user">user</a>     =&gt; <em># The user account in which the SSH key should be...</em>
#     # ...plus any applicable <a href="http://docs.puppetlabs.com/references/3.5.latest/metaparameter.html">metaparameters</a>.
#   }</code></pre>
#   <h4 id="ssh_authorized_key-attribute-name">name</h4>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The SSH key comment. This attribute is currently used as a
#   system-wide primary key and therefore has to be unique.</p>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h4 id="ssh_authorized_key-attribute-ensure">ensure</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h4 id="ssh_authorized_key-attribute-key">key</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The public key itself; generally a long string of hex characters. The key attribute
#   may not contain whitespace: Omit key headers (e.g. ‘ssh-rsa’) and key identifiers
#   (e.g. ‘joe@joescomputer.local’) found in the public key file.</p>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h4 id="ssh_authorized_key-attribute-options">options</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Key options, see sshd(8) for possible values. Multiple values
#   should be specified as an array.</p>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h4 id="ssh_authorized_key-attribute-provider">provider</h4>
#   <p>The specific backend to use for this <code>ssh_authorized_key</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#ssh_authorized_key-provider-parsed"><code>parsed</code></a></li>
#   </ul>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h4 id="ssh_authorized_key-attribute-target">target</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The absolute filename in which to store the SSH key. This
#   property is optional and should only be used in cases where keys
#   are stored in a non-standard location (i.e.<code> not in
#   </code>~user/.ssh/authorized_keys`).</p>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h4 id="ssh_authorized_key-attribute-type">type</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The encryption type used: ssh-dss or ssh-rsa.</p>
#   <p>Valid values are <code>ssh-dss</code> (also called <code>dsa</code>), <code>ssh-rsa</code> (also called <code>rsa</code>), <code>ecdsa-sha2-nistp256</code>, <code>ecdsa-sha2-nistp384</code>, <code>ecdsa-sha2-nistp521</code>, <code>ssh-ed25519</code> (also called <code>ed25519</code>).</p>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h4 id="ssh_authorized_key-attribute-user">user</h4>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user account in which the SSH key should be installed.
#   The resource will automatically depend on this user.</p>
#   <p>(<a href="#ssh_authorized_key-attributes">↑ Back to ssh_authorized_key attributes</a>)</p>
#   <h3 id="ssh_authorized_key-providers">Providers</h3>
#   <h4 id="ssh_authorized_key-provider-parsed">parsed</h4>
#   <p>Parse and generate authorized_keys files for SSH.</p>
#   <hr>
  $stop,
) {
  # Stub
}

# <h2>sshkey</h2>
#   <p>Installs and manages ssh host keys.  At this point, this type
#   only knows how to install keys into <code>/etc/ssh/ssh_known_hosts</code>.  See
#   the <code>ssh_authorized_key</code> type to manage authorized keys.</p>
define sshkey (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The host name that the key is associated with.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>host_aliases</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Any aliases the host might have.  Multiple values must be
#   specified as an array.</p>
  $host_aliases,
# <h2>key</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The key itself; generally a long string of hex digits.</p>
  $key,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>sshkey</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#sshkey-provider-parsed"><code>parsed</code></a></li>
#   </ul>
  $provider,
# <h2>target</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The file in which to store the ssh key.  Only used by
#   the <code>parsed</code> provider.</p>
  $target,
# <h2>type</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The encryption type used.  Probably ssh-dss or ssh-rsa.</p>
#   <p>Valid values are <code>ssh-dss</code> (also called <code>dsa</code>), <code>ssh-ed25519</code> (also called <code>ed25519</code>), <code>ssh-rsa</code> (also called <code>rsa</code>), <code>ecdsa-sha2-nistp256</code>, <code>ecdsa-sha2-nistp384</code>, <code>ecdsa-sha2-nistp521</code>.</p>
#   <h3 id="sshkey-providers">Providers</h3>
#   <h4 id="sshkey-provider-parsed">parsed</h4>
#   <p>Parse and generate host-wide known hosts files for SSH.</p>
#   <hr>
  $type,
) {
  # Stub
}

# <h2>stage</h2>
#   <p>A resource type for creating new run stages.  Once a stage is available,
#   classes can be assigned to it by declaring them with the resource-like syntax
#   and using
#   <a href="http://docs.puppetlabs.com/references/latest/metaparameter.html#stage">the <code>stage</code> metaparameter</a>.</p>
#   <p>Note that new stages are not useful unless you also declare their order
#   in relation to the default <code>main</code> stage.</p>
#   <p>A complete run stage example:</p>
#   <pre><code>stage { 'pre':
#     before =&gt; Stage['main'],
#   }
#   class { 'apt-updates':
#     stage =&gt; 'pre',
#   }
#   </code></pre>
#   <p>Individual resources cannot be assigned to run stages; you can only set stages
#   for classes.</p>
define stage (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the stage. Use this as the value for the <code>stage</code> metaparameter
#   when assigning classes to this stage.</p>
#   <hr>
  $name,
) {
  # Stub
}

# <h2>tidy</h2>
#   <p>Remove unwanted files based on specific criteria.  Multiple
#   criteria are OR’d together, so a file that is too large but is not
#   old enough will still get tidied.</p>
#   <p>If you don’t specify either <code>age</code> or <code>size</code>, then all files will
#   be removed.</p>
#   <p>This resource type works by generating a file resource for every file
#   that should be deleted and then letting that resource perform the
#   actual deletion.</p>
define tidy (
# <h2>path</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The path to the file or directory to manage.  Must be fully
#   qualified.</p>
  $path,
# <h2>age</h2>
#   <p>Tidy files whose age is equal to or greater than
#   the specified time.  You can choose seconds, minutes,
#   hours, days, or weeks by specifying the first letter of any
#   of those words (e.g., ‘1w’).</p>
#   <p>Specifying 0 will remove all files.</p>
  $age,
# <h2>backup</h2>
#   <p>Whether tidied files should be backed up.  Any values are passed
#   directly to the file resources used for actual file deletion, so consult
#   the <code>file</code> type’s backup documentation to determine valid values.</p>
  $backup,
# <h2>matches</h2>
#   <p>One or more (shell type) file glob patterns, which restrict
#   the list of files to be tidied to those whose basenames match
#   at least one of the patterns specified. Multiple patterns can
#   be specified using an array.</p>
#   <p>Example:</p>
#   <pre><code>tidy { "/tmp":
#     age     =&gt; "1w",
#     recurse =&gt; 1,
#     matches =&gt; [ "[0-9]pub*.tmp", "*.temp", "tmpfile?" ]
#   }
#   </code></pre>
#   <p>This removes files from <code>/tmp</code> if they are one week old or older,
#   are not in a subdirectory and match one of the shell globs given.</p>
#   <p>Note that the patterns are matched against the basename of each
#   file – that is, your glob patterns should not have any ‘/’
#   characters in them, since you are only specifying against the last
#   bit of the file.</p>
#   <p>Finally, note that you must now specify a non-zero/non-false value
#   for recurse if matches is used, as matches only apply to files found
#   by recursion (there’s no reason to use static patterns match against
#   a statically determined path).  Requiering explicit recursion clears
#   up a common source of confusion.</p>
  $matches,
# <h2>recurse</h2>
#   <p>If target is a directory, recursively descend
#   into the directory looking for files to tidy.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>inf</code>. Values can match <code>/^[0-9]+$/</code>.</p>
  $recurse,
# <h2>rmdirs</h2>
#   <p>Tidy directories in addition to files; that is, remove
#   directories whose age is older than the specified criteria.
#   This will only remove empty directories, so all contained
#   files must also be tidied before a directory gets removed.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $rmdirs,
# <h2>size</h2>
#   <p>Tidy files whose size is equal to or greater than
#   the specified size.  Unqualified values are in kilobytes, but
#   <em>b</em>, <em>k</em>, <em>m</em>, <em>g</em>, and <em>t</em> can be appended to specify <em>bytes</em>,
#   <em>kilobytes</em>, <em>megabytes</em>, <em>gigabytes</em>, and <em>terabytes</em>, respectively.
#   Only the first character is significant, so the full word can also
#   be used.</p>
  $size,
# <h2>type</h2>
#   <p>Set the mechanism for determining age. Default: atime.</p>
#   <p>Valid values are <code>atime</code>, <code>mtime</code>, <code>ctime</code>.</p>
#   <hr>
  $type,
) {
  # Stub
}

# <h2>user</h2>
#   <p>Manage users.  This type is mostly built to manage system
#   users, so it is lacking some features useful for managing normal
#   users.</p>
#   <p>This resource type uses the prescribed native tools for creating
#   groups and generally uses POSIX APIs for retrieving information
#   about them.  It does not directly modify <code>/etc/passwd</code> or anything.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the user’s primary group (as
#   provided in the <code>gid</code> attribute), the user resource will autorequire
#   that group. If Puppet is managing any role accounts corresponding to the
#   user’s roles, the user resource will autorequire those role accounts.</p>
define user (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The user name. While naming limitations vary by operating system,
#   it is advisable to restrict names to the lowest common denominator,
#   which is a maximum of 8 characters beginning with a letter.</p>
#   <p>Note that Puppet considers user names to be case-sensitive, regardless
#   of the platform’s own rules; be sure to always use the same case when
#   referring to a given user.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic state that the object should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>, <code>role</code>.</p>
  $ensure,
# <h2>allowdupe</h2>
#   <p>Whether to allow duplicate UIDs. Defaults to <code>false</code>.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $allowdupe,
# <h2>attribute_membership</h2>
#   <p>Whether specified attribute value pairs should be treated as the
#   <strong>complete list</strong> (<code>inclusive</code>) or the <strong>minimum list</strong> (<code>minimum</code>) of
#   attribute/value pairs for the user. Defaults to <code>minimum</code>.</p>
#   <p>Valid values are <code>inclusive</code>, <code>minimum</code>.</p>
  $attribute_membership,
# <h2>attributes</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Specify AIX attributes for the user in an array of attribute = value pairs.</p>
#   <p>Requires features manages_aix_lam.</p>
  $attributes,
# <h2>auth_membership</h2>
#   <p>Whether specified auths should be considered the <strong>complete list</strong>
#   (<code>inclusive</code>) or the <strong>minimum list</strong> (<code>minimum</code>) of auths the user
#   has. Defaults to <code>minimum</code>.</p>
#   <p>Valid values are <code>inclusive</code>, <code>minimum</code>.</p>
  $auth_membership,
# <h2>auths</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The auths the user has.  Multiple auths should be
#   specified as an array.</p>
#   <p>Requires features manages_solaris_rbac.</p>
  $auths,
# <h2>comment</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A description of the user.  Generally the user’s full name.</p>
  $comment,
# <h2>expiry</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The expiry date for this user. Must be provided in
#   a zero-padded YYYY-MM-DD format — e.g. 2010-02-19.
#   If you want to make sure the user account does never
#   expire, you can pass the special value <code>absent</code>.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/^\d{4}-\d{2}-\d{2}$/</code>.</p>
#   <p>Requires features manages_expiry.</p>
  $expiry,
# <h2>forcelocal</h2>
#   <p>Forces the mangement of local accounts when accounts are also
#   being managed by some other NSS</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
#   <p>Requires features libuser.</p>
  $forcelocal,
# <h2>gid</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user’s primary group.  Can be specified numerically or by name.</p>
#   <p>This attribute is not supported on Windows systems; use the <code>groups</code>
#   attribute instead. (On Windows, designating a primary group is only
#   meaningful for domain accounts, which Puppet does not currently manage.)</p>
  $gid,
# <h2>groups</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The groups to which the user belongs.  The primary group should
#   not be listed, and groups should be identified by name rather than by
#   GID.  Multiple groups should be specified as an array.</p>
  $groups,
# <h2>home</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The home directory of the user.  The directory must be created
#   separately and is not currently checked for existence.</p>
  $home,
# <h2>ia_load_module</h2>
#   <p>The name of the I&amp;A module to use to manage this user.</p>
#   <p>Requires features manages_aix_lam.</p>
  $ia_load_module,
# <h2>iterations</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>This is the number of iterations of a chained computation of the
#   password hash (http://en.wikipedia.org/wiki/PBKDF2).  This parameter
#   is used in OS X. This field is required for managing passwords on OS X &gt;= 10.8.</p>
#   <p>Requires features manages_password_salt.</p>
  $iterations,
# <h2>key_membership</h2>
#   <p>Whether specified key/value pairs should be considered the
#   <strong>complete list</strong> (<code>inclusive</code>) or the <strong>minimum list</strong> (<code>minimum</code>) of
#   the user’s attributes. Defaults to <code>minimum</code>.</p>
#   <p>Valid values are <code>inclusive</code>, <code>minimum</code>.</p>
  $key_membership,
# <h2>keys</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Specify user attributes in an array of key = value pairs.</p>
#   <p>Requires features manages_solaris_rbac.</p>
  $keys,
# <h2>managehome</h2>
#   <p>Whether to manage the home directory when managing the user.
#   This will create the home directory when <code>ensure =&gt; present</code>, and
#   delete the home directory when <code>ensure =&gt; absent</code>. Defaults to <code>false</code>.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $managehome,
# <h2>membership</h2>
#   <p>Whether specified groups should be considered the <strong>complete list</strong>
#   (<code>inclusive</code>) or the <strong>minimum list</strong> (<code>minimum</code>) of groups to which
#   the user belongs. Defaults to <code>minimum</code>.</p>
#   <p>Valid values are <code>inclusive</code>, <code>minimum</code>.</p>
  $membership,
# <h2>password</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user’s password, in whatever encrypted format the local
#   system requires.</p>
#   <ul>
#     <li>Most modern Unix-like systems use salted SHA1 password hashes. You can use
#   Puppet’s built-in <code>sha1</code> function to generate a hash from a password.</li>
#     <li>Mac OS X 10.5 and 10.6 also use salted SHA1 hashes.</li>
#     <li>Mac OS X 10.7 (Lion) uses salted SHA512 hashes. The Puppet Labs <a href="https://github.com/puppetlabs/puppetlabs-stdlib/">stdlib</a>
#   module contains a <code>str2saltedsha512</code> function which can generate password
#   hashes for Lion.</li>
#     <li>Mac OS X 10.8 and higher use salted SHA512 PBKDF2 hashes. When
#   managing passwords on these systems the salt and iterations properties
#   need to be specified as well as the password.</li>
#     <li>Windows passwords can only be managed in cleartext, as there is no Windows API
#   for setting the password hash.</li>
#   </ul>
#   <p>Be sure to enclose any value that includes a dollar sign ($) in single
#   quotes (‘) to avoid accidental variable interpolation.</p>
#   <p>Requires features manages_passwords.</p>
  $password,
# <h2>password_max_age</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The maximum number of days a password may be used before it must be changed.</p>
#   <p>Requires features manages_password_age.</p>
  $password_max_age,
# <h2>password_min_age</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The minimum number of days a password must be used before it may be changed.</p>
#   <p>Requires features manages_password_age.</p>
  $password_min_age,
# <h2>profile_membership</h2>
#   <p>Whether specified roles should be treated as the <strong>complete list</strong>
#   (<code>inclusive</code>) or the <strong>minimum list</strong> (<code>minimum</code>) of roles
#   of which the user is a member. Defaults to <code>minimum</code>.</p>
#   <p>Valid values are <code>inclusive</code>, <code>minimum</code>.</p>
  $profile_membership,
# <h2>profiles</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The profiles the user has.  Multiple profiles should be
#   specified as an array.</p>
#   <p>Requires features manages_solaris_rbac.</p>
  $profiles,
# <h2>project</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The name of the project associated with a user.</p>
#   <p>Requires features manages_solaris_rbac.</p>
  $project,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>user</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#user-provider-aix"><code>aix</code></a></li>
#     <li><a href="#user-provider-directoryservice"><code>directoryservice</code></a></li>
#     <li><a href="#user-provider-hpuxuseradd"><code>hpuxuseradd</code></a></li>
#     <li><a href="#user-provider-ldap"><code>ldap</code></a></li>
#     <li><a href="#user-provider-pw"><code>pw</code></a></li>
#     <li><a href="#user-provider-user_role_add"><code>user_role_add</code></a></li>
#     <li><a href="#user-provider-useradd"><code>useradd</code></a></li>
#     <li><a href="#user-provider-windows_adsi"><code>windows_adsi</code></a></li>
#   </ul>
  $provider,
# <h2>role_membership</h2>
#   <p>Whether specified roles should be considered the <strong>complete list</strong>
#   (<code>inclusive</code>) or the <strong>minimum list</strong> (<code>minimum</code>) of roles the user
#   has. Defaults to <code>minimum</code>.</p>
#   <p>Valid values are <code>inclusive</code>, <code>minimum</code>.</p>
  $role_membership,
# <h2>roles</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The roles the user has.  Multiple roles should be
#   specified as an array.</p>
#   <p>Requires features manages_solaris_rbac.</p>
  $roles,
# <h2>salt</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>This is the 32 byte salt used to generate the PBKDF2 password used in
#   OS X. This field is required for managing passwords on OS X &gt;= 10.8.</p>
#   <p>Requires features manages_password_salt.</p>
  $salt,
# <h2>shell</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user’s login shell.  The shell must exist and be
#   executable.</p>
#   <p>This attribute cannot be managed on Windows systems.</p>
#   <p>Requires features manages_shell.</p>
  $shell,
# <h2>system</h2>
#   <p>Whether the user is a system user, according to the OS’s criteria;
#   on most platforms, a UID less than or equal to 500 indicates a system
#   user. Defaults to <code>false</code>.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>.</p>
  $system,
# <h2>uid</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The user ID; must be specified numerically. If no user ID is
#   specified when creating a new user, then one will be chosen
#   automatically. This will likely result in the same user having
#   different UIDs on different systems, which is not recommended. This is
#   especially noteworthy when managing the same user on both Darwin and
#   other platforms, since Puppet does UID generation on Darwin, but
#   the underlying tools do so on other platforms.</p>
#   <p>On Windows, this property is read-only and will return the user’s
#   security identifier (SID).</p>
#   <h3 id="user-providers">Providers</h3>
#   <h4 id="user-provider-aix">aix</h4>
#   <p>User management for AIX.</p>
#   <ul>
#     <li>Required binaries: <code>/bin/chpasswd</code>, <code>/usr/bin/chuser</code>, <code>/usr/bin/mkuser</code>, <code>/usr/sbin/lsgroup</code>, <code>/usr/sbin/lsuser</code>, <code>/usr/sbin/rmuser</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>aix</code>.</li>
#     <li>Supported features: <code>manages_aix_lam</code>, <code>manages_expiry</code>, <code>manages_homedir</code>, <code>manages_password_age</code>, <code>manages_passwords</code>, <code>manages_shell</code>.</li>
#   </ul>
#   <h4 id="user-provider-directoryservice">directoryservice</h4>
#   <p>User management on OS X.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/bin/dscacheutil</code>, <code>/usr/bin/dscl</code>, <code>/usr/bin/dsimport</code>, <code>/usr/bin/plutil</code>, <code>/usr/bin/uuidgen</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>darwin</code>.</li>
#     <li>Supported features: <code>manages_password_salt</code>, <code>manages_passwords</code>, <code>manages_shell</code>.</li>
#   </ul>
#   <h4 id="user-provider-hpuxuseradd">hpuxuseradd</h4>
#   <p>User management for HP-UX. This provider uses the undocumented <code>-F</code>
#   switch to HP-UX’s special <code>usermod</code> binary to work around the fact that
#   its standard <code>usermod</code> cannot make changes while the user is logged in.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sam/lbin/useradd.sam</code>, <code>/usr/sam/lbin/userdel.sam</code>, <code>/usr/sam/lbin/usermod.sam</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>hp-ux</code>.</li>
#     <li>Supported features: <code>allows_duplicates</code>, <code>manages_homedir</code>, <code>manages_passwords</code>.</li>
#   </ul>
#   <h4 id="user-provider-ldap">ldap</h4>
#   <p>User management via LDAP.</p>
#   <p>This provider requires that you have valid values for all of the
#   LDAP-related settings in <code>puppet.conf</code>, including <code>ldapbase</code>.  You will
#   almost definitely need settings for <code>ldapuser</code> and <code>ldappassword</code> in order
#   for your clients to write to LDAP.</p>
#   <p>Note that this provider will automatically generate a UID for you if
#   you do not specify one, but it is a potentially expensive operation,
#   as it iterates across all existing users to pick the appropriate next one.</p>
#   <ul>
#     <li>Supported features: <code>manages_passwords</code>, <code>manages_shell</code>.</li>
#   </ul>
#   <h4 id="user-provider-pw">pw</h4>
#   <p>User management via <code>pw</code> on FreeBSD and DragonFly BSD.</p>
#   <ul>
#     <li>Required binaries: <code>pw</code>.</li>
#     <li>Default for <code>operatingsystem</code> == <code>freebsd, dragonfly</code>.</li>
#     <li>Supported features: <code>allows_duplicates</code>, <code>manages_expiry</code>, <code>manages_homedir</code>, <code>manages_passwords</code>, <code>manages_shell</code>.</li>
#   </ul>
#   <h4 id="user-provider-user_role_add">user_role_add</h4>
#   <p>User and role management on Solaris, via <code>useradd</code> and <code>roleadd</code>.</p>
#   <ul>
#     <li>Required binaries: <code>passwd</code>, <code>roleadd</code>, <code>roledel</code>, <code>rolemod</code>, <code>useradd</code>, <code>userdel</code>, <code>usermod</code>.</li>
#     <li>Default for <code>osfamily</code> == <code>solaris</code>.</li>
#     <li>Supported features: <code>allows_duplicates</code>, <code>manages_homedir</code>, <code>manages_password_age</code>, <code>manages_passwords</code>, <code>manages_solaris_rbac</code>.</li>
#   </ul>
#   <h4 id="user-provider-useradd">useradd</h4>
#   <p>User management via <code>useradd</code> and its ilk.  Note that you will need to
#   install Ruby’s shadow password library (often known as <code>ruby-libshadow</code>)
#   if you wish to manage user passwords.</p>
#   <ul>
#     <li>Required binaries: <code>chage</code>, <code>luseradd</code>, <code>useradd</code>, <code>userdel</code>, <code>usermod</code>.</li>
#     <li>Supported features: <code>allows_duplicates</code>, <code>manages_expiry</code>, <code>manages_homedir</code>, <code>manages_shell</code>, <code>system_users</code>.</li>
#   </ul>
#   <h4 id="user-provider-windows_adsi">windows_adsi</h4>
#   <p>Local user management for Windows.</p>
#   <ul>
#     <li>Default for <code>operatingsystem</code> == <code>windows</code>.</li>
#     <li>Supported features: <code>manages_homedir</code>, <code>manages_passwords</code>.</li>
#   </ul>
#   <h3 id="user-provider-features">Provider Features</h3>
#   <p>Available features:</p>
#   <ul>
#     <li><code>allows_duplicates</code> — The provider supports duplicate users with the same UID.</li>
#     <li><code>libuser</code> — Allows local users to be managed on systems that also use some other remote NSS method of managing accounts.</li>
#     <li><code>manages_aix_lam</code> — The provider can manage AIX Loadable Authentication Module (LAM) system.</li>
#     <li><code>manages_expiry</code> — The provider can manage the expiry date for a user.</li>
#     <li><code>manages_homedir</code> — The provider can create and remove home directories.</li>
#     <li><code>manages_password_age</code> — The provider can set age requirements and restrictions for passwords.</li>
#     <li><code>manages_password_salt</code> — The provider can set a password salt. This is for providers that implement PBKDF2 passwords with salt properties.</li>
#     <li><code>manages_passwords</code> — The provider can modify user passwords, by accepting a password hash.</li>
#     <li><code>manages_shell</code> — The provider allows for setting shell and validates if possible</li>
#     <li><code>manages_solaris_rbac</code> — The provider can manage roles and normal users</li>
#     <li><code>system_users</code> — The provider allows you to create system users with lower UIDs.</li>
#   </ul>
#   <p>Provider support:</p>
#   <table>
#     <thead>
#       <tr>
#         <th>Provider</th>
#         <th>allows duplicates</th>
#         <th>libuser</th>
#         <th>manages aix lam</th>
#         <th>manages expiry</th>
#         <th>manages homedir</th>
#         <th>manages password age</th>
#         <th>manages password salt</th>
#         <th>manages passwords</th>
#         <th>manages shell</th>
#         <th>manages solaris rbac</th>
#         <th>system users</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td>aix</td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>directoryservice</td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>hpuxuseradd</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>ldap</td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>pw</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>user_role_add</td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#       </tr>
#       <tr>
#         <td>useradd</td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#       </tr>
#       <tr>
#         <td>windows_adsi</td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td><em>X</em> </td>
#         <td> </td>
#         <td> </td>
#         <td> </td>
#       </tr>
#     </tbody>
#   </table>
#   <hr>
  $uid,
) {
  # Stub
}

# <h2>vlan</h2>
#   <p>Manages a VLAN on a router or switch.</p>
define vlan (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The numeric VLAN ID.</p>
#   <p>Values can match <code>/^\d+/</code>.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>description</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The VLAN’s name.</p>
  $description,
# <h2>device_url</h2>
#   <p>The URL of the router or switch maintaining this VLAN.</p>
  $device_url,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>vlan</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#vlan-provider-cisco"><code>cisco</code></a></li>
#   </ul>
#   <h3 id="vlan-providers">Providers</h3>
#   <h4 id="vlan-provider-cisco">cisco</h4>
#   <p>Cisco switch/router provider for vlans.</p>
#   <hr>
  $provider,
) {
  # Stub
}

# <h2>yumrepo</h2>
#   <p>The client-side description of a yum repository. Repository
#   configurations are found by parsing <code>/etc/yum.conf</code> and
#   the files indicated by the <code>reposdir</code> option in that file
#   (see <code>yum.conf(5)</code> for details).</p>
#   <p>Most parameters are identical to the ones documented
#   in the <code>yum.conf(5)</code> man page.</p>
#   <p>Continuation lines that yum supports (for the <code>baseurl</code>, for example)
#   are not supported. This type does not attempt to read or verify the
#   exinstence of files listed in the <code>include</code> attribute.</p>
define yumrepo (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the repository.  This corresponds to the
#   <code>repositoryid</code> parameter in <code>yum.conf(5)</code>.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>baseurl</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The URL for this repository. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $baseurl,
# <h2>cost</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Cost of this repository. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/\d+/</code>.</p>
  $cost,
# <h2>descr</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>A human-readable description of the repository.
#   This corresponds to the name parameter in <code>yum.conf(5)</code>.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $descr,
# <h2>enabled</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether this repository is enabled.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $enabled,
# <h2>enablegroups</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether yum will allow the use of package groups for this
#   repository.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $enablegroups,
# <h2>exclude</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>List of shell globs. Matching packages will never be
#   considered in updates or installs for this repo.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $exclude,
# <h2>failovermethod</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The failover method for this repository; should be either
#   <code>roundrobin</code> or <code>priority</code>. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/roundrobin|priority/</code>.</p>
  $failovermethod,
# <h2>gpgcheck</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether to check the GPG signature on packages installed
#   from this repository.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $gpgcheck,
# <h2>gpgkey</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The URL for the GPG key with which packages from this
#   repository are signed. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $gpgkey,
# <h2>http_caching</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>What to cache from this repository. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(packages|all|none)/</code>.</p>
  $http_caching,
# <h2>include</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The URL of a remote file containing additional yum configuration
#   settings. Puppet does not check for this file’s existence or validity.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $include,
# <h2>includepkgs</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>List of shell globs. If this is set, only packages
#   matching one of the globs will be considered for
#   update or install from this repo. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $includepkgs,
# <h2>keepalive</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether HTTP/1.1 keepalive should be used with this repository.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $keepalive,
# <h2>metadata_expire</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Number of seconds after which the metadata will expire.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/[0-9]+/</code>.</p>
  $metadata_expire,
# <h2>metalink</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Metalink for mirrors. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $metalink,
# <h2>mirrorlist</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The URL that holds the list of mirrors for this repository.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $mirrorlist,
# <h2>priority</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Priority of this repository from 1-99. Requires that
#   the <code>priorities</code> plugin is installed and enabled.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $priority,
# <h2>protect</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Enable or disable protection for this repository. Requires
#   that the <code>protectbase</code> plugin is installed and enabled.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $protect,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>yumrepo</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#yumrepo-provider-inifile"><code>inifile</code></a></li>
#   </ul>
  $provider,
# <h2>proxy</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>URL to the proxy server for this repository. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $proxy,
# <h2>proxy_password</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Password for this proxy. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $proxy_password,
# <h2>proxy_username</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Username for this proxy. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $proxy_username,
# <h2>repo_gpgcheck</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether to check the GPG signature on repodata.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $repo_gpgcheck,
# <h2>s3_enabled</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Access the repo via S3.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $s3_enabled,
# <h2>sslcacert</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Path to the directory containing the databases of the
#   certificate authorities yum should use to verify SSL certificates.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $sslcacert,
# <h2>sslclientcert</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Path  to the SSL client certificate yum should use to connect
#   to repos/remote sites. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $sslclientcert,
# <h2>sslclientkey</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Path to the SSL client key yum should use to connect
#   to repos/remote sites. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/.*/</code>.</p>
  $sslclientkey,
# <h2>sslverify</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Should yum verify SSL certificates/hosts at all.
#   Valid values are: False/0/No or True/1/Yes.
#   Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/(True|False|0|1|No|Yes)/i</code>.</p>
  $sslverify,
# <h2>target</h2>
#   <p>The filename to write the yum repository to.</p>
  $target,
# <h2>timeout</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Number of seconds to wait for a connection before timing
#   out. Set this to <code>absent</code> to remove it from the file completely.</p>
#   <p>Valid values are <code>absent</code>. Values can match <code>/[0-9]+/</code>.</p>
#   <h3 id="yumrepo-providers">Providers</h3>
#   <h4 id="yumrepo-provider-inifile">inifile</h4>
#   <p>Manage yum repos</p>
#   <hr>
  $timeout,
) {
  # Stub
}

# <h2>zfs</h2>
#   <p>Manage zfs. Create destroy and set properties on zfs instances.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the zpool at the root of this zfs
#   instance, the zfs resource will autorequire it. If Puppet is managing any
#   parent zfs instances, the zfs resource will autorequire them.</p>
define zfs (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The full name for this filesystem (including the zpool).</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The basic property that the resource should be in.</p>
#   <p>Valid values are <code>present</code>, <code>absent</code>.</p>
  $ensure,
# <h2>aclinherit</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The aclinherit property. Valid values are <code>discard</code>, <code>noallow</code>, <code>restricted</code>, <code>passthrough</code>, <code>passthrough-x</code>.</p>
  $aclinherit,
# <h2>aclmode</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The aclmode property. Valid values are <code>discard</code>, <code>groupmask</code>, <code>passthrough</code>.</p>
  $aclmode,
# <h2>atime</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The atime property. Valid values are <code>on</code>, <code>off</code>.</p>
  $atime,
# <h2>canmount</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The canmount property. Valid values are <code>on</code>, <code>off</code>, <code>noauto</code>.</p>
  $canmount,
# <h2>checksum</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The checksum property. Valid values are <code>on</code>, <code>off</code>, <code>fletcher2</code>, <code>fletcher4</code>, <code>sha256</code>.</p>
  $checksum,
# <h2>compression</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The compression property. Valid values are <code>on</code>, <code>off</code>, <code>lzjb</code>, <code>gzip</code>, <code>gzip-[1-9]</code>, <code>zle</code>.</p>
  $compression,
# <h2>copies</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The copies property. Valid values are <code>1</code>, <code>2</code>, <code>3</code>.</p>
  $copies,
# <h2>dedup</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The dedup property. Valid values are <code>on</code>, <code>off</code>.</p>
  $dedup,
# <h2>devices</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The devices property. Valid values are <code>on</code>, <code>off</code>.</p>
  $devices,
# <h2>exec</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The exec property. Valid values are <code>on</code>, <code>off</code>.</p>
  $exec,
# <h2>logbias</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The logbias property. Valid values are <code>latency</code>, <code>throughput</code>.</p>
  $logbias,
# <h2>mountpoint</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The mountpoint property. Valid values are <code>&lt;path&gt;</code>, <code>legacy</code>, <code>none</code>.</p>
  $mountpoint,
# <h2>nbmand</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The nbmand property. Valid values are <code>on</code>, <code>off</code>.</p>
  $nbmand,
# <h2>primarycache</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The primarycache property. Valid values are <code>all</code>, <code>none</code>, <code>metadata</code>.</p>
  $primarycache,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>zfs</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#zfs-provider-zfs"><code>zfs</code></a></li>
#   </ul>
  $provider,
# <h2>quota</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The quota property. Valid values are <code>&lt;size&gt;</code>, <code>none</code>.</p>
  $quota,
# <h2>readonly</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The readonly property. Valid values are <code>on</code>, <code>off</code>.</p>
  $readonly,
# <h2>recordsize</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The recordsize property. Valid values are powers of two between 512 and 128k.</p>
  $recordsize,
# <h2>refquota</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The refquota property. Valid values are <code>&lt;size&gt;</code>, <code>none</code>.</p>
  $refquota,
# <h2>refreservation</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The refreservation property. Valid values are <code>&lt;size&gt;</code>, <code>none</code>.</p>
  $refreservation,
# <h2>reservation</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The reservation property. Valid values are <code>&lt;size&gt;</code>, <code>none</code>.</p>
  $reservation,
# <h2>secondarycache</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The secondarycache property. Valid values are <code>all</code>, <code>none</code>, <code>metadata</code>.</p>
  $secondarycache,
# <h2>setuid</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The setuid property. Valid values are <code>on</code>, <code>off</code>.</p>
  $setuid,
# <h2>shareiscsi</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The shareiscsi property. Valid values are <code>on</code>, <code>off</code>, <code>type=&lt;type&gt;</code>.</p>
  $shareiscsi,
# <h2>sharenfs</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The sharenfs property. Valid values are <code>on</code>, <code>off</code>, share(1M) options</p>
  $sharenfs,
# <h2>sharesmb</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The sharesmb property. Valid values are <code>on</code>, <code>off</code>, sharemgr(1M) options</p>
  $sharesmb,
# <h2>snapdir</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The snapdir property. Valid values are <code>hidden</code>, <code>visible</code>.</p>
  $snapdir,
# <h2>version</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The version property. Valid values are <code>1</code>, <code>2</code>, <code>3</code>, <code>4</code>, <code>current</code>.</p>
  $version,
# <h2>volsize</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The volsize property. Valid values are <code>&lt;size&gt;</code></p>
  $volsize,
# <h2>vscan</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The vscan property. Valid values are <code>on</code>, <code>off</code>.</p>
  $vscan,
# <h2>xattr</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The xattr property. Valid values are <code>on</code>, <code>off</code>.</p>
  $xattr,
# <h2>zoned</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The zoned property. Valid values are <code>on</code>, <code>off</code>.</p>
#   <h3 id="zfs-providers">Providers</h3>
#   <h4 id="zfs-provider-zfs">zfs</h4>
#   <p>Provider for zfs.</p>
#   <ul>
#     <li>Required binaries: <code>zfs</code>.</li>
#   </ul>
#   <hr>
  $zoned,
) {
  # Stub
}

# <h2>zone</h2>
#   <p>Manages Solaris zones.</p>
#   <p><strong>Autorequires:</strong> If Puppet is managing the directory specified as the root of
#   the zone’s filesystem (with the <code>path</code> attribute), the zone resource will
#   autorequire that directory.</p>
define zone (
# <h2>name</h2>
#   <p><em>(<strong>Namevar:</strong> If omitted, this attribute’s value defaults to the resource’s title.)</em></p>
#   <p>The name of the zone.</p>
  $name,
# <h2>ensure</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The running state of the zone.  The valid states directly reflect
#   the states that <code>zoneadm</code> provides.  The states are linear,
#   in that a zone must be <code>configured</code>, then <code>installed</code>, and
#   only then can be <code>running</code>.  Note also that <code>halt</code> is currently
#   used to stop zones.</p>
#   <p>Valid values are <code>absent</code>, <code>configured</code>, <code>installed</code>, <code>running</code>.</p>
  $ensure,
# <h2>autoboot</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Whether the zone should automatically boot.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $autoboot,
# <h2>clone</h2>
#   <p>Instead of installing the zone, clone it from another zone.
#   If the zone root resides on a zfs file system, a snapshot will be
#   used to create the clone; if it resides on a ufs filesystem, a copy of the
#   zone will be used. The zone from which you clone must not be running.</p>
  $clone,
# <h2>create_args</h2>
#   <p>Arguments to the <code>zonecfg</code> create command.  This can be used to create branded zones.</p>
  $create_args,
# <h2>dataset</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The list of datasets delegated to the non-global zone from the
#   global zone.  All datasets must be zfs filesystem names which are
#   different from the mountpoint.</p>
  $dataset,
# <h2>id</h2>
#   <p>The numerical ID of the zone.  This number is autogenerated
#   and cannot be changed.</p>
  $id,
# <h2>inherit</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The list of directories that the zone inherits from the global
#   zone.  All directories must be fully qualified.</p>
  $inherit,
# <h2>install_args</h2>
#   <p>Arguments to the <code>zoneadm</code> install command.  This can be used to create branded zones.</p>
  $install_args,
# <h2>ip</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The IP address of the zone.  IP addresses <strong>must</strong> be specified
#   with an interface, and may optionally be specified with a default router
#   (sometimes called a defrouter). The interface, IP address, and default
#   router should be separated by colons to form a complete IP address string.
#   For example: <code>bge0:192.168.178.200</code> would be a valid IP address string
#   without a default router, and <code>bge0:192.168.178.200:192.168.178.1</code> adds a
#   default router to it.</p>
#   <p>For zones with multiple interfaces, the value of this attribute should be
#   an array of IP address strings (each of which must include an interface
#   and may include a default router).</p>
  $ip,
# <h2>iptype</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The IP stack type of the zone.</p>
#   <p>Valid values are <code>shared</code>, <code>exclusive</code>.</p>
  $iptype,
# <h2>path</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The root of the zone’s filesystem.  Must be a fully qualified
#   file name.  If you include <code>%s</code> in the path, then it will be
#   replaced with the zone’s name.  Currently, you cannot use
#   Puppet to move a zone. Consequently this is a readonly property.</p>
  $path,
# <h2>pool</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>The resource pool for this zone.</p>
  $pool,
# <h2>provider</h2>
#   <p>The specific backend to use for this <code>zone</code>
#   resource. You will seldom need to specify this — Puppet will usually
#   discover the appropriate provider for your platform.</p>
#   <p>Available providers are:</p>
#   <ul>
#     <li><a href="#zone-provider-solaris"><code>solaris</code></a></li>
#   </ul>
  $provider,
# <h2>realhostname</h2>
#   <p>The actual hostname of the zone.</p>
  $realhostname,
# <h2>shares</h2>
#   <p><em>(<strong>Property:</strong> This attribute represents concrete state on the target system.)</em></p>
#   <p>Number of FSS CPU shares allocated to the zone.</p>
  $shares,
# <h2>sysidcfg</h2>
#   <p>The text to go into the <code>sysidcfg</code> file when the zone is first
#   booted.  The best way is to use a template:</p>
#   <pre><code># $confdir/modules/site/templates/sysidcfg.erb
#   system_locale=en_US
#   timezone=GMT
#   terminal=xterms
#   security_policy=NONE
#   root_password=&lt;%= password %&gt;
#   timeserver=localhost
#   name_service=DNS {domain_name=&lt;%= domain %&gt; name_server=&lt;%= nameserver %&gt;}
#   network_interface=primary {hostname=&lt;%= realhostname %&gt;
#     ip_address=&lt;%= ip %&gt;
#     netmask=&lt;%= netmask %&gt;
#     protocol_ipv6=no
#     default_route=&lt;%= defaultroute %&gt;}
#   nfs4_domain=dynamic
#   </code></pre>
#   <p>And then call that:</p>
#   <pre><code>zone { myzone:
#     ip           =&gt; "bge0:192.168.0.23",
#     sysidcfg     =&gt; template("site/sysidcfg.erb"),
#     path         =&gt; "/opt/zones/myzone",
#     realhostname =&gt; "fully.qualified.domain.name"
#   }
#   </code></pre>
#   <p>The <code>sysidcfg</code> only matters on the first booting of the zone,
#   so Puppet only checks for it at that time.</p>
#   <h3 id="zone-providers">Providers</h3>
#   <h4 id="zone-provider-solaris">solaris</h4>
#   <p>Provider for Solaris Zones.</p>
#   <ul>
#     <li>Required binaries: <code>/usr/sbin/zoneadm</code>, <code>/usr/sbin/zonecfg</code>.</li>
#     <li>Default for <code>osfamily</code> == <code>solaris</code>.</li>
#   </ul>
#   <hr>
  $sysidcfg,
) {
  # Stub
}

define stub__metaparams__ (
# <h2>alias</h2>
#   <p>Creates an alias for the resource.  Puppet uses this internally when you
#   provide a symbolic title and an explicit namevar value:</p>
#   <pre><code>file { 'sshdconfig':
#     path =&gt; $operatingsystem ? {
#       solaris =&gt; '/usr/local/etc/ssh/sshd_config',
#       default =&gt; '/etc/ssh/sshd_config',
#     },
#     source =&gt; '...'
#   }
#   service { 'sshd':
#     subscribe =&gt; File['sshdconfig'],
#   }
#   </code></pre>
#   <p>When you use this feature, the parser sets <code>sshdconfig</code> as the title,
#   and the library sets that as an alias for the file so the dependency
#   lookup in <code>Service['sshd']</code> works.  You can use this metaparameter yourself,
#   but note that aliases generally only work for creating relationships; anything
#   else that refers to an existing resource (such as amending or overriding
#   resource attributes in an inherited class) must use the resource’s exact
#   title. For example, the following code will not work:</p>
#   <pre><code>file { '/etc/ssh/sshd_config':
#     owner =&gt; root,
#     group =&gt; root,
#     alias =&gt; 'sshdconfig',
#   }
#   File['sshdconfig'] {
#     mode =&gt; 644,
#   }
#   </code></pre>
#   <p>There’s no way here for the Puppet parser to know that these two stanzas
#   should be affecting the same file.</p>
  $alias,
# <h2>audit</h2>
#   <p>Marks a subset of this resource’s unmanaged attributes for auditing. Accepts an
#   attribute name, an array of attribute names, or <code>all</code>.</p>
#   <p>Auditing a resource attribute has two effects: First, whenever a catalog
#   is applied with puppet apply or puppet agent, Puppet will check whether
#   that attribute of the resource has been modified, comparing its current
#   value to the previous run; any change will be logged alongside any actions
#   performed by Puppet while applying the catalog.</p>
#   <p>Secondly, marking a resource attribute for auditing will include that
#   attribute in inspection reports generated by puppet inspect; see the
#   puppet inspect documentation for more details.</p>
#   <p>Managed attributes for a resource can also be audited, but note that
#   changes made by Puppet will be logged as additional modifications. (I.e.
#   if a user manually edits a file whose contents are audited and managed,
#   puppet agent’s next two runs will both log an audit notice: the first run
#   will log the user’s edit and then revert the file to the desired state,
#   and the second run will log the edit made by Puppet.)</p>
  $audit,
# <h2>before</h2>
#   <p>One or more resources that depend on this resource, expressed as
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_datatypes.html#resource-references">resource references</a>.
#   Multiple resources can be specified as an array of references. When this
#   attribute is present:</p>
#   <ul>
#     <li>This resource will be applied <em>before</em> the dependent resource(s).</li>
#   </ul>
#   <p>This is one of the four relationship metaparameters, along with
#   <code>require</code>, <code>notify</code>, and <code>subscribe</code>. For more context, including the
#   alternate chaining arrow (<code>-&gt;</code> and <code>~&gt;</code>) syntax, see
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_relationships.html">the language page on relationships</a>.</p>
  $before,
# <h2>loglevel</h2>
#   <p>Sets the level that information will be logged.
#   The log levels have the biggest impact when logs are sent to
#   syslog (which is currently the default).</p>
#   <p>Valid values are <code>debug</code>, <code>info</code>, <code>notice</code>, <code>warning</code>, <code>err</code>, <code>alert</code>, <code>emerg</code>, <code>crit</code>, <code>verbose</code>.</p>
  $loglevel,
# <h2>noop</h2>
#   <p>Whether to apply this resource in noop mode.</p>
#   <p>When applying a resource in noop mode, Puppet will check whether it is in sync,
#   like it does when running normally. However, if a resource attribute is not in
#   the desired state (as declared in the catalog), Puppet will take no
#   action, and will instead report the changes it <em>would</em> have made. These
#   simulated changes will appear in the report sent to the puppet master, or
#   be shown on the console if running puppet agent or puppet apply in the
#   foreground. The simulated changes will not send refresh events to any
#   subscribing or notified resources, although Puppet will log that a refresh
#   event <em>would</em> have been sent.</p>
#   <p><strong>Important note:</strong>
#   <a href="http://docs.puppetlabs.com/references/latest/configuration.html#noop">The <code>noop</code> setting</a>
#   allows you to globally enable or disable noop mode, but it will <em>not</em> override
#   the <code>noop</code> metaparameter on individual resources. That is, the value of the
#   global <code>noop</code> setting will <em>only</em> affect resources that do not have an explicit
#   value set for their <code>noop</code> attribute.</p>
#   <p>Valid values are <code>true</code>, <code>false</code>.</p>
  $noop,
# <h2>notify</h2>
#   <p>One or more resources that depend on this resource, expressed as
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_datatypes.html#resource-references">resource references</a>.
#   Multiple resources can be specified as an array of references. When this
#   attribute is present:</p>
#   <ul>
#     <li>This resource will be applied <em>before</em> the notified resource(s).</li>
#     <li>If Puppet makes changes to this resource, it will cause all of the
#   notified resources to <em>refresh.</em> (Refresh behavior varies by resource
#   type: services will restart, mounts will unmount and re-mount, etc. Not
#   all types can refresh.)</li>
#   </ul>
#   <p>This is one of the four relationship metaparameters, along with
#   <code>before</code>, <code>require</code>, and <code>subscribe</code>. For more context, including the
#   alternate chaining arrow (<code>-&gt;</code> and <code>~&gt;</code>) syntax, see
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_relationships.html">the language page on relationships</a>.</p>
  $notify,
# <h2>require</h2>
#   <p>One or more resources that this resource depends on, expressed as
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_datatypes.html#resource-references">resource references</a>.
#   Multiple resources can be specified as an array of references. When this
#   attribute is present:</p>
#   <ul>
#     <li>The required resource(s) will be applied <strong>before</strong> this resource.</li>
#   </ul>
#   <p>This is one of the four relationship metaparameters, along with
#   <code>before</code>, <code>notify</code>, and <code>subscribe</code>. For more context, including the
#   alternate chaining arrow (<code>-&gt;</code> and <code>~&gt;</code>) syntax, see
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_relationships.html">the language page on relationships</a>.</p>
  $require,
# <h2>schedule</h2>
#   <p>A schedule to govern when Puppet is allowed to manage this resource.
#   The value of this metaparameter must be the <code>name</code> of a <code>schedule</code>
#   resource. This means you must declare a schedule resource, then
#   refer to it by name; see
#   <a href="http://docs.puppetlabs.com/references/latest/type.html#schedule">the docs for the <code>schedule</code> type</a>
#   for more info.</p>
#   <pre><code>schedule { 'everyday':
#     period =&gt; daily,
#     range  =&gt; "2-4"
#   }
#   exec { "/usr/bin/apt-get update":
#     schedule =&gt; 'everyday'
#   }
#   </code></pre>
#   <p>Note that you can declare the schedule resource anywhere in your
#   manifests, as long as it ends up in the final compiled catalog.</p>
  $schedule,
# <h2>stage</h2>
#   <p>Which run stage this class should reside in.</p>
#   <p><strong>Note: This metaparameter can only be used on classes,</strong> and only when
#   declaring them with the resource-like syntax. It cannot be used on normal
#   resources or on classes declared with <code>include</code>.</p>
#   <p>By default, all classes are declared in the <code>main</code> stage. To assign a class
#   to a different stage, you must:</p>
#   <ul>
#     <li>Declare the new stage as a <a href="http://docs.puppetlabs.com/references/latest/type.html#stage"><code>stage</code> resource</a>.</li>
#     <li>Declare an order relationship between the new stage and the <code>main</code> stage.</li>
#     <li>Use the resource-like syntax to declare the class, and set the <code>stage</code>
#   metaparameter to the name of the desired stage.</li>
#   </ul>
#   <p>For example:</p>
#   <pre><code>stage { 'pre':
#     before =&gt; Stage['main'],
#   }
#   class { 'apt-updates':
#     stage =&gt; 'pre',
#   }
#   </code></pre>
  $stage,
# <h2>subscribe</h2>
#   <p>One or more resources that this resource depends on, expressed as
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_datatypes.html#resource-references">resource references</a>.
#   Multiple resources can be specified as an array of references. When this
#   attribute is present:</p>
#   <ul>
#     <li>The subscribed resource(s) will be applied <em>before</em> this resource.</li>
#     <li>If Puppet makes changes to any of the subscribed resources, it will cause
#   this resource to <em>refresh.</em> (Refresh behavior varies by resource
#   type: services will restart, mounts will unmount and re-mount, etc. Not
#   all types can refresh.)</li>
#   </ul>
#   <p>This is one of the four relationship metaparameters, along with
#   <code>before</code>, <code>require</code>, and <code>notify</code>. For more context, including the
#   alternate chaining arrow (<code>-&gt;</code> and <code>~&gt;</code>) syntax, see
#   <a href="http://docs.puppetlabs.com/puppet/latest/reference/lang_relationships.html">the language page on relationships</a>.</p>
  $subscribe,
# <h2>tag</h2>
#   <p>Add the specified tags to the associated resource.  While all resources
#   are automatically tagged with as much information as possible
#   (e.g., each class and definition containing the resource), it can
#   be useful to add your own tags to a given resource.</p>
#   <p>Multiple tags can be specified as an array:</p>
#   <pre><code>file {'/etc/hosts':
#     ensure =&gt; file,
#     source =&gt; 'puppet:///modules/site/hosts',
#     mode   =&gt; 0644,
#     tag    =&gt; ['bootstrap', 'minimumrun', 'mediumrun'],
#   }
#   </code></pre>
#   <p>Tags are useful for things like applying a subset of a host’s configuration
#   with <a href="http://docs.puppetlabs.com/references/latest/configuration.html#tags">the <code>tags</code> setting</a>
#   (e.g. <code>puppet agent --test --tags bootstrap</code>) or filtering alerts with
#   <a href="http://docs.puppetlabs.com/references/latest/report.html#tagmail">the <code>tagmail</code> report processor</a>.</p>
  $tag,
# <h2>name</h2>
#   name given to the resource instance
  $name,
) {
  # Stub
}

