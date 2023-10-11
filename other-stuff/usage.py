#!/usr/bin/python3

import glob
import gzip
import io
from datetime import datetime
from dataclasses import dataclass

@dataclass
class MaxMin:
    min: str
    max: str

def toString(time):
    return time.strftime('%H:%M:%S')

def read_syslog_file(open_file, date_times): 
    for line in open_file:    
        date_string: str = line.split()[0]
        row_time = datetime.strptime(date_string, '%Y-%m-%dT%H:%M:%S.%f%z')

        if row_time.date() in date_times:
            if date_times[row_time.date()].min > toString(row_time.time()):
                date_times[row_time.date()].min = toString(row_time.time())
            if date_times[row_time.date()].max < toString(row_time.time()):
                date_times[row_time.date()].max = toString(row_time.time())
        else:
            date_times[row_time.date()] = MaxMin(toString(row_time.time()), toString(row_time.time()))

def get_times():
    date_times = {}
    syslog_files = glob.glob("/var/log/syslog*")
    for syslog_file in syslog_files:
        if syslog_file.endswith('.gz'):
            current_file = io.TextIOWrapper(gzip.open(syslog_file, "r"))
            read_syslog_file(current_file, date_times)
            current_file.close()
        else:
            current_file = open(syslog_file, "r")
            read_syslog_file(current_file, date_times)
            current_file.close()
    return date_times

for k, v in sorted(get_times().items()):
    print(k, v)