const observer = window.mobxReact.observer;
const observer = window.mobxReact.observer;

var crawl = 0;
var csv = [];
var all_websites = [];

window.download_csv = function download_csv() {
    let csvContent = "data:text/csv;charset=utf-8,";
    csv.forEach(function(rowArray){
       let row = rowArray.join(",");
       csvContent += row + "\r\n";
    }); 

    var encodedUri = encodeURI(csvContent);
    var link = document.createElement("a");
    link.setAttribute("href", encodedUri);
    link.setAttribute("download", "data.csv");
    document.body.appendChild(link);

    link.click(); 
}

//function RowUrl(props) {
//    var item = props.website.fields;
//    var chkName = 'checkbox_' + item.id;
//    var title = item.title ? item.title : item.uri;
//    console.log(title);
//    return (
//        <tr>
//            <td>
//                <input id={chkName} name={chkName} type="checkbox" onChange={props.onCheck} />
//            </td>
//            <td>
//                <a href={item.uri}>{title}</a>{item.meta_desc}
//            </td>
//        </tr>
//    );
//}



var RowUrl = React.createClass({
    handleCheckbox: function(item) {
        console.log(item);
        var x = [];
        x.push(item.title);
        x.push(item.uri);
        x.push(item.meta_desc);
        console.log(x);
        csv.push(x);
    },
    render: function() {
        var item = this.props.website.fields;
        var chkName = 'checkbox_' + item.id;
        var title = item.title ? item.title : item.uri;
        console.log(title);
        return (
            <tr>
                <td>
                    <input id={chkName} name={chkName} type="checkbox" 
                        onChange={() => this.handleCheckbox(item)} />
                </td>
                <td>
                    <a href={item.uri}>{title}</a>{item.meta_desc}
                </td>
            </tr>
        );
    }
});

var WebsiteView = observer(React.createClass({
    displayName: "WebsiteView",
    getInitialState: function() {
        return {ticks: 0, websites: [], csv: []};
    },
    tick: function() {
        if (crawl > 0) {
            if (this.state.ticks > 30) {
                crawl = 0;
            }
            var self = this;
            const websites = axios.get('search-results')
                .then(function (response) {
                    console.log(response.data);
                    if (response.data.hasOwnProperty('status')) {
                        crawl = 0;
                        self.setState({ticks: 0});
                        all_websites = self.state.websites;
                    } else {
                        self.setState({websites: response.data, ticks: self.state.ticks + 1});
                    }
                })
                .catch(function (error) {
                    console.log(error);
                    // self.setState({ticks: 0});
                });
        }
    },
    componentDidMount: function() {
        this.show_more_results = false;
        this.interval = setInterval(this.tick, 2400);
    },
    componentWillUnmount: function() {
        clearInterval(this.interval);
    },
    showMore: function() {
        this.show_more_results = true;
        if (crawl == 0) {
            this.setState({ticks: 0});
        }
    },
    render: function() {
        console.log('total_rows='+this.state.websites.length);
        $('#total-items').text(this.state.websites.length+' items');
        var rows = [];
        for (var i=0; i < this.state.websites.length; i++) {
            console.log('i=='+ i);
            var website = this.state.websites[i];
            console.log(website);

            if (this.show_more_results == true) {
                rows.push(<RowUrl website={website} onCheck={this.handleCheckbox(website)} />);
            } else {
                if (i == 10) {
                    rows.push(
                        <li className="media">
                            <h5 className="media-heading">
                                <button onClick={this.showMore}>More...</button>
                            </h5>
                        </li>);
                } else if (i < 10) {
                    rows.push(
                        <RowUrl website={website} />);
                }
            }
            console.log(rows);
        }

        return (
            <table class=".table .table-bordered .table-striped">
                <tr>
                    <th>Select</th>
                    <th>Title</th>
                </tr>
                {rows}
            </table>
        );
    }
}));

$('.checkbox').change(function(e) {
    websites = [];
    for (var i; i<len(all_websites); i++) {
        website = all_websites[i];
        websites.push(website);
    }
    App.
});

$("#search-form").submit(function(event) {
    event.preventDefault();
    var keyword = document.getElementById('keyword').value.replace(' ', '+');
    const websites = axios.get('crawl?keyword='+keyword)
        .then(function (response) {
            console.log(response);
            crawl = parseInt(response.data.crawl);
        })
        .catch(function (error) {
            console.log(error);
        });
    ReactDOM.render(<WebsiteView />, document.getElementById('reactAppWebsites'));
});
