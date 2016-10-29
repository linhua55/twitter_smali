package com.twitter.android.provider;

import android.support.annotation.VisibleForTesting;
import cgu;
import com.twitter.android.autocomplete.adapters.DMRecipientAdapter.Divider;
import com.twitter.library.database.dm.d;
import com.twitter.library.provider.f;
import com.twitter.library.provider.h;
import com.twitter.library.provider.k;
import com.twitter.library.provider.m;
import com.twitter.library.provider.o;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import defpackage.chd;
import java.util.List;
import java.util.ListIterator;
import so;
import st;
import sw;
import sx;

/* compiled from: Twttr */
public class a implements sw<String, Object> {
    private final sw<String, Object> a;
    private final j b;
    private final l c;
    private final e d;
    private final so e;

    public a(sw<String, Object> swVar, j jVar, so soVar, l lVar, e eVar) {
        this.a = swVar;
        this.b = jVar;
        this.c = lVar;
        this.d = eVar;
        this.e = soVar;
    }

    public void a(String str, sx<String, Object> sxVar) {
        this.a.a(str, a((sx) sxVar));
    }

    private sx<String, Object> a(sx<String, Object> sxVar) {
        return new b(this, sxVar);
    }

    private Iterable<Object> a(String str) {
        n d = n.d();
        if (st.b(str)) {
            cgu a = this.e.a(str);
            d.c(!a.g() ? Divider.CONTACTS : null).c(a);
        }
        return (Iterable) d.q();
    }

    @VisibleForTesting
    static cgu<Object> a(cgu<?> cgu_, cgu<k> cgu_com_twitter_library_provider_k) {
        return new chd(CollectionUtils.a(n.a(cgu_), new c(ar.a(cgu_com_twitter_library_provider_k))));
    }

    static cgu<Object> a(cgu<?> cgu_) {
        return new chd(CollectionUtils.a(n.a(cgu_), new d()));
    }

    private static k b(Object obj) {
        if (obj instanceof TwitterUser) {
            return (k) new o().a((TwitterUser) obj).q();
        }
        if (obj instanceof d) {
            return (k) new h().a((d) obj).q();
        }
        return null;
    }

    @VisibleForTesting
    protected static List<Object> b(cgu<k> cgu_com_twitter_library_provider_k) {
        n a = n.a(cgu_com_twitter_library_provider_k.aU_());
        ListIterator h = cgu_com_twitter_library_provider_k.h();
        while (h.hasNext()) {
            k kVar = (k) h.next();
            if (kVar instanceof m) {
                a.c(((m) kVar).b);
            } else if (kVar instanceof f) {
                a.c(((f) kVar).b);
            }
        }
        return (List) a.q();
    }

    public void a() {
    }
}
