package com.twitter.model.timeline;

import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.core.t;
import com.twitter.model.moments.ba;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.collection.z;
import com.twitter.util.object.ObjectUtils;
import defpackage.cni;
import java.util.List;

/* compiled from: Twttr */
public abstract class av implements t {
    public final String b;
    public final int c;
    public final int d;
    public final long e;
    public final String f;
    public final aj g;
    public final ba h;
    public final l i;
    public final TwitterSocialProof j;
    public final long k;
    public long l;
    public long m;
    public long n;

    protected av(aw awVar, int i) {
        this.l = 0;
        this.m = 0;
        this.b = awVar.b;
        this.d = awVar.c;
        this.e = awVar.d;
        this.n = awVar.e;
        this.i = awVar.g;
        this.g = awVar.f;
        this.j = awVar.h;
        this.h = awVar.i;
        this.f = awVar.j;
        this.c = i;
        this.k = (long) awVar.k;
    }

    public long bf_() {
        return (long) this.b.hashCode();
    }

    public String bg_() {
        return String.valueOf(bf_());
    }

    public boolean e() {
        return "RecosTweet".equals(this.f);
    }

    public boolean f() {
        return "ItlTweet".equals(this.f);
    }

    public boolean g() {
        return "Moments".equals(this.f);
    }

    public static List<cm> a(av avVar) {
        if (avVar instanceof az) {
            return ((az) ObjectUtils.a((Object) avVar)).c();
        }
        return n.g();
    }

    public static List<TwitterUser> b(av avVar) {
        if (avVar instanceof ba) {
            return ((ba) ObjectUtils.a((Object) avVar)).a();
        }
        return n.g();
    }

    public static List<TwitterTopic> c(av avVar) {
        if (avVar instanceof ay) {
            return ((ay) ObjectUtils.a((Object) avVar)).a();
        }
        return n.g();
    }

    public static cni d(av avVar) {
        if (avVar instanceof ax) {
            return ((ax) ObjectUtils.a((Object) avVar)).d();
        }
        return null;
    }

    public static <B extends aw> void a(List<B> list) {
        z a = CollectionUtils.a((List) list, list.size() - 1);
        for (aw b : (List) a.a()) {
            b.b(1);
        }
        for (aw b2 : (List) a.b()) {
            b2.b(2);
        }
    }
}
