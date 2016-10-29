package com.twitter.android;

import com.twitter.library.widget.BaseUserView;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class xp {
    public final BaseUserView c;
    public long d;
    public long e;
    public int f;
    public String g;
    public String h;
    public int i;
    public final String j;

    public xp(BaseUserView baseUserView) {
        this(baseUserView, null);
    }

    public xp(BaseUserView baseUserView, String str) {
        this.c = baseUserView;
        this.j = str;
    }

    public void a(TwitterUser twitterUser) {
        this.e = twitterUser.c;
        this.g = twitterUser.h();
        this.h = twitterUser.c();
    }
}
