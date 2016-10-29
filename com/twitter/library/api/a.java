package com.twitter.library.api;

import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Twttr */
public class a {
    public static Map<String, b> a;

    static {
        a = new LinkedHashMap(15);
        a.put("favorite", new b(1, 1, 2, 0));
        a.put("favorited_retweet", new b(10, 1, 2, 0));
        a.put("favorited_mention", new b(12, 1, 2, 0));
        a.put("retweeted_retweet", new b(9, 1, 2, 0));
        a.put("retweeted_mention", new b(11, 1, 2, 0));
        a.put("mention", new b(2, 1, 1, 2));
        a.put("reply", new b(3, 1, 2, 2));
        a.put("retweet", new b(4, 1, 2, 2));
        a.put("follow", new b(5, 1, 1, 0));
        a.put("joined_twitter", new b(13, 1, 1, 0));
        a.put("quote", new b(14, 1, 2, 2));
        a.put("list_member_added", new b(6, 1, 1, 3));
        a.put("media_tagged", new b(15, 1, 2, 0));
        a.put("favorited_media_tagged", new b(16, 1, 2, 0));
        a.put("retweeted_media_tagged", new b(17, 1, 2, 0));
    }
}
