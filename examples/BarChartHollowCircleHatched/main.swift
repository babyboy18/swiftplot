import SwiftPlot
import AGGRenderer
import SVGRenderer

var filePath = "examples/Reference/"
let fileName = "_15_bar_chart_hollow_circle_hatched"

let x:[String] = ["2008","2009","2010","2011"]
let y:[Float] = [320,-100,420,500]

var agg_renderer = AGGRenderer()
var svg_renderer = SVGRenderer()

var plotTitle = PlotTitle()

var barGraph = BarGraph()
barGraph.addSeries(x, y, label: "Plot 1", color: .orange, hatchPattern: .hollowCircle)
barGraph.plotTitle = PlotTitle("HATCHED BAR CHART")
barGraph.plotLabel = PlotLabel(xLabel: "X-AXIS", yLabel: "Y-AXIS")

barGraph.drawGraphAndOutput(fileName: filePath+"agg/"+fileName, renderer: agg_renderer)
barGraph.drawGraphAndOutput(fileName: filePath+"svg/"+fileName, renderer: svg_renderer)