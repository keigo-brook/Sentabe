from sentabe_client import SentabeClient
from datetime import datetime

class Child(SentabeClient):
    def getData(self):
        data, time = 1, datetime.now()
        print(time)
        return [data, time]


if __name__ == '__main__':
    type = "FloatDatum"
    data_type_id = 2
    sensor_id = 2
    c = Child(type, data_type_id, sensor_id)
    c.run()
