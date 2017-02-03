# ocropus-binarization-experiment

Images and grouth truth data for the blog post https://comsys.informatik.uni-kiel.de/lang/de/res/optimizing-binarization-for-ocropus/

You need OCRopus https://github.com/tmbdev/ocropy and my character model for the Austrian-Hungarian casualty lists https://github.com/jze/ocropus-model_oesterreich-ungarn

I used version f7b163c of OCRopus and version b095693 of the character model.

The script `run.sh` will perform all steps to measure the character recognition error rate. It expects that OCRopus' programs are executable (in `$PATH`) and that the character model is located in a sibling directory to this directory.
