   #history
   1  cd /
    2  groupadd gfg
    3  useradd -G gfg gfg1
    4  id gfg1
    5  useradd -G gfg gfg2
    6  useradd -G gfg gfg3
    7  su gfg2
    8  vi /etc/sudoers
    9  su gfg2
   10  passwd gfg2
   11  passwd root
   12  su gfg2
   13  id gfg3
   14  vi /etc/sudoers
   15  useradd qa
   16  passwd qa
   17  su qa
   18  vi /etc/sudoers
   19  id gfg2
   20  passwd --help
   21  passwd -l gfg2
   22  su gfg3
   23  su gfg2
   24  passwd --help
   25  passwd -u gfg2
   26  su gfg3
   27  clear
   28  ls
   29  passwd -l root
   30  cd /etc/
   31  ls
   32  cd ssh/
   33  ls
   34  vi /etc/ssh/sshd_config
   35  vi /etc/ssh/sshd_config
   36  cd /
   37  clear
   38  fdisk -l
   39  fdisk -l
   40  pvcreate /dev/xvdb
   41  yum whatprovides pvcreate
   42  yum install lvm2-2.03.16-1.amzn2023.0.4.x86_64
   43  clear
   44  pvdisplay
   45  pvcreate /dev/xvdb
   46  pvdisplay
   47  fdisk -l
   48  pvcreate /dev/xvdc
   49  pvdisplay
   50  vgdisplay
   51  vgcreate gfgvg /dev/sdc  /dev/sdb
   52  vgdisplay
   53  lvdisplay
   54  lvcreate --size 1.5G --name mylv1 gfgvg
   55  lvdisplay
   56  vgdisplay
   57  mkfs.ext4 /dev/gfgvg/mylv1
   58  mkdir /gfg
   59  df -hT
   60  fdisk -l
   61  clear
   62  lvdisplay
   63  ls
   64  vi /etc/sudoers
   65  mount /dev/gfgvg/mylv1 /gfg/
   66  df -hT
   67  cd gfg
   68  ls
   69  vi a.txt
   70  ls
   71  touch b.txt
   72  ls
   73  lvdisplay
   74  lvextend --size +200M /dev/gfgvg/my;v1
   75  lvextend --size +200M /dev/gfgvg/mylv1
   76  lvdisplay
   77  vgdisplay
   78  df -hT
   79  resize2fs /dev/gfgvg/mylv1
   80  df -hT
   81  umount /gfg
   82  cd /
   83  umount /gfg
   84  df -hT
   85  clear
   86  x=10
   87  echo $x
   88  ps -aux | grep bash
   89  date
   90  cal
   91  x=date
   92  exho $x
   93  echo $x
   94  date
   95  x=$(date)
   96  echo $x
   97  vi basics.sh
   98  bash basics.sh 
   99  vi basics.sh
  100  id ram
  101  bash basics.sh 
  102  id ram
  103  vi basics.sh 
  104  bash basics.sh 
  105  vi basics.sh 
  106  bash basics.sh 
  107  vi basics.sh 
  108  bash basics.sh 
  109  bash basics.sh sudhanshu
  110  bash basics.sh rohan
  111  vi basics.sh 
  112  bash basics.sh rohan sudhanshu
  113  vi basics.sh 
  114  bash basics.sh rohan sudhanshu
  115  bash basics.sh rohan sudhanshu shyam
  116  vi basics.sh 
  117  bash basics.sh
  118  bash basics.sh rohan
  119  bash basics.sh rohan sudhanshu
  120  bash basics.sh rohan sudhanshu dadad
  121  vi basics.sh 
  122  clear
  123  date
  124  echo $?
  125  date123
  126  echo $?
  127  cal
  128  echo $?
  129  vi user.sh
  130  bash user.sh qa123
  131  ls
  132  vi user.sh 
  133  bash user.sh qa123
  134  vi user.sh 
  135  bash user.sh qa123
  136  bash user.sh qa1232323
  137  vi user.sh 
  138  bash user.sh qa123
  139  vi user.sh 
  140  test 
  141  echo $?
  142  test "hii" == " asdasda"
  143  echo $?
  144  test 5 -eq 6
  145  echo $?
  146  test 5 -eq 5
  147  echo $?
  148  test 5 -gt 2
  149  echo $?
  150  test 5 -gt 20
  151  echo $?
  152  test --help
  153  echo $?
  154  vi user.sh 
  155  bash user.sh tom
  156  vi user.sh 
  157  bash user.sh tom
  158  vi user.sh 
  159  bash user.sh tom2121212
  160  vi user.sh 
  161  bash user.sh tom2121212
  162  clear
  163  date
  164  date > output.txt
  165  cat output.txt 
  166  yum install httpd 
  167  yum install httpd > output.log
  168  cat output.log 
  169  date > output.txt
  170  date123 > output.txt
  171  date123 1> output.txt
  172  clear
  173  date > output.txt
  174  cat output.
  175  cat output.txt 
  176  date 1> output.txt
  177  cat output.txt 
  178  date123 1> output.txt
  179  cat output.txt 
  180  date123 2> output.txt
  181  cat output.
  182  cat output.txt 
  183  clear
  184  date 2> output.txt
  185  date &> output.log
  186  cat output.log 
  187  date123 &> output.log
  188  cat output.log 
  189  clear
  190  bash user.sh tom
  191  useradd tom
  192  vi user.sh 
  193  bash user.sh tom
  194  which bash
  195  vi user.sh 
  196  user.sh
  197  ls
  198  chmod +x user.sh 
  199  ls
  200  ./user.sh tom123
  201  vi db.csv
  202  vi user.sh 
  203  ./user.sh 
  204  id sfsfsf
  205  vi user.sh 
  206  ./user.sh 
  207  vi user.sh 
  208  ./user.sh 
  209  vi db.csv 
  210  ./user.sh 
  211  vi user.sh 
  212  clea
  213  clear
  214  date && cal
  215  date123 && cal
  216  date && cal123
  217  date || cal
  218  date123 || cal
  219  vi user.sh 
  220  free -m
  221  vi a.py
  222  python3 a.py 
  223  vi user.sh 
  224  ./user.sh 
  225  vi monitoring.sh
  226  chmod +x monitoring.sh 
  227  ./monitoring.sh 
  228  ./monitoring.sh 
  229  ./monitoring.sh 
  230  ./monitoring.sh 
  231  crontab
  232  yum whatprovides crontab
  233  yum install cronie-1.5.7-1.amzn2023.0.2.x86_64
  234  crontab --help
  235  crontab -l
  236  systemctl status crond
  237  systemctl start crond
  238  systemctl status crond
  239  systemctl enable crond
  240  crontab -e
  241  clear
  242  date
  243  which date
  244  ls
  245  ./monitoring.sh
  246  cd /tmp
  247  monitoring.sh
  248  cd /
  249  cp monitoring.sh /usr/bin
  250  cd /tmp
  251  pwd
  252  monitoring.sh
  253  crontab -e
  254  cd /
  255  ls
  256  ls
  257  ls
  258  crontab -l
  259  cat cron-monitoring.log 
  260  cat cron-monitoring.log 
  261  cat cron-monitoring.log 
  262  cat cron-monitoring.log 
  263  cd /tmp/
  264  ls
  265  ls -l -a
  266  chmod 744 basics.sh 
  267  ls
  268  cd /home
  269  ls
  270  tar --help
  271  clear
  272  ls
  273  tar -cvzf gfg1-backout.tar.gz /gfg1
  274  ls
  275  cd gfg1
  276  ls
  277  touch a.txt 
  278  touch b.txt
  279  ls
  280  cd ..
  281  tar -cvzf gfg1-backout.tar.gz /gfg1
  282  cd /
  283  ls
  284  clear
  285  tar -xzf /home/gfg1-backout.tar.gz 
  286  ls
  287  clea
  288  clear
  289  mkdir mylogs
  290  cd mylogs/
  291  touch user.log
  292  touch error.log
  293  cd ..
  294  ls
  295  tar -czvf log.tar.gz /mylogs/
  296  ls
  297  rm -rf mylogs/
  298  ls
  299  tar -xzvf log.tar.gz 
  300  ls
  301  cd mylogs/
  302  ls
  303  clear
  304  vim Dockerfile
  305  docker build -t myimg .
  306  systemctl start docker
  307  systemctl enable docker
  308  docker build -t myimg .
  309  vim Dockerfile
  310  docker build -t myimg .
  311  yum install httpd
  312  id apache
  313  systemctl start httpd
  314  ps -aux | grep httpd
  315  cat /etc/passwd
  316  ls
  317  ls -l 
  318  chown gfg1 Dockerfile 
  319  ls -l
  320  clear
  321  docker images
  322  docker save -o image.tar myimg
  323  ls
  324  docker images rm myimg
  325  docker image rm myimg
  326  docker images
  327  docker load -i image.tar 
  328  docker images
  329  mkdir /slave
  330  cd /slave
  331  ls
  332  ls -l -a
  333  cd /
  334  ls
  335  vls
  336  ls
  337  ls
  338  ls
  339  cd mylogs/
  340  ls
  341  ps -aux | grep httpd
  342  ps -aux | grep chrontab
  343  cd /
  344  history