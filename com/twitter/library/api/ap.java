package com.twitter.library.api;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.timeline.av;
import com.twitter.model.topic.TwitterTopic;
import java.util.List;

/* compiled from: Twttr */
public class ap {
    public final TwitterTopic a;
    public final TwitterUser b;
    public final List<av> c;
    public final String d;
    public final String e;

    public ap(TwitterTopic twitterTopic, TwitterUser twitterUser, List<av> list, String str, String str2) {
        this.a = twitterTopic;
        this.b = twitterUser;
        this.c = list;
        this.d = str;
        this.e = str2;
    }
}
