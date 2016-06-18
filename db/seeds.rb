# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mt1 = MachineType.create(name: "Raspberry Pi 1 B+")
mt2 = MachineType.create(name: "Raspberry Pi 3 B")

mt1.machines.create(name: "Lab Pi1 B+ 1")
mt1.machines.create(name: "Lab Pi1 B+ 2")
m1 = mt2.machines.create(name: "Development")
mt2.machines.create(name: "Lab Pi3 2")

s1 = m1.sensors.create(name: 'KT001')
s1.data_types.create(name: 'hum', dtype: :FloatDatum)

s2 = m1.sensors.create(name: 'TEMP100')
d1 = s2.data_types.create(name: '温度', dtype: :FloatDatum)
d2 = s2.data_types.create(name: '湿度', dtype: :IntDatum)

[27.0, 29.0, 31.0].each do |f|
  d1.sensor_data.create(sensor_id: d1.sensors.first.id, captured_at: Time.now, type: d1.dtype, fdata: f)
end

[35, 50, 55].each do |f|
  d2.sensor_data.create(sensor_id: d2.sensors.first.id, captured_at: Time.now, type: d2.dtype, idata: f)
end

s3 = m1.sensors.create(name: 'VAL99')
s3.data_types.create(name: '電圧', dtype: :IntDatum)