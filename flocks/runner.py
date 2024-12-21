import os
from typing import Collection
from hashlib import sha256

# BUFFER_SIZE is totally arbitrary, change for your app!
BUFFER_SIZE = 65536  # lets read stuff in 64kb chunks!


class Runner:

    def __init__(self, files: Collection[str], tmp: str = '/tmp'):
        self.files = files
        self.tmp = tmp

    def compile(self, output_path: str):
        command = self.get_compile_command(self):

    @classmethod
    def get_hash(cls, file_path: str):
        hash_method = sha256()
        with open(file_path, 'rb') as f:
            while True:
                data = f.read(BUFFER_SIZE)
                if not data:
                    break
                hash_method.update(data)
        return hash_method.hexdigest()
