
-- pig Sript for Deserilize the Twitter JSON ( java script object notation ).

-- Register twitter jar file 

REGISTER register /home/hduser/Downloads/elephant-bird-pig-3.0.1.jar; 
REGISTER /home/hduser/Downloads/json-simple-1.1.jar;

--load the json file.

-- using JSON Loader class 

nestobject = LOAD '/home/hduser/Desktop/nagu' USING com.twitter.elephantbird.pig.load.JsonLoader('-nestedLoad=true') AS (json:map[]); 

-- now you caan create the your format 

own_format_data = FOREACH nestobject GENERATE json#'id',json#'created_at',json#'source',json#'favorited',json#'retweet_count',json#'text',json#'screen_name',

json#'name',json#'expanded_url',json#'hashtags',json#'friends_count',json#'followers_count',json#'statuses_count',json#'verified',json#'utc_offset',
json#'time_zone',json#'in_reply_to_screen_name';


--- finally Store data into your particular localtion

STORE own_format_data INTO '/home/hduser/Desktop/out1/' USING PigStorage(',');

-- thank u
