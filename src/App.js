import React, { useState, useEffect } from 'react';
import logo from './logo.svg';
import Sidebar from './Components/Sidebar'
import Profile from './Components/Profile'
import Projects from './Components/Projects'
import Experiences from './Components/Experiences'
import './styles/tailwind.css';
import './styles/App.css';
import "react-multi-carousel/lib/styles.css";
import Contacts from './Components/Contacts';

const useKeyPress = function(targetKey) {
  const [keyPressed, setKeyPressed] = useState(false);

  function downHandler({ key }) {
    if (key === targetKey) {
      setKeyPressed(true);
    }
  }

  const upHandler = ({ key }) => {
    if (key === targetKey) {
      setKeyPressed(false);
    }
  };

  React.useEffect(() => {
    window.addEventListener("keydown", downHandler);
    window.addEventListener("keyup", upHandler);

    return () => {
      window.removeEventListener("keydown", downHandler);
      window.removeEventListener("keyup", upHandler);
    };
  });

  return keyPressed;
};

const useHandleScroll = () => {
  const [pos, setPos] = useState({top: false, bottom: false});

  const checkPos = () => {
    setPos({
      top: window.pageYOffset === 0,
      bottom: Math.ceil(window.innerHeight + window.scrollY) >= document.documentElement.scrollHeight
    })
  }

  React.useEffect(() => {
    window.addEventListener('scroll', checkPos);

    return () => {
      window.removeEventListener('scroll', checkPos);
    };
  });

  return pos;
};



function App() {
  const [comp, setComp] = useState([<Profile/>, <Projects/>, <Experiences/>, <Contacts/>])
  const [posY, setPosY] = useState(0)
  const downPress = useKeyPress("ArrowDown");
  const upPress = useKeyPress("ArrowUp");
  const position = useHandleScroll();

  useEffect(() => {
    if ((posY+1 < comp.length) && downPress) {
      setPosY(posY+1)
    }
  }, [downPress]);

  useEffect(() => {
    if ((posY-1 >= 0) && upPress) {
      setPosY(posY-1)
    
    }
  }, [upPress]);
  return (
    <>
    <Sidebar active={posY} link={(num) => setPosY(num)}/>
    {comp[posY]}
    </>
  );
}

export default App;
