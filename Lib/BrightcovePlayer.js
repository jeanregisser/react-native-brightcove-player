'use strict';

var React = require('react-native');
var {
  PropTypes,
  StyleSheet,
  Text,
  TouchableWithoutFeedback,
  View,
  requireNativeComponent
} = React;

var BrightcovePlayer = React.createClass({
  propTypes: {
    videos: PropTypes.array,
    autoAdvance: PropTypes.bool,
    autoPlay: PropTypes.bool,
  },
  getDefaultProps() {
    return {
      autoAdvance: true,
      autoPlay: true,
    };
  },
  render() {
    return (<RCTBrightcovePlayer {...this.props} />);
  }
});

var RCTBrightcovePlayer = requireNativeComponent('RCTBrightcovePlayer', BrightcovePlayer);

var DefaultStyles = StyleSheet.create({
  container: {
  },
});

module.exports = BrightcovePlayer;