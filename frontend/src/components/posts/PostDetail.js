import React, { Suspense, useState, useEffect } from "react";

import { useLocation } from "react-router-dom";
import moment from "moment";
import NotFound from "../errors/NotFound";
import Tags from "./Tags";
import connection from "../../connection";
import DatePicker ,{ registerLocale } from "react-datepicker";
import ro from 'date-fns/locale/ro';
registerLocale('ro', ro)

const Comments = React.lazy(() => import("../comments/Comments"));

const PostDetail = () => {
  const [post, setPost] = useState({});
  const [state, setState] = useState("loading");
  const location = useLocation();
  const slug = location.pathname.split("/")[2];
  const [startDate, setStartDate] = useState(new Date());
  const [endDate, setEndDate] = useState(new Date() );
  useEffect(() => {
    connection
      .get(`posts/${slug}/`)
      .then((res) => {
        setPost(res.data);
        setState("loaded");
      })
      .catch((err) => {
        console.log(err.message);
        setState("error");
      });
  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();
    if(startDate >= endDate)
    {
      alert("please choose date correctly!");
    }
    else{

    }
    connection
      .post(`comments/${slug}/send/`, {
        description: "Yeah, That's it!",
      })
      .then(() => {
      })
      .catch((err) => {
        setError(err.response.data);
      });
  };

  const formatDate = (date) => {
    return moment(date).fromNow();
  };

  if (state === "error") {
    return <NotFound />;
  }

  if (state === "loading") {
    return null;
  }
  return (
    <div className="post">
      <img src={post.thumbnail}  style={{width:"100%" ,height:"100%"}}/>
      <h1>{post.title}</h1>
        <Tags values={post.tags} />
      <h3>per day from : <span style={{color:"blue"}}>$ 50 *</span></h3>
      <div className="post-info">
        <img src={post.author.avatar} className="avatar-medium" />
        <p>
          {post.author.first_name} {post.author.last_name}
        </p>
        {post.author.title && <span>{post.author.title}</span>}
        <span>{formatDate(post.created_at)}</span>
          {/* {post.read_time ? <span>Read time: {post.read_time} minutes</span> : ""} */}
      </div>
      <fieldset style={{borderRadius:"5px" ,marginTop:"20px"}} >
        <legend >Description:</legend>
        <div
          className="post-body" 
          dangerouslySetInnerHTML={{ __html: `${post.description}` }}
        ></div>

      </fieldset>
      <form className="comment-form" onSubmit={handleSubmit} noValidate>
        <div style={{display:"flex"}}>
          <div style={{flex:"50%"}}>
              <spqn style={{fontSize:'20px'}}>StartDate:</spqn>
              <DatePicker
                onChange={(date) => setStartDate(date)}
                selected={startDate}
                showTimeSelect
                dateFormat="MM/dd/yyyy  EE hh:mm a"
                minDate={new Date()}
              />
          </div>
          <div style={{flex:"50%"}}>
            <spqn style={{fontSize:'20px'}}>EndDate:</spqn>
            <DatePicker
                onChange={(date) => setEndDate(date)}
                selected={endDate}
                showTimeSelect
                dateFormat="MM/dd/yyyy  EE hh:mm a"
                minDate={startDate}
            />
          </div>
        </div>
        <button className="animated-button" type="submit" style={{borderRadius:"5px" ,padding:"0:30px",width:"200px"}}>
            <span>
              <strong>Rent</strong>
            </span>
          </button>
      </form>

      {/* <div className="post-comments">
        <Suspense fallback={<h2>Loading comments...</h2>}>
          <h2>Rent</h2>
          <Comments slug={slug} />
        
        </Suspense>
      </div> */}
    </div>
  );
};

export default PostDetail;
