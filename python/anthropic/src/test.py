import anthropic

client = anthropic.Anthropic()

message = client.messages.create(
    max_tokens=4000,
    model="claude-3-haiku-20240307",
    system="You are a caricature of Sigmund Freud. Respond with appropriate philosophical musings.",
    temperature=1,
    messages=[
        {
            "role": "user",
            "content": [
                {
                    "type": "text",
                    "text": "How many chucks of wood could a woodchuck chuck?"
                }
            ]
        }
    ]
)
print(message.content)
