<template>
  <svg
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   version="1.1"
   id="svg2"
   width="350"
   height="350"
   viewBox="0 0 512 512"
   sodipodi:docname="satoshi logo favicon.svg"
   inkscape:version="0.92.4 (5da689c313, 2019-01-14)"
   inkscape:export-filename="~/Downloads/satoshi_512x512.png"
   inkscape:export-xdpi="96"
   inkscape:export-ydpi="96">
  <metadata
     id="metadata8">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title />
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <defs
     id="defs6" />
  <sodipodi:namedview
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1"
     objecttolerance="10"
     gridtolerance="10"
     guidetolerance="10"
     inkscape:pageopacity="0"
     inkscape:pageshadow="2"
     inkscape:window-width="1920"
     inkscape:window-height="1080"
     id="namedview4"
     showgrid="false"
     inkscape:zoom="1.4142136"
     inkscape:cx="340.16121"
     inkscape:cy="251.31995"
     inkscape:window-x="0"
     inkscape:window-y="-20"
     inkscape:window-maximized="0"
     inkscape:current-layer="layer2" />
  <g
     inkscape:groupmode="layer"
     id="layer1"
     inkscape:label="orange circle"
     transform="translate(0,-33.454529)">
    <circle
       style="opacity:0.98000004;fill:#f7931a;fill-opacity:1;stroke:#f7931a;
       stroke-width:3.02362204;stroke-linejoin:round;stroke-miterlimit:4;
       stroke-dasharray:none;stroke-opacity:0.66666667;paint-order:markers fill stroke"
       id="path817"
       cy="289.45453"
       cx="256"
       r="254.48819" />
  </g>
  <g
     inkscape:groupmode="layer"
     id="layer2"
     inkscape:label="squares">
    <rect
       style="opacity:1;fill:#ffffff;fill-opacity:1;stroke:#ffffff;
       stroke-width:15.00001211;stroke-linejoin:round;stroke-miterlimit:4;
       stroke-dasharray:none;stroke-opacity:1;paint-order:markers fill stroke"
       id="rect834"
       width="175.78433"
       height="1.3564007"
       x="217.20918"
       y="228.49844"
       transform="matrix(0.49922027,0.86647512,0.86557499,-0.50077933,0,0)" />
    <rect
       style="opacity:1;fill:#ffffff;fill-opacity:1;stroke:#ffffff;
       stroke-width:15.00001211;stroke-linejoin:round;stroke-miterlimit:4;
       stroke-dasharray:none;stroke-opacity:1;paint-order:markers fill stroke"
       id="rect834-3"
       width="175.78433"
       height="1.3564007"
       x="217.20918"
       y="49.727348"
       transform="matrix(0.49922027,0.86647512,0.86557499,-0.50077933,0,0)" />
    <rect
       style="opacity:1;fill:#ffffff;fill-opacity:1;stroke:#ffffff;
       stroke-width:15.00001211;stroke-linejoin:round;stroke-miterlimit:4;
       stroke-dasharray:none;stroke-opacity:1;paint-order:markers fill stroke"
       id="rect834-3-6"
       width="176.77202"
       height="1.3564007"
       x="-229.85486"
       y="217.20918"
       transform="matrix(-0.86557499,0.50077933,0.49922027,0.86647512,0,0)" />
    <rect
       style="opacity:1;fill:#ffffff;fill-opacity:1;stroke:#ffffff;
       stroke-width:15.00001211;stroke-linejoin:round;stroke-miterlimit:4;
       stroke-dasharray:none;stroke-opacity:1;paint-order:markers fill stroke"
       id="rect834-5"
       width="175.78433"
       height="1.3564007"
       x="-482.37906"
       y="40.474709"
       transform="matrix(-0.49922027,-0.86647512,-0.86557499,0.50077933,0,0)" />
    <rect
       style="opacity:1;fill:#ffffff;fill-opacity:1;stroke:#ffffff;
       stroke-width:15.00001211;stroke-linejoin:round;stroke-miterlimit:4;
       stroke-dasharray:none;stroke-opacity:1;paint-order:markers fill stroke"
       id="rect834-3-3"
       width="175.78433"
       height="1.3564007"
       x="-482.37906"
       y="-138.29639"
       transform="matrix(-0.49922027,-0.86647512,-0.86557499,0.50077933,0,0)" />
    <rect
       style="opacity:1;fill:#ffffff;fill-opacity:1;stroke:#ffffff;
       stroke-width:15.00001211;stroke-linejoin:round;stroke-miterlimit:4;
       stroke-dasharray:none;stroke-opacity:1;paint-order:markers fill stroke"
       id="rect834-3-6-5"
       width="176.77202"
       height="1.3564007"
       x="-41.831116"
       y="-482.37906"
       transform="matrix(0.86557499,-0.50077933,-0.49922027,-0.86647512,0,0)" />
  </g>
</svg>
</template>

<script>
import { useRoute } from 'vue-router';
import { ref, watch } from 'vue';

const defaultPath = 'm 8.0702 38.505 v -10.574 l -7.938 -6.609 v -10.575 l 7.938 -10.574 7.9371 10.574 v 10.575 l -4.0165 3.3045';

export default {
  setup() {
    const route = useRoute();
    const path = ref(defaultPath);
    const width = ref(1.6);
    if (route.query.v === '2') {
      path.value = 'm 16.15 20.5 l -8 -8 l -8 8 l 8 8';
      width.value = 0.5;
    }
    watch(() => route.query, () => window.location.reload());
    return { path, width };
  },
};
</script>

<style scoped>
@keyframes dash {
  to {
    stroke-dashoffset: 0;
  }
}

.satoshi {
  width: 20vmin;
  max-height: 80vh;
  stroke-dasharray: 75;
  stroke-dashoffset: 75;
  animation: dash .7s linear forwards;
}
</style>
