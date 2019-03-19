let Player = {
  player: null,

  init(domId, playerId, onReady){
    window.unYoutubeIframeAPIReady = () => {
      this.onIframeReady(domId, playerId, onReady)
    }
    let youtubeScriptTab = document.createElement("script")
    youtubeScriptTab.src = "//www.youtube.com/iframe_api"
    document.head.appendChild(youtubeScriptTab)
  },
  onIframeReady(domId, playerId, onReady){
    this.player = new YT.Player(domId, {
      height: "360",
      width: "420",
      videoId: playerId,
      events: {
        "onReady": (event => onReady(event) ),
        "onStateChange": (event => this.onPlayerStateChange(event) )
      }
    })
  },
  onPlayerStateChange(event) { },
  getCurrentTime() {  return Math.floor(this.player.getCurrentTime() * 1000) },
  seekTo(millsec) {  return this.player.seekTo(millsec / 1000) }
}
export default Player
