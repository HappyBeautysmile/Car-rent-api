import React from "react";
import { Link } from "react-router-dom";
import Tags from "./Tags";
import PropTypes from "prop-types";

const MinimalPost = (props) => {
  const date = new Date(props.created_at).toLocaleDateString();
  const imageArea ={
    width:"80%!important",
    margin:"0 20%"
  }
  return (
    <Link to={`/post/${props.slug}/`} style={imageArea}>
      <img src={props.thumbnail} style={{width:"80%!important"}}/>
      <span>{date}</span>
      <h2>{props.title}</h2>
      <span>
        by {props.author.first_name} {props.author.last_name}
      </span>
      <Tags values={props.tags} />
    </Link>
  );
};

MinimalPost.propTypes = {
  slug: PropTypes.string,
  thumbnail: PropTypes.string,
  title: PropTypes.string,
  created_at: PropTypes.string,
  tags: PropTypes.array,
  author: PropTypes.object,
};

export default MinimalPost;
