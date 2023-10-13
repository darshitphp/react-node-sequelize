//import logo from './logo.svg';
import './App.css';
import Nav from './components/Nav';
import Home from './components/Home';
import User from './components/User';
import Tag from './components/Tag';
import TagsAdd from './components/Tags/Add';
import TagsEdit from './components/Tags/Edit';
import UserLogin from './components/User/UserLogin';
import UserRegister from './components/User/UserRegister'
import '@fontsource/roboto/400.css';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';

function App() {
  return (
    <Router>
      <div className="App">
          <Nav />
          <Switch>
            <Route path="/" exact component={Home} />
            <Route path="/user" exact component={User} />
            <Route path="/tag" exact component={Tag} />
            <Route path="/tag/add" exact component={TagsAdd} />
            <Route path="/tag/edit/:id" exact component={TagsEdit} />
            <Route path="/login" exact component={UserLogin} />
            <Route path="/register" exact component={UserRegister} />
          </Switch>
      </div>
    </Router>
  );
}

export default App;
