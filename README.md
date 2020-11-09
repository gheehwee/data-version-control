# Data Version Control Template

Using [DVC](https://dvc.org) to:
- track and version our datasets and models
- share a development server/resource
- create reproducibe machine learning experiments


To start new experiment named "bacteria"
```bash
$ git clone https://github.com/gheehwee/data-version-control.git bacteria
$ cd bacteria
```

Folder structure:
```bash
$ tree bacteria
bacteria
├── LICENSE
├── README.md
├── data
│   ├── prepared
│   └── raw
├── metrics
├── model
└── src
    ├── evaluate.py
    ├── prepare.py
    └── train.py
```

Breakdown:
1. `src/` for source code
2. `data/` for all versions of the dataset
3. `data/raw` for data obtained from external sources
4. `data/prepared/` for data modified internally
5. `model/` for machine learning models
6. `data/metrics` for tracking performance metrics of models

The `src/` folder has three sample python files:
1. `prepare.py` to prepare data for training.
1. `train.py` to train a machine learning model.
1. `evaluate.py` to evaluate the results of a model.

## Basic DVC Workflow

### Bring in Raw Data

Download the raw datasets and place them within `data/raw` .e.g. https://realpython.com/python-data-version-control/#set-up-your-working-environment.
If the datasets are already version controlled with DVC, we can pull them in too (TODO).

### 


## Acknowledgements

https://realpython.com/python-data-version-control/

Forked from https://github.com/realpython/data-version-control

Original README:

### Data Version Control Tutorial

Example repository for the [Data Version Control With Python and DVC](https://realpython.com/python-data-version-control/) article on [Real Python](https://realpython.com/).

To use this repo as part of the tutorial, you first need to get your own copy. Click the _Fork_ button in the top-right corner of the screen, and select your private account in the window that pops up. GitHub will create a forked copy of the repository under your account.

Clone the forked repository to your computer with the `git clone` command

```console
git clone git@github.com:YourUsername/data-version-control.git
```

Make sure to replace `YourUsername` in the above command with your actual GitHub username.

Happy coding!
