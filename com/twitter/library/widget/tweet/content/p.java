package com.twitter.library.widget.tweet.content;

import android.app.Activity;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.h;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public abstract class p {
    protected abstract i a(Activity activity, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2, h hVar);

    protected abstract i a(Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2, h hVar);

    public i a(Activity activity, DisplayMode displayMode, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2, h hVar) {
        if (displayMode == DisplayMode.FORWARD || displayMode == DisplayMode.CAROUSEL) {
            return a(activity, tweet, displayMode, twitterScribeAssociation, twitterScribeAssociation2, hVar);
        }
        return a(activity, tweet, twitterScribeAssociation, twitterScribeAssociation2, hVar);
    }

    protected static int a(Integer num) {
        return num != null ? num.intValue() : 0;
    }
}
