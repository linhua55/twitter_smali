package com.twitter.android.timeline;

import android.os.Bundle;
import bbu;
import cgu;
import com.twitter.android.widget.ex;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.MomentScribeDetails;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.j;
import com.twitter.model.moments.aq;
import com.twitter.util.ab;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class ag {
    private final bg a;
    private final TwitterScribeAssociation b;
    private final Set<Long> c;
    private final Set<String> d;

    public ag(bg bgVar, TwitterScribeAssociation twitterScribeAssociation, Bundle bundle) {
        this.a = bgVar;
        if (twitterScribeAssociation == null) {
            twitterScribeAssociation = new TwitterScribeAssociation();
        }
        this.b = twitterScribeAssociation;
        if (bundle != null) {
            n b = s.b(s.f);
            Set set = (Set) ab.a(bundle, "state_impressed_suggested_moments", s.b(s.i));
            this.c = (Set) e.b((Set) ab.a(bundle, "state_impressed_suggested_moments_modules", b), MutableSet.a());
            this.d = (Set) e.b(set, MutableSet.a());
            return;
        }
        this.c = MutableSet.a();
        this.d = MutableSet.a();
    }

    public void a(Bundle bundle) {
        n b = s.b(s.f);
        n b2 = s.b(s.i);
        ab.a(bundle, "state_impressed_suggested_moments_modules", this.c, b);
        ab.a(bundle, "state_impressed_suggested_moments", this.d, b2);
    }

    public void a(aj ajVar, int i) {
        if (this.c.add(Long.valueOf(ajVar.d()))) {
            com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
            cgu cgu = ajVar.a;
            int aU_ = cgu.aU_();
            for (int i2 = 0; i2 < aU_; i2++) {
                ba baVar = (ba) cgu.a(i2);
                e.a(baVar);
                TwitterScribeItem c = c(baVar, i2);
                c.g = i;
                d.c(c);
            }
            String a = a(ajVar.b);
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a(), null, a, "carousel", "impression"})).a(this.b)).b((List) d.q()));
        }
    }

    public void a(ba baVar, int i) {
        if (this.d.add(a(baVar))) {
            TwitterScribeItem c = c(baVar, i);
            String b = b(baVar);
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a(), null, b, "moment", "results"})).a(this.b)).a(c));
        }
    }

    public void a(ex exVar, int i) {
        if (this.d.add(a(exVar))) {
            TwitterScribeItem c = c(exVar, i);
            String b = b(exVar);
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a(), null, b, "pivot", "results"})).a(this.b)).a(c));
        }
    }

    private String a(ba baVar) {
        return baVar.b + ":" + baVar.a.b.b;
    }

    private String a(ex exVar) {
        return exVar.b + ":" + exVar.n;
    }

    public void b(ba baVar, int i) {
        TwitterScribeItem c = c(baVar, i);
        String b = b(baVar);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a(), null, b, "moment", "click"})).a(this.b)).a(c));
    }

    public void b(ex exVar, int i) {
        TwitterScribeItem c = c(exVar, i);
        String b = b(exVar);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a(), null, b, "pivot", "click"})).a(this.b)).a(c));
    }

    private TwitterScribeItem c(ba baVar, int i) {
        TwitterScribeItem a = TwitterScribeItem.a((MomentScribeDetails) new j().a(baVar.a.b.b).c(baVar.b).q());
        a.h = i;
        a.am = baVar.o;
        return a;
    }

    private TwitterScribeItem c(ex exVar, int i) {
        TwitterScribeItem a = TwitterScribeItem.a((MomentScribeDetails) new j().c(exVar.b).q());
        a.h = i;
        return a;
    }

    private String b(ba baVar) {
        return baVar.o != null ? baVar.o.e : null;
    }

    private String a(aq aqVar) {
        return aqVar.c != null ? aqVar.c.e : null;
    }

    private String a() {
        return this.b != null ? this.b.a() : null;
    }
}
