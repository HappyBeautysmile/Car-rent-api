import React, { useState, useEffect, useRef } from "react";
import connection from "../../connection";
import Comment from "./Comment";
import Pagination from "../Pagination";
import PropTypes from "prop-types";

const initialData = Object.freeze({
  description: "",
});

const Comments = ({ slug }) => {
  const [commentsList, setCommentsList] = useState([]);
  const [currentPage, setCurrentPage] = useState(0);
  const [formData, setFormData] = useState(initialData);
  const [commentCreated, setCommentCreated] = useState(false);
  const [countdown, setCountdown] = useState(0);
  const [error, setError] = useState({});
  const textarea = useRef();

  const commentsPerPage = 6;
  const maxComments = commentsList.length / commentsPerPage;

  useEffect(() => {
    setError({});
    setCommentCreated(false);
    connection
      .get(`comments/${slug}/`)
      .then((res) => setCommentsList(res.data))
      .catch((err) => console.log(err.message));
  }, [commentCreated]);

  useEffect(() => {
    const tooManyRequests = error["Too Many Requests"];

    if (tooManyRequests) {
      setCountdown(parseInt(tooManyRequests.split(" ")[2], 10));
    }
  }, [error]);

  useEffect(() => {
    if (countdown > 0) {
      let timer = setTimeout(() => setCountdown(countdown - 1), 1000);
      return () => clearTimeout(timer);
    }
  }, [countdown]);

  // Make textarea scalable
  const handleChange = (e) => {
    (e.target.style.height = "inherit"),
      (e.target.style.height = `${e.target.scrollHeight}px`),
      setFormData({
        ...formData,
        [e.target.name]: e.target.value.trim(),
      });
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    connection
      .post(`comments/${slug}/send/`, {
        description: formData.description,
      })
      .then(() => {
        setCommentCreated(true);
        setFormData(initialData);
        textarea.current.value = "";
      })
      .catch((err) => {
        setError(err.response.data);
      });
  };

  return (
    <>
      {countdown > 0 && (
        <p className="comment-countdown">
          Please wait {countdown} seconds before posting another comment.
        </p>
      )}
      <>
        <form className="comment-form" onSubmit={handleSubmit} noValidate>
          <label htmlFor="description">
            {error.description && <span className="invalid-value">{error.description}</span>}
            {error.detail && (
              <span className="invalid-value">{error.detail}</span>
            )}
          </label>
          <textarea
            id="description"
            name="description"
            ref={textarea}
            onChange={handleChange}
            placeholder="Write your own comment here..."
            maxLength="255"
            rows={4}
            style={
              error.description || countdown
                ? { borderColor: "var(--danger)" }
                : { borderColor: "var(--secondary)" }
            }
          />
          <p className="info">{formData.description.length} / 255</p>
          <button className="animated-button" type="submit" style={{borderRadius:"5px" ,padding:"0:30px",width:"200px"}}>
            <span>
              <strong>Rent</strong>
            </span>
          </button>
        </form>
      </>

      <div className="comments">
        {commentsList.length === 0 && (
          <h1 className="error">No comments yet</h1>
        )}
        {commentsList
          .slice(
            currentPage * commentsPerPage,
            currentPage * commentsPerPage + commentsPerPage
          )
          .map((comment) => {
            return <Comment key={comment.id} values={comment} />;
          })}
      </div>
      <Pagination
        page={currentPage}
        maxPages={maxComments}
        handleChange={setCurrentPage}
      />
    </>
  );
};

Comments.propTypes = {
  slug: PropTypes.string,
};

export default Comments;
