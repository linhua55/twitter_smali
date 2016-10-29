package com.twitter.android;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class qn {
    public final TwitterUser a;
    public final String b;
    public final int c;

    public qn(TwitterUser twitterUser, String str, int i) {
        this.a = twitterUser;
        this.b = str;
        this.c = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qn)) {
            return false;
        }
        qn qnVar = (qn) obj;
        if (ObjectUtils.a(this.a, qnVar.a) && aj.a(this.b, qnVar.b) && this.c == qnVar.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.a) * 31) + ObjectUtils.b(this.b)) * 31) + this.c;
    }
}
