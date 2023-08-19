java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar e embed -c videos/secret-input.mp4 -o results/secret-input-mark.mp4 -w samples/mark_logo.bmp -a 1

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar e embed -c videos/secret-input.mp4 -o results/secret-input-UIT_rz.mp4 -w samples/UIT_lg_rz.bmp -a 1

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar e embed -c videos/secret-input.mp4 -o results/secret-input-sample.mp4 -w samples/sample_640×426.bmp -a 1

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar e embed -c videos/secret-input.mp4 -o results/secret-input-secret.mp4 -w samples/secret.jpg -a 1
------------------
java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-mark.mp4 -o decoder/secret-input-mark.png -width 90 -height 90 -a 1

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-UIT_rz.mp4 -o decoder/secret-input-UIT_rz.png -w samples/UIT_lg_rz.bmp -a 1 --watermark-path imgs

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-sample.mp4 -o decoder/secret-input-sample.png -w samples/sample_640×426.bmp -a 1 --watermark-path imgs

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-secret.mp4 -o decoder/secret-input-secret.png -w samples/secret.jpg -a 1 --watermark-path imgs

==================================================================
java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar embed -c videos/secret-input.mp4 -o results/secret-input-UIT_rz-1.mp4 -w samples/mark_logo.bmp -a 1

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar embed -c videos/secret-input.mp4 -o results/secret-input-UIT_rz-2.mp4 -w samples/mark_logo.bmp -a 2

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar embed -c videos/secret-input.mp4 -o results/secret-input-UIT_rz-3.mp4 -w samples/mark_logo.bmp -a 3

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar embed -c videos/secret-input.mp4 -o results/secret-input-UIT_rz-4.mp4 -w samples/mark_logo.bmp -a 4

-----------------------

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-UIT_rz-1.mp4 -o decoder/secret-input-UIT_rz-1.png -w samples/mark_logo.bmp -a 1

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-UIT_rz-2.mp4 -o decoder/secret-input-UIT_rz-2.png -w samples/mark_logo.bmp -a 2 

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-UIT_rz-3.mp4 -o decoder/secret-input-UIT_rz-3.png -w samples/mark_logo.bmp -a 3 

java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar extract -s results/secret-input-UIT_rz-4.mp4 -o decoder/secret-input-UIT_rz-4.png -w samples/mark_logo.bmp -a 4 

\\\
java -jar /root/StegoVideoDemo/target/StegoVideo-1.0-jar-with-dependencies.jar psnr -c videos/secret-input.mp4 -s results/secret-input-UIT_rz-1.mp4