package com.twitter.android.moments.ui.fullscreen;

import afm;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import com.twitter.android.av.audio.l;
import com.twitter.model.av.Audio;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.s;
import com.twitter.moments.core.ui.widget.capsule.b;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.z;

/* compiled from: Twttr */
public class d extends SimpleOnPageChangeListener {
    private final afm a;
    private final k b;
    private final b c;
    private final y d;
    private final cg e;
    private final z<ae> f;
    private final z<ac> g;
    private final z<Boolean> h;
    private s i;
    private Audio j;
    private int k;

    public d(afm afm, cg cgVar, k kVar, b bVar, y yVar) {
        this.f = new e(this);
        this.g = new f(this);
        this.h = new g(this);
        this.k = 0;
        this.a = afm;
        this.e = cgVar;
        this.b = kVar;
        this.c = bVar;
        this.d = yVar;
        this.d.a(this.f, this.g);
        cgVar.c().a(this.h);
    }

    public void onPageSelected(int i) {
        if (this.k == 0) {
            this.i = this.b.a(this.c.a());
            b();
        }
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (i2 != 0) {
            s a;
            s a2 = this.b.a(i);
            int i3 = i + 1;
            if (i3 < this.b.a()) {
                a = this.b.a(i3);
            } else {
                a = null;
            }
            if (a2 != a) {
                this.i = null;
                b();
            } else if (a2 != null) {
                this.i = a2;
                b();
            }
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.k = i;
        if (i == 0) {
            this.i = this.b.a(this.c.a());
            b();
        }
    }

    private void b() {
        Object obj;
        Object obj2 = 1;
        Object obj3 = this.i != null ? 1 : null;
        if (obj3 == null || !this.d.b(this.i).c()) {
            obj = null;
        } else {
            obj = 1;
        }
        Object obj4;
        if (this.k == 0) {
            obj4 = 1;
        } else {
            obj4 = null;
        }
        if (this.i != this.c.c()) {
            obj2 = null;
        }
        boolean a = this.e.a();
        if (obj3 != null && !a && obj == null) {
            Audio a2 = this.d.a(this.i);
            if (!ObjectUtils.a(this.j, a2)) {
                this.a.e();
                if (a2 != null) {
                    this.j = a2;
                    l a3 = l.a(a2);
                    this.a.k();
                    this.a.a(a3, this.i.n());
                    this.a.a();
                } else {
                    this.a.l();
                    this.a.b();
                }
            }
            if (this.c.c() == null || this.c.c().equals(this.i) || a2 == null) {
                this.a.d();
            } else {
                this.a.c();
            }
        } else if (obj == null || r1 == null || r3 == null) {
            this.j = null;
            this.a.e();
            this.a.b();
            this.a.l();
        } else {
            this.a.e();
            Tweet tweet = (Tweet) e.a(this.i.n());
            this.a.a(l.a(tweet), tweet);
            this.a.a();
        }
    }

    public void a() {
        this.e.c().b(this.h);
        this.d.b(this.f, this.g);
    }
}
