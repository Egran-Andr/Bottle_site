from typing import ValuesView
from bottle import post, request

import json
import re
import pdb

@post('/home', method='post')
def my_form():
    regex = r'[0-9a-zA-Z\_]{1,64}\@[a-zA-Z]{1,256}\.[a-zA-Z]{1,12}'
    #regex = r"\+7\s\(\d{3}\)\s\d{3}\-\d{2}\-\d{2}"
    if request.forms.get('ADRESS') != "" and request.forms.get('QUEST') != "":
        mail = request.forms.get('ADRESS')
        if re.fullmatch(regex, mail) == None:
            return "Invalid mail"
        else:
            #pdb.set_trace()
            questions = {}
            text = request.forms.get('QUEST')
            try:
                with open ('data.json', 'r', encoding='utf-8') as outfile:
                    questions = json.load(outfile)
            except FileNotFoundError:
                print("File not found")
            except:
                print("unknown problem")
            if mail in questions:
                questions[mail].append(text)
            else:
                questions[mail] = [text]
            with open('data.json', 'w', encoding='utf-8') as outfile:
                json.dump(questions, outfile, ensure_ascii=False ,indent = 0)
            return "Thanks! The answer will be sent to the mail %s" % mail
    else:
        return "Some fields are empty"
