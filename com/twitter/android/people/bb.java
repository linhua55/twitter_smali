package com.twitter.android.people;

import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.j;
import com.twitter.android.people.adapters.m;
import com.twitter.android.people.adapters.viewbinders.ak;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.people.am;
import com.twitter.model.people.g;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.z;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;
import defpackage.cto;
import java.util.Set;

/* compiled from: Twttr */
public class bb {
    private boolean a;
    private final Set<String> b;
    private final Set<z<String, Long>> c;
    private final TwitterScribeAssociation d;
    private final long e;

    public bb(long j, TwitterScribeAssociation twitterScribeAssociation) {
        this.b = MutableSet.a();
        this.c = MutableSet.a();
        this.e = j;
        this.d = twitterScribeAssociation;
    }

    public static bb a(long j) {
        return new bb(j, (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b("people")).c("address_book"));
    }

    public void a() {
        if (!this.a) {
            bbu.a(a(null, null, "impression"));
            this.a = true;
        }
    }

    public void a(i iVar) {
        if (iVar instanceof ak) {
            g b = ((ak) ObjectUtils.a((Object) iVar)).b();
            TwitterScribeLog a = a(this.b, b.b(), a(b), null);
            if (a != null) {
                bbu.a(a.a(TwitterScribeItem.a(b)));
            }
        }
    }

    public <T> void a(g gVar, m<T> mVar, T t, am amVar) {
        a(gVar, mVar.a, (Object) t, amVar);
    }

    public <T> void a(g gVar, Iterable<T> iterable, T t, am amVar) {
        TwitterScribeLog a = a(this.c, z.a(gVar.b(), Long.valueOf(amVar.a.bf_())), a(gVar), "user");
        if (a != null) {
            bbu.a(a.a(b(gVar, iterable, t, amVar)));
        }
    }

    public <T> void a(g gVar, m<T> mVar, T t, am amVar, boolean z) {
        ScribeItem b;
        TwitterScribeLog a = a(a(gVar), null, z ? "swipe_next" : "swipe_previous");
        if (amVar != null) {
            b = b(gVar, mVar.a, t, amVar);
        } else {
            b = TwitterScribeItem.a(gVar);
        }
        bbu.a(a.a(b));
        if (z && a((Object) t, (m) mVar)) {
            bbu.a(a(a(gVar), null, "swipe_end").a(b));
        }
    }

    public void a(j jVar) {
        bbu.a(a(a(jVar.b()), null, "click").a(TwitterScribeItem.a(jVar.b(), jVar.a)));
    }

    public void a(ak akVar) {
        bbu.a(a(a(akVar.b()), "social_proof_avatar", "click").a(TwitterScribeItem.a(akVar.b())));
    }

    public static <T> TwitterScribeItem b(g gVar, Iterable<T> iterable, T t, am amVar) {
        return TwitterScribeItem.a(amVar, gVar, cto.c((Iterable) iterable, new bc(t)));
    }

    public void b(ak akVar) {
        g b = akVar.b();
        bbu.a(a(a(b), "more", "click").a(TwitterScribeItem.a(b)));
    }

    public void b() {
        bbu.a(a(null, null, "scroll"));
    }

    public void a(int i, int i2) {
        bbu.a(a(null, null, "scroll").a((long) ((((float) (i + 1)) / ((float) i2)) * 100.0f)));
    }

    public void c() {
        bbu.a(a(null, null, "bottom"));
    }

    public TwitterScribeLog a(String str, String str2, String str3) {
        return (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.e).b(this.d.a(), this.d.b(), str, str2, str3)).a(this.d);
    }

    private <T> TwitterScribeLog a(Set<T> set, T t, String str, String str2) {
        if (set.contains(t)) {
            return null;
        }
        set.add(t);
        return a(str, str2, "impression");
    }

    private static String a(g gVar) {
        return gVar.c().b.replace("-", "_").toLowerCase();
    }

    private static <T> boolean a(T t, m<T> mVar) {
        return t.equals(CollectionUtils.c(mVar.a));
    }
}
