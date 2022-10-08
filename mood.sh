#!/usr/bin/env bash

echo "What's your mood right now? (Happy, Sad, Neutral)"
read MOOD

if [ "$MOOD" = "Sad" ]; then
    echo "It's okay;) You will be fine"
elif [ "$MOOD" = "Happy" ]; then
    echo "Great to hear that!! you deserve it"
else
    echo "TGIF!"
fi