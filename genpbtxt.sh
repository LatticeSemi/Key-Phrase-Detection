#
# This script generates .pbtxt file by setting is_training flag to false.
# .pbtxt generated by this script do not have training only nodes from bn.
#

# Export common configurations
. ./config.sh

# Generate .pbtxt file
python train.py $COMMON_OPT \
	--freeze \
	--train_dir=$TRAIN_DIR \
	--data_dir=$DATA_DIR \
	--wanted_words=$TRAIN_KEYWORD