var React = require('react');

var Comment = React.createClass({
  handleDelete: function() {
    console.log('delete button clicked', this.props);
    this.props.onCommentDelete(this.props.id);
  },

  render: function() {
    return (
      <div>
        <h4>{this.props.author}</h4>
        {this.props.children}
        <button onClick={this.handleDelete}>Delete</button>
      </div>
    )
  }
});

module.exports = Comment;
