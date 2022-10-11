import React from "react";
import PropTypes from "prop-types";

const Tags = ({ values }) => {
  return (
    <div className="tags">
       <p style={{fontSize:"30px"}}> Type:
      {values.map((value) => {
        return (
           <span className="tag" key={value.id}>
            {value.name}
          </span>
        );
      })}
      </p>
    </div>
  );
};

Tags.propTypes = {
  values: PropTypes.array,
};

export default Tags;
