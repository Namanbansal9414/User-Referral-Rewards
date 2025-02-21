# User-Referral-Rewards
# Referral Rewards Smart Contract

## Overview
This is a simple smart contract that implements a referral rewards program. Users can refer others and earn token rewards. The owner of the contract can update the reward amount.

## Features
- Users can refer a new address and receive token rewards.
- Each address can only refer once.
- The owner can update the reward amount.

## Deployed Address
- **Network**: Edu Chain
- **Contract Address**: `0x2e3c6743235Df5C59C1B9F914442899818A1E829`

## How It Works
1. A user calls the `refer` function with a valid referee address.
2. The contract verifies that the user has not referred before.
3. If valid, the referrer receives a fixed reward.
4. The owner can adjust the reward amount using `updateReward`.

## License
This project is open-source and free to use.

