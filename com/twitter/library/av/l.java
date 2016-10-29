package com.twitter.library.av;

import android.content.Context;
import com.twitter.library.av.playback.au;
import com.twitter.library.service.z;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.k;
import com.twitter.util.aj;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
public class l extends z {
    private static l a;
    private final af b;
    private final Map<String, DynamicAdInfo> c;
    private final List<WeakReference<n>> d;
    private final Map<String, DynamicAdInfo> e;
    private final Set<a> f;

    public static synchronized l a(Context context) {
        l lVar;
        synchronized (l.class) {
            if (a == null) {
                a = new l(context);
            }
            lVar = a;
        }
        return lVar;
    }

    public boolean a(n nVar) {
        for (WeakReference weakReference : this.d) {
            if (nVar == weakReference.get()) {
                return false;
            }
        }
        this.d.add(new WeakReference(nVar));
        return true;
    }

    public boolean b(n nVar) {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            if (nVar == ((n) ((WeakReference) it.next()).get())) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    l(Context context) {
        this(context, new ConcurrentHashMap(), new ConcurrentHashMap(), new HashSet(), new o());
    }

    l(Context context, Map<String, DynamicAdInfo> map, Map<String, DynamicAdInfo> map2, Set<a> set, f fVar) {
        this(context, map, map2, set, new ah(), fVar);
    }

    l(Context context, Map<String, DynamicAdInfo> map, Map<String, DynamicAdInfo> map2, Set<a> set, ah ahVar, f fVar) {
        this.d = new LinkedList();
        this.c = map;
        this.e = map2;
        this.f = set;
        this.b = ahVar.a(context, a(this, (Map) map, (Map) map2), fVar);
    }

    protected static ag a(l lVar, Map<String, DynamicAdInfo> map, Map<String, DynamicAdInfo> map2) {
        return new m(map2, map, lVar);
    }

    void a(String str, DynamicAdInfo dynamicAdInfo) {
        for (WeakReference weakReference : this.d) {
            n nVar = (n) weakReference.get();
            if (nVar != null) {
                nVar.a(str, dynamicAdInfo);
            }
        }
    }

    public DynamicAdInfo a(String str) {
        DynamicAdInfo dynamicAdInfo = (DynamicAdInfo) this.e.get(str);
        if (dynamicAdInfo == null) {
            return (DynamicAdInfo) this.c.get(str);
        }
        return dynamicAdInfo;
    }

    public void a(au auVar, AVMedia aVMedia, AVMediaPlaylist aVMediaPlaylist) {
        if (auVar.b()) {
            AVMedia k = aVMediaPlaylist != null ? aVMediaPlaylist.k() : null;
            if (k == aVMedia && a(k, aVMediaPlaylist)) {
                this.c.clear();
                for (WeakReference weakReference : this.d) {
                    n nVar = (n) weakReference.get();
                    if (nVar != null) {
                        nVar.bj_();
                    }
                }
                synchronized (this) {
                    this.b.a(new ArrayList(this.f), k.a(aVMediaPlaylist));
                }
            }
        }
    }

    public boolean a(AVMedia aVMedia, AVMediaPlaylist aVMediaPlaylist) {
        return aj.a(a(aVMediaPlaylist), aVMedia.c());
    }

    private String a(AVMediaPlaylist aVMediaPlaylist) {
        DynamicAd a = k.a(aVMediaPlaylist);
        return a != null ? a.a : null;
    }

    public void a(List<a> list) {
        synchronized (this) {
            if (list.size() > 0) {
                this.f.clear();
                this.f.addAll(list);
                this.b.a(new ArrayList(this.f));
            }
        }
    }

    public List<a> a() {
        return this.b.a();
    }
}
