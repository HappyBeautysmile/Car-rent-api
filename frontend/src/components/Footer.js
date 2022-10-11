import React from "react";
import { Link } from "react-router-dom";
import Socials from "./Socials";

const Footer = () => {
  return (
    <div className="footer">
      <footer>
        <div>
          Rachel@2022 by <a href="https://github.com/darkbear0121">DarkBear</a>
        </div>
        <Socials />
      </footer>
    </div>
  );
};

export default Footer;
