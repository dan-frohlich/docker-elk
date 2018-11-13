#!/bin/bash
. .env
curl -sv https://download.elastic.co/kibana/canvas/kibana-canvas-${CANVAS_VERSION:?}.zip -o ./kibana/kibana-canvas-${CANVAS_VERSION:?}.zip