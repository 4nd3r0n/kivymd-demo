from kivy.lang import Builder
from kivymd.app import MDApp

class Main(MDApp):
    def build(self):
        self.theme_cls.theme_style = "Dark"
        self.theme_cls.primary_palette = "Blue"
        return Builder.load_file("app/app.kv")
