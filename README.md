# arte30 :  arte25 x array

  <img src="https://github.com/leeseomin/arte30/blob/main/out/IMG_2956toon5rray.png" width="65%">    


### Dependency install on ubuntu 16.04  + torch7 + cuda+  nvidia Pascal gpus (ex. gtx1080ti, gtx1080, gtx1070, gtx1070ti)


```
 # torch install

http://torch.ch/docs/getting-started.html


 # parallel install
 
 sudo apt install parallel
 
 
   #  gimp gmic install

sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge

sudo apt-get update

sudo apt-get install gmic gimp-gmic


 #   imagemagick install

sudo apt install graphicsmagick-imagemagick-compat

sudo apt install imagemagick-6.q16


 #  Gmic update filters (follow the link)
 
https://telegra.ph/Gmic-update-filters-07-26

```



### Install

```

git clone https://github.com/leeseomin/arte30

cd arte30

mkdir s{1..25}


```

### Usage
```

input images folder : s ,   result folder : s25


bash main.sh

```




###  Results


### input image1

 <img src="https://github.com/leeseomin/arte30/blob/main/s/IMG_2956.JPG" width="500">

### output (image1)
 
  <img src="https://github.com/leeseomin/arte30/blob/main/out/IMG_2956toon5rray.png" width="65%">    






```  
  
  

### License

The code is partialy based on Dmitry Ulyanov's texture_nets.

This repo is made freely available to academic and non-academic entities for non-commercial purposes 
such as academic research, teaching, scientific publications. 
Permission is granted to use the arte30 given that you agree to my license terms. Regarding the request for commercial use, 
please contact me via email (leeseomin@gmail.com)




###  Author

LEE SEOMIN

