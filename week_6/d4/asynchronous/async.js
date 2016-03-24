// CUSTOMER 1
console.log('Can I order a latte please');
console.log('Ok, handle it to barista');

setTimeout(function latteReady() {
  console.log('Latte is ready, customer1!');
}, 4000);

// CUSTOMER 2 
console.log('Can I order an espresso');
console.log('Ok, handle it to barista');

setTimeout(function coffeeReady() {
  console.log('Coffee is ready, customer2!');
}, 2000);

function getTweetsAsync(callback) {
  // Go get tweets
  var tweets = 'These are tweets';
  callback(tweets);
}

var myTweets = null;
getTweetsAsync(function(tweets) {
  myTweets = tweets;
})

console.log(myTweets); // These are my tweets 
                       // if you put var before tweets in line 19 the result will be null