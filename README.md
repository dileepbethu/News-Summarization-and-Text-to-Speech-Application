# News-Summarization-and-Text-to-Speech-Application
## Overview 
This project is a News Summarization and Sentiment Analysis application that extracts news articles, summarizes them, performs sentiment analysis, and provides text-to-speech conversion in Hindi. The app is built using FastAPI, Streamlit, NLTK, LangChain MistralAI, and integrates with Google Translator.
## Features
- Fetch news from the web
- Summarize extracted news
- Perform sentiment analysis
- Extract keywords
- Convert summary to Hindi audio (TTS)
- Deployable on Hugging Face Spaces
## Tech Stack
- Backend: FastAPI
- Frontend: Streamlit
- NLP: NLTK, YAKE, LangChain MistralAI
- Translation: Deep Translator
- Text-to-Speech: gTTS
- Deployment: Hugging Face Spaces
## Installation
1. Clone the Repository
```bash
 git clone https://github.com/dileepbethu/News-Summarization-App.git 
cd News-Summarization-App
```

2. Create Virtual Environment
```bash
 python -m venv venv
source venv/bin/activate  # Mac/Linux
```
venv\Scripts\activate  # Windows
3. Install Dependencies
```bash
pip install -r requirements.txt
```
4. Set Up Environment Variables
Create a .env file and add:
```bash
MISTRAL_API_KEY=your_api_key
```
## Running the Application
1. Start FastAPI Backend
```bash
uvicorn api:app --host 0.0.0.0 --port 8000 --reload
```
2. Start Streamlit Frontend
```bash
streamlit run app.py
```
## Deploying on Hugging Face Spaces
Create a new space on Hugging Face (huggingface.co/spaces)
Select Streamlit as the SDK
Push the project to the created space:
git remote add hf https://huggingface.co/spaces/your-hf-space
git push hf main
