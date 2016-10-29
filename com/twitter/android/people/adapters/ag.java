package com.twitter.android.people.adapters;

import com.twitter.model.people.g;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import cto;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class ag {
    private static final Map<String, ai> a;

    static {
        a = (Map) r.d().b("user-bio-list", ai.a).b("user-profile-carousel", ai.b).b("address-book-contacts", ai.b).b("featured-users-carousel", ai.c).b("badge-carousel", ai.d).b("prompt", ai.e).b("address-book-prompt", ai.f).b("user-tweet-carousel", ai.g).q();
    }

    public List<i> a(Iterable<g> iterable) {
        return b(cto.b(iterable, new ah(this)));
    }

    private static List<i> b(Iterable<Iterable<i>> iterable) {
        n d = n.d();
        Object obj = 1;
        for (Iterable iterable2 : iterable) {
            if (obj != null) {
                obj = null;
            } else {
                d.c(ab.a());
            }
            d.c(iterable2);
        }
        d.c(ab.b());
        return (List) d.q();
    }
}
