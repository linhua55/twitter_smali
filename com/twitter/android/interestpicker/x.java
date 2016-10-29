package com.twitter.android.interestpicker;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.util.CategoryListItem;
import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.json.stratostore.JsonInterestSelections.JsonInterestSelection;
import com.twitter.model.stratostore.SourceLocation;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.bbu;
import defpackage.cgu;
import java.util.List;
import rx.an;
import rx.o;

/* compiled from: Twttr */
public class x implements ar, r {
    protected final aj a;
    protected final Session b;
    protected final l c;
    protected cgu<h> d;
    protected an e;
    protected w f;
    protected ah g;
    protected m h;
    private ap i;
    private boolean j;
    private String k;
    private boolean l;

    public x(aj ajVar, Session session, l lVar) {
        this.d = cgu.f();
        this.a = ajVar;
        this.b = session;
        this.c = lVar;
    }

    public void a(ah ahVar) {
        this.g = ahVar;
    }

    public void a(w wVar) {
        this.f = wVar;
        j();
    }

    public void a() {
        this.g.a(this.d.aU_() == 0);
        if (this.j) {
            this.g.setSeamfulSignupHeader(2131362826);
        } else {
            this.g.setSignupHeader(2131362825);
        }
        this.g.setAdapterAndAttachHeaders(this.h);
        if (!a(2).isEmpty()) {
            this.g.setSearchHint(2131362828);
        }
    }

    public void a(ap apVar) {
        this.i = apVar;
        apVar.a(this);
        apVar.b(this.k);
        this.g.setupSearchController(apVar);
    }

    private o<h> h() {
        return o.a(this.d).f(new z(this)).b(new y(this));
    }

    private o<aw> i() {
        return h().b(aw.class);
    }

    private static List<h> b(Iterable<h> iterable) {
        n d = n.d();
        for (Object obj : iterable) {
            d.c(obj);
            d.c(b(obj.d));
        }
        return (List) d.q();
    }

    public int b() {
        return ((Integer) i().d(new aa(this)).f().o().a()).intValue();
    }

    public void c() {
        bbu.a(new TwitterScribeLog(this.b.g()).b(this.k, "interest_picker", "search", BuildConfig.VERSION_NAME, "click"));
    }

    public void d() {
        this.g.a(true);
        g();
    }

    public void a(String str) {
        List b = f.b((List) i().p().o().a());
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.b.g()).a(b)).b(this.k, "interest_picker", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, str)).a((long) b.size()));
    }

    public void a(List<String> list) {
        this.c.a().a("selected_interests", aj.a(aj.a(), (Iterable) list)).apply();
    }

    public static List<String> a(l lVar) {
        String string = lVar.getString("selected_interests", BuildConfig.VERSION_NAME);
        if (string.isEmpty()) {
            return n.g();
        }
        return n.a(string.split(aj.a()));
    }

    public void c(String str) {
        this.k = str;
    }

    public void a(boolean z) {
        this.j = z;
    }

    public List<String> a(int i) {
        return (List) i().d(new ac(this, i)).g(new ab(this, i)).p().o().a();
    }

    public List<JsonInterestSelection> a(SourceLocation sourceLocation, String str, String str2, String str3) {
        return (List) i().d(new ae(this)).g(new ad(this, sourceLocation, str, str2, str3)).p().o().a();
    }

    public void e() {
        this.h = new m(this);
        this.a.a(this.l);
        g();
    }

    public void f() {
        if (this.e != null) {
            this.e.K_();
            this.e = null;
        }
        if (this.i != null) {
            this.i.b();
            this.i = null;
        }
    }

    protected void g() {
        if (this.e != null) {
            this.e.K_();
        }
        this.e = this.a.b().a(new af(this), new ag(this));
    }

    private void j() {
        this.h.a(this.d);
        if (this.f != null) {
            this.f.a(this.d);
        }
        if (this.g != null) {
            this.g.a(this.d.aU_() == 0);
        }
    }

    public void a(CategoryListItem categoryListItem) {
        d(categoryListItem.a());
    }

    public void b(List<aw> list) {
        for (h a : list) {
            this.a.a(a);
        }
    }

    public void b(String str) {
        d(str);
    }

    private void d(String str) {
        this.a.a(aw.a(str));
        this.g.setSearchHint(2131362828);
        a("search", "select", str);
    }

    public void a(h hVar) {
        if (hVar instanceof aw) {
            aw awVar = (aw) hVar;
            if (awVar.f == 2 && !awVar.g) {
                a("search", "deselect", hVar.a);
            }
            this.a.a();
        } else if (hVar instanceof ba) {
            a("header", ((ba) hVar).e ? "open" : "close", hVar.a);
            this.a.a();
        } else if (hVar instanceof au) {
            a("pivot", "click", String.valueOf(hVar.c));
            this.g.a(hVar.c);
        }
    }

    private void a(String str, String str2, String str3) {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.b.g()).b(this.k, "interest_picker", str, BuildConfig.VERSION_NAME, str2)).f(str3));
    }

    public void b(boolean z) {
        this.l = z;
    }
}
