using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TweetSharp;
public partial class TwitterWeb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void PostBotton_Click(object sender, EventArgs e)
    {
        TwitterService twitter = new TwitterService("2lUFmJzeuyhocDkhcI6QTXLOd", "cQC8ic5qCMHl88u287Bqic7u6kcldWVCukbaPpSumWp7R23hmM", "4416194297-dW9wdSDFxE6rrFZA2ZXWIEwEnRDZuTPUOnPzqBx", "lcxY20hIpCBpLDRSXmWko0iDpthI1Gh8vMWcIUCVkMG0I");
        twitter.SendTweet(new SendTweetOptions { Status = EnterStatus.Text });
    }
    protected void getTrend_Click(object sender, EventArgs e)
    {
        TwitterService twitter4 = new TwitterService("2lUFmJzeuyhocDkhcI6QTXLOd", "cQC8ic5qCMHl88u287Bqic7u6kcldWVCukbaPpSumWp7R23hmM", "4416194297-dW9wdSDFxE6rrFZA2ZXWIEwEnRDZuTPUOnPzqBx", "lcxY20hIpCBpLDRSXmWko0iDpthI1Gh8vMWcIUCVkMG0I");
        var tweets = new TweetSharp.SearchOptions() { Q = HashTag.Text };
        var options = twitter4.Search(tweets);
        foreach (var tweet in options.Statuses)
        {
            //ViewTrend.Items.Add(tweet.Text);
            //To get ID:
            ViewTrend.Items.Add(tweet.Id.ToString());
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TwitterService twitter2 = new TwitterService("2lUFmJzeuyhocDkhcI6QTXLOd", "cQC8ic5qCMHl88u287Bqic7u6kcldWVCukbaPpSumWp7R23hmM", "4416194297-dW9wdSDFxE6rrFZA2ZXWIEwEnRDZuTPUOnPzqBx", "lcxY20hIpCBpLDRSXmWko0iDpthI1Gh8vMWcIUCVkMG0I");
        ListTweets.Items.Clear();
        var NoOfTwts = new ListTweetsOnUserTimelineOptions() { Count = Int32.Parse(NoOfTweets.Text)+2, IncludeRts = false };
        var tweets = twitter2.ListTweetsOnUserTimeline(NoOfTwts);
        foreach (var twt in tweets)
        {
            ListTweets.Items.Add(twt.Text);
        }
    }
    protected void RetweetBotton_Click(object sender, EventArgs e)
    {
        TwitterService twitter3 = new TwitterService("2lUFmJzeuyhocDkhcI6QTXLOd", "cQC8ic5qCMHl88u287Bqic7u6kcldWVCukbaPpSumWp7R23hmM", "4416194297-dW9wdSDFxE6rrFZA2ZXWIEwEnRDZuTPUOnPzqBx", "lcxY20hIpCBpLDRSXmWko0iDpthI1Gh8vMWcIUCVkMG0I");
        twitter3.Retweet(new RetweetOptions() { Id = long.Parse(retweetID.Text) });
    }
}