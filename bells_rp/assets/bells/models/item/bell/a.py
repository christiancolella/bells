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

for i in range(25):
    texture = "bells:item/bell/" + str(i)

    content = {
        "parent": "minecraft:item/generated",
        "textures": {
            "layer0": "bells:item/bell/0"
        }
    }
    content.get("textures").update({"layer0": texture})

    with open(directory + str(i) + ".json", "w") as outfile:
        s = json_string(json.dumps(content, indent=4))
        outfile.write(s.compress(number_array).compress(face))

