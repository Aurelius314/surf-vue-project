# import gradio as gr

# def greet(name):
#     return f"Hello, {name}!"

# interface = gr.Interface(fn=greet, inputs="text", outputs="text")
# interface.launch(share=True)

import gradio as gr  

def greet(name):  
    return f"Hello, {name}! Welcome to the chat!"  

interface = gr.Interface(fn=greet, inputs="text", outputs="text")  
interface.launch(share=True, server_name="127.0.0.1", server_port=7861)