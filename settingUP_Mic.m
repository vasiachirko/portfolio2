session = daq.createSession('directsound'); %����������� �������� �����
addAudioInputChannel(session,'Audio0',1,'Audio') %����� ���������� �� daq.getDevices()
session.DurationInSeconds = 0.5
session.Rate = 16000
data = startForeground(session);
Period = 1 / session.Rate; %