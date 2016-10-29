package com.twitter.android.eventtimelines;

import android.content.res.Resources;
import android.os.Parcelable;
import com.twitter.android.eventtimelines.page.d;
import com.twitter.android.eventtimelines.page.f;
import com.twitter.android.eventtimelines.page.g;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.library.client.Session;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.at;
import com.twitter.library.provider.di;
import com.twitter.util.collection.ImmutableMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* compiled from: Twttr */
public class p implements o {
    private final Map<Integer, Long> a;
    private final d b;
    private final di c;
    private final g d;
    private final Session e;
    private final Resources f;
    private final Random g;

    public /* synthetic */ Parcelable c() {
        return b();
    }

    public p(di diVar, Resources resources, g gVar, Session session, d dVar, Random random, l lVar, SearchTimelineState searchTimelineState) {
        this.b = dVar;
        this.d = gVar;
        this.f = resources;
        this.c = diVar;
        this.e = session;
        this.g = random;
        this.a = a(lVar, searchTimelineState);
        this.c.a(this.a.values());
    }

    public String aF_() {
        return "search_timeline_presenter";
    }

    private static Map<Integer, Long> a(l lVar, SearchTimelineState searchTimelineState) {
        Map<Integer, Long> hashMap = new HashMap(searchTimelineState != null ? searchTimelineState.b.size() + 1 : 1);
        if (searchTimelineState != null) {
            hashMap.putAll(searchTimelineState.b);
        }
        if (lVar != l.a) {
            hashMap.put(Integer.valueOf(0), Long.valueOf(lVar.b));
        }
        return hashMap;
    }

    private long a(int i) {
        long nextLong;
        if (this.a.get(Integer.valueOf(i)) == null) {
            nextLong = this.g.nextLong();
        } else {
            nextLong = ((Long) this.a.get(Integer.valueOf(i))).longValue();
        }
        this.c.j(nextLong);
        this.a.put(Integer.valueOf(i), Long.valueOf(nextLong));
        return nextLong;
    }

    public at a(f fVar) {
        return this.b.a(fVar, this.f, a(fVar.f));
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.RETAINED && this.e.b() == LoginStatus.c) {
            this.c.b(this.a.values());
        }
    }

    public SearchTimelineState b() {
        return new SearchTimelineState((ImmutableMap) ImmutableMap.a(this.a));
    }
}
