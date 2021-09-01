# core 만  and  parallel 
parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
parallel --no-notice rm -r ::: s26/* s27/* s28/* s29/* s30/* s31/* s32/* s33/* s34/* s35/* s36/* s37/*
parallel --no-notice rm -r ::: s38/* s39/* s40/*
cd s
for f in *\ *; do mv "$f" "${f// /_}"; done
cd .. 
cd s
parallel --no-notice convert {} -resize 1900x1900 {.}.png ::: *.* 
rm *.jpg
rm *.JPG
cd ..
cd s
parallel --no-notice convert {} ../s21/{} ::: *.*
cd ..
cd s
for i in *.* 
do 
convert -modulate 100,200,100 $i ../s1/$i
done
cd ..
th foldertest.lua -model_t7 data/checkpoints/tumb3.t7 -input_dir s -output_dir s2 &&
cd s1 
for i in *.* 
do 
convert $i ../s2/$i -alpha set  -compose softlight -composite ../s3/$i 
done 
cd .. 
cd s3
for i in *.* 
do
gmic -input $i -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s22/$i
done
cd .. 
cd s22
parallel --no-notice convert {}  -set filename:new  ../s25/"%ttoon5" "%[filename:new].png" ::: *.*
cd ..
cd s
rm -r *.*
cd ..
cp s25/* s 
cd s
for i in *.* 
do 
convert -modulate 100,140,100 $i ../s1/$i
done
cd ..
cd s1
for i in *.* 
do 
gmic -input $i -fx_poster_edges 10,3,5,0,10,0,0,0 -o ../s6/$i 
done
cd .. 
cd s6
for i in *.*; do
   convert $i  -set filename:new ../s25/"%tcpu1" "%[filename:new].png"
done
cd ..
cp s21/* s25/
cd s6
parallel convert {} -modulate 100,140,100  ../s1/{} ::: *.* 
cd ..
cd s1
for i in *.* 
do 
convert $i ../s6/$i -alpha set -channel A -evaluate set 100% -compose softlight -composite ../s3/$i 
done 
cd .. 
cd s3
parallel gmic {} -fx_poster_edges 20,3,5,0,10,0,0,0 -o ../s4/{} ::: *.* 
cd ..
cd s4
for i in *.*; do
   convert $i  -set filename:new ../s25/"%tcpu1edge" "%[filename:new].png"
done 
cd ..
cd s4
parallel gmic {} -fx_taquin 7,7,0,50,5,0,0,0,0,255,0 -o ../s5/{} ::: *.* 
cd ..
cd s5
parallel --no-notice convert {} -resize 2500x2500 {.}.png ::: *.* 
cd ..
cd s5
for i in *.*; do
   convert $i  -set filename:new ../s25/"%trray" "%[filename:new].png"
done 
cd ..
cd s4
parallel gmic {} -fx_taquin 8,8,0,50,5,0,0,0,0,255,0 -o ../s6/{} ::: *.* 
cd ..
cd s6
parallel --no-notice convert {} -resize 3000x3000 {.}.png ::: *.* 
cd ..
cd s6
for i in *.*; do
   convert $i  -set filename:new ../s25/"%trray3k" "%[filename:new].png"
done 
