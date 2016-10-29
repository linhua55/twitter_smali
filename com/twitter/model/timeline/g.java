package com.twitter.model.timeline;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class g {
    public static final n<g> a;
    public long b;
    public String c;
    public String d;
    public String e;

    static {
        a = new h();
    }

    public g(long j, String str, String str2, String str3) {
        this.b = j;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    public g(TwitterUser twitterUser) {
        this.b = twitterUser.c;
        this.c = twitterUser.k;
        this.d = twitterUser.d;
        this.e = twitterUser.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.b == gVar.b && ObjectUtils.a(this.d, gVar.d) && ObjectUtils.a(this.e, gVar.e) && ObjectUtils.a(this.c, gVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.a(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e);
    }
}
