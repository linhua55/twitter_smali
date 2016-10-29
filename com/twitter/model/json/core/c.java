package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.typeconverters.StringBasedTypeConverter;
import com.twitter.model.json.common.n;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class c extends n<b> {
    public static final StringBasedTypeConverter<b> a;

    static {
        a = new c();
    }

    public c() {
        super(b.a, new Entry[]{a("both_follow", 1), a("both_followed_by", 2), a("follow_and_follow", 3), a("follower_of_follower", 4), a("follow_and_retweets", 5), a("follower_and_retweets", 6), a("follow_and_reply", 7), a("follower_and_reply", 8), a("follow_and_fav", 9), a("follower_and_fav", 10), a("reply_to_follow", 11), a("reply_to_follower", 12), a("popular", 28), a("nearby", 27), a("has_trend", 21), a("followed_by", 40), a("favorited_by", 16)});
    }

    private static Entry<String, b> a(String str, int i) {
        return n.a(str, new b(i));
    }
}
