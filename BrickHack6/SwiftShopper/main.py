from __future__ import print_function
import datetime
import pickle
import os.path
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request

#Convert string time to float time
def time_to_num_range(time):
    if type(time) is not str:
        return -1
    hour1 = int(time[0:2])
    minute1 = int(time[3:5])
    second1 = int(time[6:8])

    hour2 = int(time[12:14])
    minute2 = int(time[15:17])
    second2 = int(time[18:20])

    time1 = float(hour1 + minute1 / 60)
    time2 = float(hour2 + minute2 / 60)

    return (time1, time2)

#Converts our float times tuple back into a string for Calendar
def num_range_to_time(time1, time2):
    if type(time1) is not float or type(time2) is not float:
        return -1
    hour1 = int(time1)
    minute1 = int((time1 - int(time1)) * 60)

    hour2 = int(time2)
    minute2 = int((time2 - int(time2)) * 60)
    return ("{:02d}".format(hour1) + ":" + "{:02d}".format(minute1) + ":00 to " + "{:02d}".format(hour2) + ":" + "{:02d}".format(minute2) + ":00")

#Gives back total time you'll have in this block
def time_in_range(time1, time2):
    return time1 - time2

#Find the times out of the day you have taken from calendar
def find_used_time_today():
    # If modifying these scopes, delete the file token.pickle.
    SCOPES = ['https://www.googleapis.com/auth/calendar.readonly']

    """
    Finds the time already alloted out of the current day
    """
    creds = None
    # The file token.pickle stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    if os.path.exists('token.pickle'):
        with open('token.pickle', 'rb') as token:
            creds = pickle.load(token)
    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            print("Invalid credentials!")
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                'credentials.json', SCOPES)
            creds = flow.run_local_server(port=0)
        # Save the credentials for the next run
        with open('token.pickle', 'wb') as token:
            pickle.dump(creds, token)

    service = build('calendar', 'v3', credentials=creds)

    # Call the Calendar API
    now = datetime.datetime.utcnow().isoformat() + 'Z' # 'Z' indicates UTC time
    today = now[0:10]
    #print('Getting the upcoming 10 events')
    events_result = service.events().list(calendarId='primary', timeMin=now,
                                        maxResults=20, singleEvents=True,
                                        orderBy='startTime').execute()
    events = events_result.get('items', [])

    taken_time = []
    if not events:
        print('No upcoming events found.')
    for event in events:
        start = event['start'].get('dateTime', event['start'].get('date'))
        end = event['end'].get('dateTime', event['end'].get('date'))
        date = start[0:10]
        time = start[11:19] + " to " + end[11:19]
        if (date == today):
            taken_time.append(time)
    
    if (taken_time != []):
        return taken_time
    else:
        return -1

#Convert time alloted to time available
def find_free_time(range_for_day):
    if (type(range_for_day) is not str):
        return -1
    
    #get alloted time, conv to floats
    alloted_time = find_used_time_today()

    #Convert times alloted to times avail
    early, late = time_to_num_range(range_for_day)
    free_times = [(early, 0)]
    for times in alloted_time:
        t1, t2 = time_to_num_range(times)
        if (free_times != []):
            e1, e2 = free_times[len(free_times) - 1]
            free_times[len(free_times) - 1] = (e1, t1 - .25)
            free_times.append((t2 + 0.25, 0))
    e1, e2 = free_times[len(free_times) - 1]
    free_times[len(free_times) - 1] = (e1, late)

    #add duration of gap to list as tuple
    for i in range(0, len(free_times)):
        t1, t2 = free_times[i]
        dur = t2 - t1
        free_times[i] = (t1, t2, dur)

    return free_times

def parse_bus_routes(weekend):
    file_to_use = ""
    second_bus_offset = 0
    if (weekend == True):
        file_to_use = "weekend_busses.csv"
        second_bus_offset = 45
    else:
        file_to_use = "weekday_busses.csv"
        second_bus_offset = 25
    
    bus_file = open(file_to_use, "r")
    bus1, bus2 = [], []

    headings = '\n'
    while (headings == '\n'):
        headings = bus_file.readline()
    headings = headings.split()
    for heading in headings:
        new_location = []
        new_location.append(heading)
        bus1.append(new_location)
        bus2.append(new_location)

    for line in range(0, )
        split_line = line.split()
        #print(split_line)


def find_routes():
    routes = 0
    if (datetime.datetime.today().weekday() >= 5):
        routes = parse_bus_routes(True)    
        print("It is the weekend! Using weekend busses!")
    else:
        routes = parse_bus_routes(False)
        print("It's a weekday, using weekday busses!")

    

    

def main():
    #free_times = find_free_time("08:00:00 to 22:00:00")
    #print(free_times)
    parse_bus_routes(True)

if __name__ == '__main__':
    main()