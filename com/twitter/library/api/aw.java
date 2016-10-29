package com.twitter.library.api;

import android.content.Context;
import android.support.v4.content.AsyncTaskLoader;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import defpackage.bpm;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class aw extends AsyncTaskLoader<List<TwitterUser>> {
    private final Context a;
    private final long[] b;
    private final String[] c;
    private List<TwitterUser> d;
    private long e;

    public /* synthetic */ void deliverResult(Object obj) {
        a((List) obj);
    }

    public /* synthetic */ Object loadInBackground() {
        return a();
    }

    public aw(Context context, long[] jArr) {
        super(context);
        this.a = context;
        this.b = (long[]) a((Object) jArr);
        this.c = null;
    }

    protected void onStartLoading() {
        if (this.d == null || this.e != bg.a().c().g()) {
            forceLoad();
        } else {
            a(this.d);
        }
    }

    public void a(List<TwitterUser> list) {
        if (!isReset() && isStarted()) {
            this.d = list;
            super.deliverResult(list);
        }
    }

    protected void onStopLoading() {
        cancelLoad();
    }

    public void onReset() {
        super.onReset();
        onStopLoading();
        this.d = null;
    }

    public List<TwitterUser> a() {
        List<TwitterUser> a;
        Session c = bg.a().c();
        this.e = c.g();
        di a2 = di.a(this.a, this.e);
        if (this.b != null) {
            a = a2.a(this.b);
        } else {
            a = a2.a(this.c);
        }
        Collection arrayList = new ArrayList();
        if (this.b != null) {
            Set hashSet = new HashSet();
            for (TwitterUser bf_ : a) {
                hashSet.add(Long.valueOf(bf_.bf_()));
            }
            for (long j : this.b) {
                if (!hashSet.contains(Long.valueOf(j))) {
                    arrayList.add(Long.valueOf(j));
                }
            }
        }
        Collection arrayList2 = new ArrayList();
        if (this.c != null) {
            Set hashSet2 = new HashSet();
            for (TwitterUser bf_2 : a) {
                hashSet2.add(bf_2.k);
            }
            for (Object obj : this.c) {
                if (!hashSet2.contains(obj)) {
                    arrayList2.add(obj);
                }
            }
        }
        if (arrayList.size() + arrayList2.size() > 0) {
            a.addAll(a(arrayList, arrayList2, c));
        }
        return a;
    }

    private List<TwitterUser> a(Collection<Long> collection, Collection<String> collection2, Session session) {
        int size = collection2.size() + collection.size();
        if (size > 100) {
            throw new UnsupportedOperationException("Lookup users through API for more than one page is not supported in TwitterUsersLoader yet. Lookup requested: " + size + " Page limit: " + 100);
        }
        bpm b = new bpm(this.a, session).a(collection).b((Collection) collection2);
        b.P();
        return b.e();
    }

    private static <T> T a(T t) {
        if (t != null) {
            return t;
        }
        throw new InvalidParameterException("Parameter cannot be null");
    }
}
