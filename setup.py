import os
from setuptools import setup


here = os.path.abspath(os.path.dirname(__file__))
# Get __version__ variable
exec(open(os.path.join(here, 'tools', '_version.py')).read())


setup(
    name="travis-deploy",
    version=__version__,  # NOQA
    url='https://github.com/disktnk/travis-deploy',
    author='disktnk',
    author_email='duaipp@gmail.com',
    description='Travis deploy test',
    long_description='Test automatically deploy via Travis CI',
    packages=['tools'],
    install_requires='',
    license="MIT License"
)
