package com.twitter.library.platform.notifications;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.util.aj;
import com.twitter.util.serialization.n;
import defpackage.cmf;
import defpackage.cmq;
import defpackage.cmy;
import java.util.List;

/* compiled from: Twttr */
public final class ad {
    public static final n<ad> a;
    public int b;
    public int c;
    public int d;
    public String e;
    public String f;
    public String g;
    public long h;
    public long i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public boolean o;
    public boolean p;
    public String q;
    public int r;
    public int s;
    public String t;
    @Deprecated
    public Object u;
    public List<i> v;
    public cmq w;
    public cmy x;
    public List<cmf> y;
    String z;

    public ad() {
        this.v = com.twitter.util.collection.n.g();
    }

    static {
        a = new ae();
    }

    public ad a(cm cmVar) {
        if (cmVar != null) {
            this.g = cmVar.c;
            this.h = cmVar.b;
        }
        return this;
    }

    public ad a(TwitterUser twitterUser) {
        if (twitterUser != null) {
            this.i = twitterUser.c;
            this.j = twitterUser.k;
            this.z = twitterUser.d;
        }
        return this;
    }

    public String a() {
        if (aj.a(this.z)) {
            return "@" + this.j;
        }
        return this.z;
    }
}
