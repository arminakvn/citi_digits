#!/usr/bin/env python
from setuptools import setup, find_packages

required_modules = [
    "django == 1.5.1",
    "selenium == 2.33.0",
    "mock == 1.0.1",
    # "south == 0.8.1",
    "MySQL-python",
    "PIL == 1.1.7",
    ""
    ]


setup(
    name="Citi Digits",
    version="0.1",
    description="",
    author="Vikash Dat",
    author_email="dat.vikash@gmail.com",
    packages=find_packages(exclude=['test']),
    install_requires=required_modules
)