import sys
import wave
import contextlib
from pydub import AudioSegment
from pydub.silence import split_on_silence
import datetime
import time

import speech_recognition as sr
r = sr.Recognizer()
#sound_file = AudioSegment.from_wav("./ca.wav")
sound_file = AudioSegment.from_wav(sys.argv[1])
dBFS = sound_file.dBFS
audio_chunks = split_on_silence(sound_file,
    # must be silent for at least half a second
    # min_silence_len=100,
    min_silence_len=500,

    # consider it silent if quieter than -16 dBFS
    silence_thresh=dBFS-16
)
#print(list(enumerate(audio_chunks)), "\n")
#print(audio_chunks) 
timestamp = 0
for i, chunk in enumerate(audio_chunks):

   # out_file = "./chunk{0}.wav".format(i)
    out_file = "./chunk{0:05d}.wav".format(i)
    chunk.export(out_file, format="wav")
    ######
    with contextlib.closing(wave.open(out_file,'r')) as f:
      frames = f.getnframes()
      rate   = f.getframerate()
      duration = frames / float(rate)
      print(time.strftime('%H:%M:%S', time.gmtime(timestamp)))
      timestamp += duration

    with sr.AudioFile(out_file) as source:
      audio_text = r.listen(source)
      try:
# https://cloud.google.com/speech-to-text/docs/languages
        text = r.recognize_google(audio_text,language="zh")
#        text = r.recognize_google(audio_text,language="en-CA")
        print(text)
    

    #print ("exporting", out_file)
    #chunk.export(out_file, format="wav")
      except:
        pass

