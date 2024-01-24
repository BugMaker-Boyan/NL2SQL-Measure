var option = {
    xAxis: {
        name: 'Average Token Number',
        type: 'value',
        nameLocation: 'middle', // 将名称位置设置在中间
        nameGap: 30, // 设置名称与轴线之间的距离
        // 可以在此处设置特定的刻度值
        min: 1600,
        max: 10000,
        nameTextStyle: {
          fontWeight: 'bold', // 加粗
          fontSize: 16        // 字号大小
        }
    },
    yAxis: {
        name: 'Execution Accuracy (%)',
        type: 'value',
        nameLocation: 'middle',
        nameGap: 50, // 对于Y轴，可能需要更大的间隙
        nameTextStyle: {
            rotate: 90 // 旋转90度，使其平行于Y轴
        },
        // 可以在此处设置特定的刻度值
        min: 81,
        max: 84,
        nameTextStyle: {
          fontWeight: 'bold', // 加粗
          fontSize: 16        // 字号大小
        }
    },
    series: [{
        type: 'scatter',
        symbolSize: 30,
        data: [
            [5702.07, 82.0, 'C3-SQL'],
            [9570.80, 82.8, 'DIN-SQL'],
            [1865.07, 83.1, 'DAIL-SQL'],
            [2221.53, 83.6, 'DAIL-SQL-SC']
        ],
        label: {
            show: true,
            formatter: function (param) {
                return param.data[2]; // 使用数据的第三个值作为标签
            },
            position: 'top',
            textStyle: {
                fontWeight: 'bold', // 加粗
                fontSize: 14      // 字号大小
            }
        },
    }]
};
