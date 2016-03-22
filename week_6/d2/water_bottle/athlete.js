var athlete = {
  maxHydration: 150,
  hydration: 100,
  distanceCovered: 0,
  run: function(){
    var d = this.distanceCovered;
    var h = this.hydration;
      if (this.hydration > 0){
        while (h > 0){
          h -= 1;
          d += 1;
          console.log(h)
          console.log(d)
          }
        return(d);
      } else {
        console.log(this.distanceCovered)
        return this.distanceCovered;
      }
  },
  drink: function() {
    newHydration = this.hydration + 10;
    if (newHydration < this.maxHydration) {
      this.hydration = newHydration;
      return this.hydration;
    } else {
      this.hydration = this.maxHydration;
      return this.hydration;
    }
  }
};

module.exports = athlete;