Project-3
=========

Analyse the Twitter data ... using Hive, pig, flume



Assuming that Hadoop has already been installed and configured, the next step is download Flume and extract it to any folder.
------------------------------------------------------------------------------------------------------------------------------
Download the flume-sources-1.0-SNAPSHOT.jar and add it to the flume class path as shown below in the conf/flume-env.sh file


The jar contains the java classes to pull the Tweets and save them into HDFS.

Note: refer fume/flumejars directory

--------------------------------------------------------------------------------------------------------------------------------------

The conf/flume.conf should have all the agents (flume, memory and hdfs)

The consumerKey, consumerSecret, accessToken and accessTokenSecret have to be replaced with those obtained from https://dev.twitter.com/apps. And,  TwitterAgent.sinks.HDFS.hdfs.path should point to the NameNode and the location in HDFS where the tweets will go to.

refer flume/flume.conf file.

----------------------------------------------------------------------------------------------------------------------------------------------
 Start flume using the below command

refer flume/To get The Tweets using Flume file

------------------------------------------------------------------------------------------------------------------------------------
Next download and extract Hive. Modify the conf/hive-site.xml to include the locations of the NameNode and the JobTracker as below

Refer Hive/hive-site.xml
----------------------------------------------------------------------------------------------------------------------------------------
Download hive-serdes-1.0-SNAPSHOT.jar to the lib directory in Hive. Twitter returns Tweets in the JSON format and this library will help Hive understand the JSON format.


ow that we have the data in HDFS and the table created in Hive, lets run some queries in Hive.


-----------------------------------------------------------------------------------------------------------------------------------

One of the way to determine who is the most influential person in a particular field is to to figure out whose tweets are re-tweeted the most. Give enough time for Flume to collect Tweets from Twitter to HDFS and then run the below query in Hive to determine the most influential person.

run the hive/mostinfluentialperson.hql

-------------------------------------------------------------------------------------------

Similarly to know which user has the most number of followers, the below query helps.
run hive/maxNumFollowers.hql file we get result
--------------------------------------------------------------------------------------------------------------------------------
