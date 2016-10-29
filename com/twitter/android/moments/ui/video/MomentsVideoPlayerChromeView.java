package com.twitter.android.moments.ui.video;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import bsa;
import com.twitter.android.av.BaseVideoPlayerChromeView;
import crd;

/* compiled from: Twttr */
public class MomentsVideoPlayerChromeView extends BaseVideoPlayerChromeView {
    private final Interpolator l;
    private final int m;
    private final int n;
    private boolean o;

    public MomentsVideoPlayerChromeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = getResources();
        this.m = resources.getInteger(2131755056);
        this.n = resources.getDimensionPixelOffset(2131690180);
        this.l = crd.b();
    }

    protected void k() {
        if (this.b != null && this.b.getParent() == null) {
            addView(this.b);
            this.b.g();
            this.b.findViewById(2131952003).setBackgroundDrawable(null);
        }
    }

    public boolean f() {
        return false;
    }

    public void o() {
        a(false, true);
    }

    public void c(boolean z) {
        a(true, z);
        setVisibility(0);
    }

    public void p() {
        c(true);
    }

    protected boolean r() {
        return false;
    }

    public void q() {
    }

    public void h() {
    }

    protected void B() {
    }

    public void b_(boolean z) {
    }

    protected bsa n() {
        return null;
    }

    private void a(boolean z, boolean z2) {
        int i;
        float f = 1.0f;
        int i2 = 0;
        float f2 = z ? 1.0f : 0.0f;
        int i3 = z ? 0 : this.n;
        if (z) {
            f = 0.0f;
        }
        if (z) {
            i = this.n;
        } else {
            i = 0;
        }
        if (z2) {
            i2 = this.m;
        }
        if (!this.o) {
            setAlpha(f);
            setTranslationY((float) i);
        }
        this.o = true;
        animate().setDuration((long) i2).setInterpolator(this.l).translationY((float) i3).alpha(f2).setListener(new a(this, z)).start();
    }
}
