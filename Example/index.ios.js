'use strict';

var React = require('react-native');
var BrightcovePlayer = require('react-native-brightcove-player');
var {
  AppRegistry,
  StyleSheet,
  Text,
  TouchableHighlight,
  View,
} = React;

var BrightcovePlayerExample = React.createClass({
  getInitialState() {
    return {
    };
  },

  render() {
    return (
      <View style={styles.container}>
        <BrightcovePlayer style={styles.player} />
      </View>
    );
  }
});

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    backgroundColor: 'rgb(43, 186, 180)',
  },
  player: {
    height: 300,
  }
});

AppRegistry.registerComponent('BrightcovePlayerExample', () => BrightcovePlayerExample);
