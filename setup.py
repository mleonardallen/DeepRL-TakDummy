from setuptools import setup

setup(
  name='tak_dummy',
  version='0.1',
  description='TAK - Dummy',
  url='https://github.com/mleonardallen/tak_dummy',
  author='Mike Allen',
  author_email='mikeleonardallen@gmail.com',
  license='GPL',
  scripts=['bin/tak-dummy'],
  install_requires=[
    'argparse',
    'gym',
    'tak_env'
  ],
  dependency_links=['https://github.com/mleonardallen/tak/tarball/master#egg=tak_env-0.1'],
  zip_safe=False
)