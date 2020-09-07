$("#posttest").click(function() {
    date = 2020
    $.ajax({
        type: 'POST',
        url: '/scatterdata',
        datatype: 'json',
        data: JSON.stringify(date),
        contentType:"application/json",
        success: function(data){
            getScatterData(data);
        }
    });
});

function getScatterData(data){
    console.log(data)
    data.forEach(function(data){
        data[2]=+data[2]
        data[5]=+data[5]
        data[10]=+data[10]
    });    
    x_axis=data.map(function(row){
        return row[2]

    });
    console.log(data)
    console.log(x_axis)
    // var year= 2020;
    // var filter_data=data.filter(function(row){
    //     return row.year===year

    // });
    x_axis=data.map(function(row){
        return row[5]

    });

    y_axis=data.map(function(row){
        return row[2]
    });

    var region=data.map(function(row){
        return row[1]
    });

// console.log(data.length)
    var trace1 = {
        x: x_axis,
        y: y_axis,
        type: "scatter",
        mode: "markers",
        marker:{
            size:20,
        },
        transforms: [{
            type: 'groupby',
            groups: region,
            styles:[
                {target: 'Central and Eastern Europe', value: {marker: {color: 'rgb(71,212,196'}}},
                {target: 'Western Europe', value: {marker: {color: 'rgb(152,222,243'}}},
                {target: 'Latin America and Caribbean', value: {marker: {color: 'rgb(243,99,177'}}},
                {target: 'North America', value: {marker: {color: 'rgb(255,218,193'}}},
                {target: 'Middle East and North Africa', value: {marker: {color: 'rgb(178,67,182)'}}},
                {target: 'Eastern Asia', value: {marker: {color: 'rgb(253,191,59'}}},
                {target: 'Southeast Asia', value: {marker: {color: 'rgb(159,228,129'}}},
                {target: 'Australia and New Zealand', value: {marker: {color: 'rgb(250,175,165'}}},
                {target: 'Commonwealth of Independent States', value: {marker: {color: 'rgb(220,149,221'}}},
                {target: 'Sub-Saharan Africa', value: {marker: {color: 'rgb(247,245,112'}}}
      
                
            ]
          }]
      };

  var layout = {
    title: "Health Life Expectancy v. Happiness Rating 2016-2020",
    font:{
        family: 'Courier New', 
        size:16,
    },
    yaxis: { title: "Happiness Rating"},
        font:{
            family:'Courier New',
            size:12
        },
    xaxis: { title: "Health Life Expectancy"},
        font: {
            family: 'Courier New',
            size:12,
        }
  };

  Plotly.newPlot("plot", [trace1],layout);
    
    
};