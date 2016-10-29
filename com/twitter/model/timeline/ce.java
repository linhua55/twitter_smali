package com.twitter.model.timeline;

import com.twitter.model.topic.TwitterTopic;

/* compiled from: Twttr */
public class ce extends aw<cc, ce> {
    TwitterTopic a;

    public /* synthetic */ Object c() {
        return d();
    }

    public ce a(TwitterTopic twitterTopic) {
        this.a = twitterTopic;
        return this;
    }

    public boolean bo_() {
        return super.bo_() && this.a != null;
    }

    public cc d() {
        return new cc(3, null);
    }
}
