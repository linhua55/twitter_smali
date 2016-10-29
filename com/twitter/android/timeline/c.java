package com.twitter.android.timeline;

import android.content.res.Resources;
import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import android.view.View.OnClickListener;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.android.widget.cw;
import com.twitter.app.common.inject.n;
import com.twitter.model.timeline.NotificationType;
import com.twitter.model.timeline.bk;

/* compiled from: Twttr */
public class c implements bj, n<NewTweetsBannerState> {
    static final String a;
    private final NewItemBannerView b;
    private final bk c;
    private final cw d;
    private final OnClickListener e;
    private final Runnable f;
    private boolean g;
    private boolean h;
    private boolean i;
    private bk j;

    public /* synthetic */ Parcelable c() {
        return o();
    }

    static {
        a = c.class.getName() + "_saved_state_id";
    }

    protected c(NewItemBannerView newItemBannerView, bk bkVar, NewTweetsBannerState newTweetsBannerState) {
        this.d = new f();
        this.e = new d(this);
        this.f = new e(this);
        this.b = newItemBannerView;
        this.c = bkVar;
        if (newTweetsBannerState != null) {
            this.g = newTweetsBannerState.a;
            this.j = newTweetsBannerState.b;
            this.i = newTweetsBannerState.c;
            return;
        }
        this.g = false;
        this.j = a(this.b.getResources());
        this.i = false;
    }

    public void d() {
        this.b.setOnClickListener(this.e);
        this.b.setDisplayListener(this.d);
        a(this.j, this.g);
        if (e()) {
            this.b.setVisibility(0);
            v();
        }
    }

    protected boolean e() {
        return this.i;
    }

    public void f() {
        this.b.removeCallbacks(this.f);
    }

    public void g() {
    }

    protected boolean h() {
        return this.g;
    }

    public void i() {
        this.b.setVisibility(8);
    }

    public void j() {
        s();
        u();
    }

    public void k() {
        this.g = false;
    }

    public void l() {
    }

    public void m() {
    }

    public void a(int i, boolean z, bk bkVar) {
        if (i > 0) {
            if (!n()) {
                if (z) {
                    bkVar = a(this.b.getResources());
                }
            }
            if (a(bkVar, true)) {
                p();
            }
        }
        bkVar = null;
        if (a(bkVar, true)) {
            p();
        }
    }

    boolean n() {
        return false;
    }

    public void a(int i) {
        this.b.a(0, i, 0, 0);
    }

    public String aF_() {
        return a;
    }

    public NewTweetsBannerState o() {
        return new NewTweetsBannerState(this.g, this.j, this.i);
    }

    @VisibleForTesting
    boolean p() {
        boolean z = false;
        if (q()) {
            if (this.h) {
                this.h = false;
            } else {
                if (this.g && this.b.c()) {
                    z = true;
                }
                if (z) {
                    b();
                }
            }
        }
        return z;
    }

    protected boolean q() {
        return true;
    }

    protected void r() {
        this.c.J();
    }

    @VisibleForTesting
    boolean s() {
        return this.b.b();
    }

    @VisibleForTesting
    void t() {
        this.h = !this.b.isShown();
    }

    private boolean a(bk bkVar, boolean z) {
        if (bkVar == null || bkVar.b != NotificationType.b) {
            return false;
        }
        this.g = z;
        this.j = bkVar;
        this.b.setMinDelaySinceLastDisplayed(bkVar.d);
        this.b.setText(bkVar.c);
        return true;
    }

    private void b() {
        this.c.Z_();
    }

    private void u() {
        this.c.H();
    }

    private void v() {
        this.b.removeCallbacks(this.f);
        this.b.postDelayed(this.f, this.j.e);
    }

    protected bk a(Resources resources) {
        return new bk(NotificationType.b, resources.getString(2131363135), 240000, 3000);
    }
}
