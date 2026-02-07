# Simple ERC-20 Token (Foundry)

This repository contains a high-quality, audited-standard implementation of an ERC-20 token using Solidity. It leverages the industry-standard OpenZeppelin library to ensure security and reliability.

## Features
* **ERC-20 Compliant**: Fully compatible with wallets like MetaMask and decentralized exchanges like Uniswap.
* **OpenZeppelin Standards**: Built using `ERC20.sol` for robust security.
* **Foundry Ready**: Designed for lightning-fast testing and deployment.

## Getting Started
1. Install Foundry: `curl -L https://foundry.paradigm.xyz | bash`
2. Build the project: `forge build`
3. Run tests: `forge test`

## Deployment
To deploy to a network, use:
`forge create --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> MyToken.sol:MyToken`
