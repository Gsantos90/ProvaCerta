file_path = r"c:\Users\Pcgamer\Desktop\Novo projeto IA\Projeto estudo\src\main.jsx"
with open(file_path, "r", encoding="utf-8") as f:
    content = f.read()

removals = []

# 1. Remove const questions = [...] (2025-1 questions array)
start1 = "\nconst questions = ["
end1_marker = "\nconst questionsDay2 = ["
if start1 in content and end1_marker in content:
    i = content.index(start1)
    j = content.index(end1_marker)
    removals.append(f"Removing 'const questions': chars {i}..{j}")
    content = content[:i] + content[j:]
else:
    removals.append("NOT FOUND: const questions block")

# 2. Remove const questionsDay2 = [...] and all 2025 text constants up to const text2024Day1One
start2 = "\nconst questionsDay2 = ["
end2_marker = "\nconst text2024Day1One = "
if start2 in content and end2_marker in content:
    i = content.index(start2)
    j = content.index(end2_marker)
    removals.append(f"Removing 'const questionsDay2' + text constants: chars {i}..{j}")
    content = content[:i] + content[j:]
else:
    removals.append("NOT FOUND: const questionsDay2 + text constants block")

with open(file_path, "w", encoding="utf-8") as f:
    f.write(content)

for r in removals:
    print(r)
print("Done.")
