$('#content').hide();
$('#searchButton').on('click', searchItems);

function searchItems() {
    let query = $('#search').val();
    $.get('/items?q=' + query, (data) => {
        console.log(JSON.stringify(data));
        changeVisibility(data.length > 0 );
        loadItems(data);        
    })
}

function changeVisibility(data) {
    $('#content').show();
    if (data) {
        $('#notfound').hide();
        $('#results').show();        
    } else {
        $('#notfound').show();
        $('#results').hide();
    }
}

function loadItems(data){
    let items = '';    
    for(i in data){
        let item = data[i];
        items += '<li class="collection-item ">'+item.features+' <span class="type">'+item.type+'</span> <span class="brand">'+item.brand+'</span></li>';
    }    
    $('#results').html(items);
}


