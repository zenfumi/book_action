$('#table').bootstrapTable({
    columns: [{
    field: 'id',
    title: 'ID'
    }, {
    field: 'name',
    title: '商品名'
    }, {
    field: 'price',
    title: '価格'
    }],
    data: [{
    id: 1,
    name: 'りんご',
    price: '100'
    }, {
    id: 2,
    name: 'みかん',
    price: '150'
    }]
    })
