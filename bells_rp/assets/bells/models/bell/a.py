import re, os, json

# json text formatting
class json_string(str):
    def compress(self, pattern):
        s = str(self)
        for i in re.findall(pattern, s):
            compact = re.sub(r'(\n|\s)+', ' ' , i)
            s = s.replace(i, compact)
        return json_string(s)

number_array = r'\[\W*(?:-?\d+(?:\.?\d+)?\W*)+\]'
face = r'["](?:north|east|south|west|up|down)["]:\s\{(?:\n|.)*?\}'
predicate = r'\{\s["]predicate["]:(?:(?:\n|.)+?\}){2}'

directory = os.path.dirname(os.path.dirname(__file__)) + "/bell/"

from_scale = 2.0
to_scale = 1.2
n = 25

for i in range(n):
    scale = round(from_scale * (1 - i / n) + to_scale * i / n, 3)

    content = {
        "parent": "bells:bell/template_bell",
        "display": {
            "ground": {
                "rotation": [ 0, 0, 0 ],
                "translation": [ 0, 2, 0 ],
                "scale": [ 0.5, 0.5, 0.5 ]
            },
            "head": {
                "rotation": [ 0, 180, 0 ],
                "translation": [ 0, -6.4, 0 ],
                "scale": [ 2.0, 2.0, 2.0 ]
            },
            "thirdperson_righthand": {
                "rotation": [ 0, 0, 0 ],
                "translation": [ 0, 3, 1 ],
                "scale": [ 0.55, 0.55, 0.55 ]
            },
            "firstperson_righthand": {
                "rotation": [ 0, -90, 25 ],
                "translation": [ 1.13, 3.2, 1.13],
                "scale": [ 0.68, 0.68, 0.68 ]
            },
            "fixed": {
                "rotation": [ 0, 180, 0 ],
                "scale": [ 1, 1, 1 ]
            }
        }
    }
    content.get("display").get("head").update({"scale": [ scale, scale, scale ]})

    with open(directory + str(i) + ".json", "w") as outfile:
        s = json_string(json.dumps(content, indent=4))
        outfile.write(s.compress(number_array).compress(face))

