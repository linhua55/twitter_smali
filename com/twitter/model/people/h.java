package com.twitter.model.people;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class h {
    public static final n<h> a;
    public static final h b;
    public final List<TwitterUser> c;

    static {
        a = new j();
        b = new h(null);
    }

    public h(List<TwitterUser> list) {
        this.c = e.a(list);
    }
}
