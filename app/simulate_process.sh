#!/bin/bash

TEST_FILE_DIR=/tmp/my_dir/
TEST_FILE_NAME=test_file.txt
TEST_FILE_PATH=${TEST_FILE_DIR}${TEST_FILE_NAME}
TEST_FILE_CONTENT="some text here..."
DEFAULT_HASH_COUNT=30
SLEEP_DELAY=3

function add_hashes
{
python - <<START
hash_count = ${1:-$DEFAULT_HASH_COUNT}
for i in range(hash_count):
    print('#', end='')
print()
START
} 

add_hashes 
echo "Creating file to $TEST_FILE_DIR"

mkdir -p $TEST_FILE_DIR
touch $TEST_FILE_PATH
echo $TEST_FILE_CONTENT > $TEST_FILE_PATH 

add_hashes
echo "Content of $TEST_FILE_DIR is: $(ls $TEST_FILE_DIR)"
echo "Content of $TEST_FILE_PATH is: $(cat $TEST_FILE_PATH)"

add_hashes 
echo "Runing infinite process"
add_hashes 

let i=0
while true
do
    let i++
    echo "Do something useless...$i times"
    sleep $SLEEP_DELAY
done