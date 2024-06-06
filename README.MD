# SwagLabsAutomation


## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Running Tests](#running-tests)
- [Test Scenarios](#test-scenarios)


## Introduction

This project automates test scenarios for the Swag Labs application using Robot Framework and Selenium Library with the Page Object Model (POM) design pattern. Using the Page Object Model (POM) with Robot Framework and the Selenium Library, we'll organize our tests and keywords into separate files representing different pages of the Swag Labs application. This structure helps keep the tests maintainable and scalable.

## Prerequisites

- Download and Install Python 3.x
- Install pip

## Installation

1. Clone the repository:
    ```bash
    git clone git@github.com:walialam015/swaglabsautomation-task.git
    cd SwagLabsAutomation
    ```

2. Install the required libraries:
    ```bash
    pip install robotframework
    pip install robotframework-seleniumlibrary
    pip install webdriver-manager
    ```

## Project Structure

SwagLabsAutomation/                                         
├── resources/                                              
│    ├──common.robot
│    └── PO/
│       ├── CartPage.robot
│       ├── CheckoutPage.robot
│       ├── FinishPage.robot
│       ├── InventoryPage.robot
│       └── LoginPage.robot
├── tests/
│   ├── test_locked_out_user.robot
│   ├── test_purchase.robot
│   ├── test_sort_products.robot
│   └── test_login_failure.robot
│
├── results/
├── README.MD
└── .gitignore


## Running Tests

1. Navigate to the project directory and execute the following command.
3. Run all the test suite:
    ```bash
    robot tests/test_purchase.robot
    ```
2. Run all the test suite:
    ```bash
    robot -d results tests
    ```

## Test Scenarios

### Customer Purchases Products

- **Given**: Standard customer is logged in.
- **When**: The customer adds multiple products to the shopping cart and proceeds to checkout.
- **Then**: Purchase is successful.

### Customer Sorts Product Items

- **Given**: Standard customer is logged in.
- **When**: The customer sorts available products in product view.
- **Then**: The products are ordered according to the chosen sort method.

### User Is Locked Out From The Platform

- **Given**: Customer is a locked out customer.
- **When**: The customer attempts to login using proper credentials.
- **Then**: Login fails and the customer is presented with an error state.
