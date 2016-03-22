var waterBottle = {
  volume: 0,
  minVolume: 0,
  maxVolume: 100,
  fill: function() {
    var x = this.volume;
    while(x < this.maxVolume) {
      x++;
      console.log(x);
    }
  return(x);
  },
  drink: function() {
    var y = this.volume;
    var z = this.volume - 10;
    if (this.volume >= 10) {
      while(y > z) {
        y -= 1;
        console.log(y);
      }
    return(y);
    } else {
      return 0;
    }
  },
  empty: function() {
    if (this.volume > 0){
      this.volume = this.minVolume;
    }
    return this.volume;
  }
};

module.exports = waterBottle;