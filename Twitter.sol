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
    mapping(address => Tweet[]) public tweets;

    function createTweet(string memory _tweet) external {
        tweets[msg.sender].push(Tweet(msg.sender, _tweet, block.timestamp, 0));
    }

    function getTweet(
        address _person,
        uint _number
    ) external view returns (Tweet memory) {
        return tweets[_person][_number];
    }

    function likeTweet(address _author, uint _tweet) external {
        tweets[_author][_tweet].likes++;
    }

    function getTweets(address _person) external view returns (Tweet[] memory) {
        return tweets[_person];
    }
}
