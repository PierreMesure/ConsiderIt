window.crossroadsSVG = (props) ->

  base_width = 199
  base_height = 155

  svg.setSize base_width, base_height, props

  fill_color = props.fill_color or 'black'
  style = props.style or {}

  SVG
    width: props.width 
    height: props.height
    viewBox: "0 0 #{base_width} #{base_height}" 
    version: "1.1" 
    xmlns: "http://www.w3.org/2000/svg" 
    style: style

    G
      strokeWidth: 1
      fill: fill_color
      transform: "translate(0.000000, -50)"

      PATH d: "M157.082609,74.123913 L115,94.95 L114.952174,62.9130435 L97.9021739,51.4108696 L86.8826087,61.0826087 L86.8826087,74.8956522 L27.9956522,50.3086957 L0.791304348,63.5 L14.076087,92.3347826 L69.8782609,111.423913 L86.8804348,117.215217 L86.8804348,196.01087 C88.3804348,196.402174 89.8804348,196.741304 91.4282609,196.928261 L91.4282609,117.508696 L94.5608696,113.547826 L94.5608696,197.363043 C96.1086957,197.515217 97.6543478,197.608696 99.25,197.608696 C104.808696,197.608696 110.165217,196.636957 115.091304,194.9 L115.091304,144.219565 L143.595652,130.747826 L143.595652,130.702174 L172.054348,117.217391 L190.508696,86.2521739 L157.082609,74.123913 L157.082609,74.123913 Z M91.4304348,62.9608696 L94.5630435,59.926087 L94.5630435,78.0891304 L91.4304348,76.7847826 L91.4304348,62.9608696 L91.4304348,62.9608696 Z M90.7043478,108.573913 L80.9478261,104.995652 L23.3065217,83.9826087 L13.3608696,62.573913 L28.1369565,55.326087 L87.6565217,80.2108696 L90.7043478,81.4630435 L90.7043478,108.573913 L90.7043478,108.573913 Z M161.13913,109.534783 L137.713043,120.604348 L99.1586957,138.767391 L99.1586957,108.034783 L110.028261,102.630435 L157.319565,79.1086957 L175.634783,85.9108696 L161.13913,109.534783 L161.13913,109.534783 Z"

