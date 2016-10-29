package com.twitter.model.businessprofiles;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class q {
    public static final n<q> a;
    public final ag b;
    public final ResponsivenessLevel c;
    public final TwitterUser d;

    static {
        a = new s(null);
    }

    public q(ag agVar, ResponsivenessLevel responsivenessLevel, TwitterUser twitterUser) {
        this.b = agVar;
        this.c = responsivenessLevel;
        this.d = twitterUser;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (ObjectUtils.a(this.b, qVar.b) && ObjectUtils.a(this.c, qVar.c) && ObjectUtils.a(this.d, qVar.d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d);
    }
}
