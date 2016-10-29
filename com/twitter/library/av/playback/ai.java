package com.twitter.library.av.playback;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.library.scribe.TwitterScribeAssociation;
import defpackage.bbn;
import defpackage.bqk;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public abstract class ai {
    private static final ai d;
    final Set<String> a;
    final Map<String, aj> b;
    final Map<aj, Set<AVPlayerAttachment>> c;

    protected abstract AVPlayer a(au auVar, Context context);

    protected abstract void a(AVPlayer aVPlayer, boolean z);

    public ai() {
        this.a = new HashSet();
        this.b = new HashMap();
        this.c = new HashMap();
    }

    static {
        d = new al();
    }

    public static ai a() {
        return d;
    }

    public AVPlayerAttachment a(au auVar, bqk bqk, Context context, TwitterScribeAssociation twitterScribeAssociation) {
        return a(auVar, bqk, context, twitterScribeAssociation, true);
    }

    private AVPlayerAttachment a(au auVar, bqk bqk, Context context, TwitterScribeAssociation twitterScribeAssociation, boolean z) {
        if (auVar == null) {
            throw new NullPointerException();
        }
        Object obj;
        AVPlayer aVPlayer;
        String c = c(auVar);
        if (this.b.containsKey(c)) {
            obj = (aj) this.b.get(c);
            aVPlayer = obj.a;
            if (z) {
                obj.b.getAndIncrement();
            }
        } else {
            AVPlayer a = a(auVar, context);
            aj ajVar = new aj(a, z ? 1 : 0);
            this.c.put(ajVar, new LinkedHashSet());
            b(c, ajVar);
            aj ajVar2 = ajVar;
            aVPlayer = a;
        }
        AVPlayerAttachment aVPlayerAttachment = new AVPlayerAttachment(aVPlayer, bqk, twitterScribeAssociation);
        Set set = (Set) this.c.get(obj);
        if (set != null) {
            set.add(aVPlayerAttachment);
            aVPlayer.f().a(aVPlayerAttachment);
        } else {
            bbn.a(new IllegalStateException("Tried to attach, but set of attachments was not initialized"));
        }
        return aVPlayerAttachment;
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        aVPlayerAttachment.j();
        au h = aVPlayerAttachment.h();
        aj ajVar = (aj) this.b.get(c(h));
        Set set = (Set) this.c.get(ajVar);
        if (ajVar != null) {
            boolean remove;
            if (set != null) {
                remove = set.remove(aVPlayerAttachment);
                ajVar.a.f().b(aVPlayerAttachment);
            } else {
                remove = false;
            }
            if (remove) {
                ajVar.b.getAndDecrement();
            }
            a(c(h), ajVar);
        }
    }

    private void a(String str, aj ajVar) {
        boolean z = ajVar.b.get() < 1;
        if (!d(str) && z) {
            e(str);
            a(ajVar.a, true);
            f(str);
        }
    }

    private void b(String str, aj ajVar) {
        this.b.put(str, ajVar);
    }

    @VisibleForTesting
    protected void a(String str) {
        if (!d(str)) {
            g(str);
        }
    }

    public void a(au auVar) {
        a(c(auVar));
    }

    @VisibleForTesting
    protected void b(String str) {
        boolean z = true;
        if (d(str)) {
            aj ajVar = (aj) this.b.get(str);
            if (ajVar != null) {
                if (ajVar.b.get() >= 1) {
                    z = false;
                }
                ajVar.a.N();
                if (z) {
                    a(ajVar.a, z);
                    f(str);
                }
                e(str);
            }
        }
    }

    public void b() {
        for (aj ajVar : d()) {
            if (ajVar != null) {
                b(c(ajVar.a.e()));
            }
        }
    }

    @VisibleForTesting
    protected void c(String str) {
        if (d(str)) {
            aj ajVar = (aj) this.b.get(str);
            if (ajVar != null && ajVar.b.get() == 0) {
                b(str);
            }
        }
    }

    public void b(au auVar) {
        c(c(auVar));
    }

    public void c() {
        for (aj ajVar : this.b.values()) {
            ajVar.a.l();
        }
    }

    private void g(String str) {
        this.a.add(str);
    }

    Set<aj> d() {
        Set<aj> hashSet = new HashSet();
        for (String str : this.a) {
            if (this.b.containsKey(str)) {
                hashSet.add(this.b.get(str));
            }
        }
        return hashSet;
    }

    public boolean d(String str) {
        return this.a.contains(str);
    }

    void e(String str) {
        this.a.remove(str);
    }

    void f(String str) {
        this.b.remove(str);
    }

    @VisibleForTesting
    protected static String c(au auVar) {
        return auVar.c().a();
    }
}
