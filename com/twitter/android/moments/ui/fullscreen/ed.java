package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import bym;
import com.twitter.android.moments.ui.fullscreen.Event.EventType;
import com.twitter.android.util.t;
import com.twitter.model.moments.viewmodels.MomentPage.Type;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.moments.core.ui.widget.capsule.b;
import com.twitter.util.r;
import com.twitter.util.y;
import com.twitter.util.z;

/* compiled from: Twttr */
public class ed implements OnPageChangeListener, r, z<Event> {
    private final t a;
    private final b b;
    private final TapHintView c;
    private final y<Event> d;
    private final bn<String, PageLoadingEvent> e;
    private boolean f;
    private final z<com.twitter.util.collection.z<String, PageLoadingEvent>> g;
    private boolean h;

    public ed(TapHintView tapHintView, t tVar, b bVar, y<Event> yVar, bn<String, PageLoadingEvent> bnVar) {
        this.g = new ee(this);
        this.c = tapHintView;
        this.a = tVar;
        this.b = bVar;
        this.d = yVar;
        this.e = bnVar;
        yVar.a(this);
        bnVar.a(this.g);
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i != 0) {
            e();
        }
    }

    private void d() {
        if (!this.h && this.a.a() && !this.f) {
            this.c.a();
            this.h = true;
        }
    }

    private void e() {
        if (this.h) {
            this.c.b();
            this.h = false;
        }
    }

    static boolean a(f fVar) {
        return (bym.e() || fVar.i() || fVar.j() || !fVar.a() || (fVar.d() != Type.b && fVar.d() != Type.c)) ? false : true;
    }

    public void a(Event event) {
        if (this.h && event.a() == EventType.TAP) {
            e();
            this.a.b();
        }
    }

    public void c() {
        this.d.b(this);
        this.e.c(this.g);
    }

    public void b() {
        this.f = false;
    }

    public void a() {
        this.f = true;
        e();
    }
}
