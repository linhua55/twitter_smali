package com.twitter.android.av;

import android.content.Context;
import android.view.View;
import com.twitter.model.av.AVMedia;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.d;

/* compiled from: Twttr */
public abstract class FullscreenRevenueCardCanvasChromeView extends BaseVideoPlayerChromeView {
    protected TwitterButton l;
    protected View m;

    protected abstract void E();

    protected abstract void F();

    protected abstract TwitterButton c(Context context);

    protected abstract View d(Context context);

    public FullscreenRevenueCardCanvasChromeView(Context context) {
        super(context);
    }

    protected void setupInternalViews(Context context) {
        if (this.b == null) {
            this.b = a(context);
        }
        if (this.b != null) {
            this.b.setListener(this);
            this.b.setIsFullScreenToggleAllowed(false);
        }
        if (this.l == null) {
            this.l = c(context);
        }
        if (this.m == null) {
            this.m = d(context);
        }
        E();
        F();
    }

    protected void k() {
        if (this.b != null && this.b.getParent() == null) {
            addView(this.b);
        }
        if (this.l != null && this.l.getParent() == null) {
            addView(this.l);
        }
        if (this.m != null && this.m.getParent() == null) {
            addView(this.m);
        }
    }

    public void a(AVMedia aVMedia) {
        super.a(aVMedia);
        p();
    }

    protected void A() {
        super.A();
        if (this.m != null) {
            this.m.setVisibility(8);
        }
        if (this.l != null) {
            this.l.setVisibility(0);
        }
    }

    protected void B() {
        super.B();
        if (this.m != null) {
            this.m.setVisibility(0);
        }
        if (this.l != null) {
            this.l.setVisibility(8);
        }
    }

    public void i() {
        u();
    }

    protected void p() {
        super.p();
        if (this.l != null && !this.c) {
            d.b(this.l);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.b != null) {
            this.b.layout(i, i4 - this.b.getMeasuredHeight(), i3, i4);
        }
        if (this.h != null) {
            this.h.a(z, i, i2, i3, i4);
        }
        if (this.m != null) {
            int i5 = (i3 + i) >> 1;
            int i6 = (i4 + i2) >> 1;
            int measuredWidth = this.m.getMeasuredWidth() >> 1;
            int measuredHeight = this.m.getMeasuredHeight() >> 1;
            this.m.layout(i5 - measuredWidth, i6 - measuredHeight, i5 + measuredWidth, i6 + measuredHeight);
        }
    }

    public void a() {
        super.a();
        B();
    }
}
