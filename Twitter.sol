// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// 1️⃣ Create a Twitter Contract ✅
// 2️⃣ Create a mapping between user and tweet
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet
// 5️⃣ Add array of tweets

struct Tweet {
    address author;
    string content;
    uint timestamp;
    uint likes;
}

contract Twitter {
    uint16 public MAX_TWEET_LENGTH = 280;
    address owner;
    mapping(address => Tweet[]) public tweets;

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly() {
        require(msg.sender == owner, "You're not the Owner");
        _;
    }

    function changeTweetLimit(uint16 newLimit) external ownerOnly {
        MAX_TWEET_LENGTH = newLimit;
    }

    function createTweet(string memory _tweet) external {
        // restricting tweet length to 280 characters only
        require(bytes(_tweet).length <= MAX_TWEET_LENGTH, "Tweet is too long");

        tweets[msg.sender].push(Tweet(msg.sender, _tweet, block.timestamp, 0));
    }

    function getTweet(
        address _person,
        uint _number
    ) external view returns (Tweet memory) {
        return tweets[_person][_number];
    }

    function getTweets(address _person) external view returns (Tweet[] memory) {
        return tweets[_person];
    }

    function likeTweet(address _author, uint _tweet) external {
        tweets[_author][_tweet].likes++;
    }
}
