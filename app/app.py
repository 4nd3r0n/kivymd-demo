from kivymd.app import MDApp
from kivy.lang import Builder

from yt_dlp import YoutubeDL

class Main(MDApp):
    def build(self):
        self.theme_cls.theme_style = "Dark"
        self.theme_cls.primary_palette = "Navy"
        self.url_text=""

        return Builder.load_file("app/app.kv")

    def download_yt(self):
        url = self.url_text.strip()

        try:
            with YoutubeDL() as ydl:
                ydl.download(url)

        except Exception as e:
            print(e)
