# 🚀 AstanaITAbzhapparovaGSE2331Token (ERC-20 Token)

This project implements a custom ERC-20 token named **AstanaITAbzhapparovaGSE2331Token** with the symbol **AITAGSE2331**. The token is created using the OpenZeppelin library and includes additional functionality to retrieve transaction information.

## 📁 Project Structure

```bash
assignment3/
├── Part1/
│   ├── AstanaITAbzhapparovaGSE2331Token.sol        # ERC-20 Token Contract
│   ├── README.md                                   # Documentation for Part 1
├── Part2/
│   ├── contracts/
│   │   └── AstanaITAbzhapparovaGSE2331Token.sol    # Modified Contract
│   ├── test/
│   │   └── AstanaITAbzhapparovaGSE2331Token.test.js # Test Cases
│   ├── README.md                                   # Documentation for Part 2
├── LICENSE                                         # MIT License
└── README.md                                       # This file
```
## 🛠️ Installation and Setup

### 1. Prerequisites
Before you start, make sure you have the following installed:

- Node.js (v16 or higher)
- Hardhat (for testing in Part 2)

### 2. Clone the Repository
To clone the repository, run the following commands:

```bash
git clone https://github.com/your-username/your-repository.git
cd your-repository
```
3. Install Dependencies (for Part 2)
Navigate to the Part2 folder and install the required dependencies:
bash
Копировать
Редактировать
cd Part2
npm install
## 📜 Contract Overview
**Contract:** `AstanaITAbzhapparovaGSE2331Token.sol`  
This contract implements an **ERC-20** token named has features:

Initial Supply: 2000 tokens are minted and sent to the contract owner upon deployment.
Transaction Information: Functions to retrieve the sender, receiver, and timestamp of the latest transaction.
## 🔑 Key Functions:
getLastTransactionTimestamp(): Returns the timestamp of the latest transaction in a human-readable format (YYYY-MM-DD HH:MM:SS).
getTransactionSender(): Returns the address of the transaction sender.
getTransactionReceiver(address to): Returns the address of the transaction receiver.
transfer(address to, uint256 amount): Transfers tokens to the specified address.
🧪 Testing (Part 2)
Running Tests
To run the tests for the modified contract in Part 2, navigate to the Part2 folder and execute:

bash
Копировать
Редактировать
npx hardhat test
Test Coverage
The tests cover the following scenarios:

Token Creation: Verifies that 2000 tokens are minted and sent to the owner.
Token Transfer: Ensures that tokens can be transferred between addresses.
Transaction Information: Checks that the sender, receiver, and timestamp are correctly retrieved.
Edge Cases: Ensures that the contract handles invalid transactions (e.g., insufficient balance).
📄 License
This project is licensed under the MIT License. See the LICENSE file for details.

🙏 Acknowledgments
OpenZeppelin for the ERC-20 template.
Hardhat for the testing framework.
📧 Contact
For questions or feedback, feel free to reach out:

Email: 231405@astanait.edu.kz
GitHub: Abzhapparova
