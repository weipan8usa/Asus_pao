import sys
from pydub import AudioSegment
from pydub.silence import split_on_silence

import speech_recognition as sr

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
# print(list(enumerate(audio_chunks)), "\n")
for i, chunk in enumerate(audio_chunks):

   # out_file = "./chunk{0}.wav".format(i)
    out_file = "./chunk{0:05d}.wav".format(i)
    chunk.export(out_file, format="wav")
    ######
    r = sr.Recognizer()
    with sr.AudioFile(out_file) as source:
      audio_text = r.listen(source)
      try:
        text = r.recognize_google(audio_text,language="zh-TW")
        print(text)
    

    #print ("exporting", out_file)
    #chunk.export(out_file, format="wav")
      except:
        pass

