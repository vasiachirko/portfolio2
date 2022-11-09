session = daq.createSession('directsound'); %подключение звуковой карты
addAudioInputChannel(session,'Audio0',1,'Audio') %выбор устройства из daq.getDevices()
session.DurationInSeconds = 0.5
session.Rate = 16000
data = startForeground(session);
Period = 1 / session.Rate; %