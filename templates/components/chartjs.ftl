[#-------------- ASSIGNMENTS --------------]
[#assign componentId = content.componentId!"chartjs-"+content.@id]
[#assign chartType = content.chartType!'bar']

[#assign placeholderData]
{
    labels: ["Ginger", "Oatmeal Rasin", "M&M", "Chocolate",  "Oreo", "Biscotti"],
    datasets: [{
        label: 'Cookie Monster',
        data: [2, 3, 10, 9, 2, 3],
        backgroundColor: "red"
    },
    {
        label: 'The Dude',
        data: [5, 7, 8, 3, 10, 5],
        backgroundColor: "blue"
    }
  ]
};
[/#assign]
[#assign chartData = cmsfn.decode(content).data!placeholderData]


[#-------------- RENDERING  --------------]

[#--Simple method to load required js.--]
[#--${resfn.js("/chartjs/webresources/js/.*js")}--]

<div class="chartjs">
  [#if content.title?has_content]
    <h2>${content.title!}</h2>
  [/#if]

  <canvas id="${componentId}" ></canvas>
</div>



<script>
var componentId = "${componentId}";
var chartType = "${chartType}";
var chartData = ${chartData};

var ctx = document.getElementById(componentId).getContext("2d");

var myChart = new Chart(ctx, {
    type: chartType,
    data: chartData,
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});

</script>
