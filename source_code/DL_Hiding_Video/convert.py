import logging
import cv2

parser.add_argument("--input_video", required=True, help="path to output video")
parser.add_argument("--output_video", required=True, help="path to output video")
logging.basicConfig(level=logging.INFO)

def convert_avi_to_mp4(input_file, output_file):
    logging.info("Converting file: %s", input_file)

    # Create a VideoCapture object for the input file.
    cap = cv2.VideoCapture(input_file)

    # Check if the file can be opened.
    if not cap.isOpened():
        logging.error("Error opening input file.")
        return

    # Get the width and height of the video.
    width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
    
    # Get the frames per second (fps) of the video.
    fps = cap.get(cv2.CAP_PROP_FPS)

    # Create a VideoWriter object for the output file.
    fourcc = cv2.VideoWriter_fourcc(*'mp4v')
    out = cv2.VideoWriter(output_file, fourcc, fps, (width, height))

    # Read frames from the input file and write them to the output file.
    while cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            break

        out.write(frame)

    # Release the resources.
    cap.release()
    out.release()

    logging.info("Conversion successful.")

if __name__ == "__main__":
    input_file = args["input_video"]
    output_file = args["output_video"]

    convert_avi_to_mp4(input_file, output_file)
