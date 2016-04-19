var HeaderTab = React.createClass({
  render: function() {
    return (
      <div className="tab">
        <HeaderTabMenu></HeaderTabMenu>
      </div>
    );
  }
});

var HeaderTabMenu = React.createClass({
  render: function() {
    return (
      <div id="menu">
        <ul>
          <MenuLink classname="sta_on" href="#">
            状況表
          </MenuLink>
          <MenuLink classname="day_off" href="#">
            日表
          </MenuLink>
          <MenuLink classname="gra_off" href="#">
            グラフ
          </MenuLink>
          <MenuLink classname="mon_off" href="#">
            月表
          </MenuLink>
          <MenuLink classname="ele_off" href="#">
            要素別月表
          </MenuLink>
          <MenuLink classname="yea_off" href="#">
            年表
          </MenuLink>
        </ul>
        <MenuUpdate></MenuUpdate>
        <MenuLastDate></MenuLastDate>
      </div>
    );
  }
});

var MenuLink = React.createClass({
  render: function() {
    return (
      <li className={this.props.classname}><a href={this.props.href}>{this.props.children}</a></li>
    );
  }
});

var MenuUpdate = React.createClass({
  render: function() {
    return (
      <div id="update"></div>
    );
  }
});

var MenuLastDate = React.createClass({
  render: function() {
    return (
      <div id="lastdate">2015年12月29日 15時30分</div>
    );
  }
});

