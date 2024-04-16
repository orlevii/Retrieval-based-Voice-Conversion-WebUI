import os

c.NotebookApp.allow_origin = '*'
c.NotebookApp.port = 8888
c.NotebookApp.token = ''
c.NotebookApp.password = u''
c.ServerApp.allow_root = True

c.NotebookApp.open_browser = False
c.NotebookApp.allow_remote_access = True
c.NotebookApp.trust_xheaders = True
c.NotebookApp.ip = '0.0.0.0'
c.ServerApp.base_url = os.gerenv('NOTEBOOK_BASE_URL', '/')
c.NotebookApp.default_url = os.gerenv('NOTEBOOK_BASE_URL', '/')
