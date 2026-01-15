import yaml


def hello(world) -> str:
    return f"Hello {world}"


with open(".tests/config.yaml") as f:
    config = yaml.safe_load(f)

output: str = hello("World")

print("-------")
print(output)
