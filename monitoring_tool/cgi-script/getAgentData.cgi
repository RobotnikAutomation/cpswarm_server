#!/bin/sh
echo "Content-Type: plain/text"
echo ""
read POST_STRING
./getAgentData "$POST_STRING"
