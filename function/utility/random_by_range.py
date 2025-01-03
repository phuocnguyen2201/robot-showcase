import random
import json

def random_by_range(start, end):
    start = int(start)
    end = int(end)
    return random.randint(start, end)

def random_by_obj(obj):
    rand = random.choice(obj)
    return rand['bookingid']
