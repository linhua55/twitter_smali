package com.twitter.android.av;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.widget.EngagementActionBar;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class TweetEngagementView extends RelativeLayout implements ai {
    private final TextView a;
    private final UserImageView b;
    private final af c;
    private ai d;

    public TweetEngagementView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, 2130968634, this);
        this.a = (TextView) findViewById(2131951988);
        this.b = (UserImageView) findViewById(2131951987);
        EngagementActionBar engagementActionBar = (EngagementActionBar) findViewById(2131951908);
        engagementActionBar.setBackgroundColor(0);
        this.c = new af(null, engagementActionBar, this);
    }

    public void a() {
        setScriber(null);
    }

    public void setContext(Context context) {
        this.c.a(context);
    }

    public void setFragmentActivity(TwitterFragmentActivity twitterFragmentActivity) {
        this.c.a(twitterFragmentActivity);
    }

    public void setTweet(Tweet tweet) {
        this.a.setText(getContext().getString(2131361933, new Object[]{tweet.d()}));
        this.b.a(tweet.r);
        this.c.a(tweet);
    }

    public void a(String str) {
        if (this.d != null) {
            this.d.a(str);
        }
    }

    public void setScriber(ai aiVar) {
        this.d = aiVar;
    }
}
