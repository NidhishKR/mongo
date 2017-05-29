#!/bin/bash
aws s3 cp s3://<bucket name>/ / --recursive --exclude "*" --include "*<dump file name>*" && mongoimport --host mongodb --db newdb --collection restaurants --file primer-dataset.json
