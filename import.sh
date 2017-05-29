#!/bin/bash
aws s3 cp s3://nidhish-swagger/ / --recursive --exclude "*" --include "*primer-dataset.json*" && mongoimport --host mongodb --db newdb --collection restaurants --file primer-dataset.json