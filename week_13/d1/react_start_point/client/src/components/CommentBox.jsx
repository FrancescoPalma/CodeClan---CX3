var React = require('react');
var CommentList = require('./CommentList');
var CommentForm = require('./CommentForm');

var sampleData = [
  {
    id: 1,
    author: 'Rick Henry',
    text: 'CSS is cool'
  },
  {
    id: 2,
    author: 'Keith Douglas',
    text: 'Howdy'
  },
  {
    id: 3,
    author: 'Beth',
    text: 'Hellooooo'
  }
];

var CommentBox = React.createClass({
  getInitialState: function() {
    return {data: sampleData};
  },

  handleCommentSubmit: function(comment) {
    comment.id = Date.now();
    var newComments = this.state.data.concat([comment]);
    this.setState({data: newComments});
  },

  handleCommentDelete: function(id) {
    var filteredData = this.state.data.filter(function(comment) {
      return comment.id != id
    });
  },

  render: function() {
    return (
      <div>
        <h1>Comments</h1>
        <CommentList data={this.state.data} onCommentDelete={this.handleCommentDelete}/>
        <CommentForm onCommentSubmit={this.handleCommentSubmit} />
      </div>
    )
  }
})

module.exports = CommentBox;
