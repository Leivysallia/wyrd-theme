import subprocess


def hello(world) -> str:
    return f"Hello {world}"


subprocess.call(["cls", "dir"])

output: str = hello("World")

print(output)
