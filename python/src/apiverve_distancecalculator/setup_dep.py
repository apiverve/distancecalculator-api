from setuptools import setup, find_packages

setup(
    name='apiverve_distancecalculator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Distance Calculator computes the distance between two coordinate pairs in miles and kilometers. Supply two latitude and longitude points to receive distances and resolved city and state names for both locations.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/distancecalculator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
