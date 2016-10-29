package com.twitter.library.api;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.topic.TwitterTopic;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public class ao {
    public final List<TwitterTopic> a;
    public final Collection<TwitterUser> b;
    public final String c;

    public ao(List<TwitterTopic> list, Collection<TwitterUser> collection, String str) {
        this.a = list;
        this.b = collection;
        this.c = str;
    }
}
