package com.twitter.android.av;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout.LayoutParams;
import com.twitter.android.periscope.f;
import com.twitter.android.periscope.i;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.model.av.a;
import defpackage.dce;
import tv.periscope.android.library.k;
import tv.periscope.android.player.c;
import tv.periscope.android.ui.broadcast.ChannelView;

/* compiled from: Twttr */
public class PeriscopeFullscreenChromeView extends GalleryVideoChromeView implements c {
    private f A;
    private ViewGroup B;
    private View v;
    private ChannelView w;
    private boolean x;
    private i y;
    private ViewGroup z;

    public PeriscopeFullscreenChromeView(Context context) {
        super(context);
    }

    public PeriscopeFullscreenChromeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void setupInternalViews(Context context) {
        super.setupInternalViews(context);
        this.v = LayoutInflater.from(context).inflate(2130969168, this, false);
        this.w = (ChannelView) this.v.findViewById(k.channel_view);
    }

    protected void k() {
        if (!(this.v == null || a(this.v))) {
            addView(this.v, 0);
        }
        if (!a((View) this.n)) {
            addView(this.n);
        }
    }

    public void a(int i, int i2) {
        if (this.w != null) {
            this.w.animate().translationY((float) (i2 * -1)).setDuration(150).start();
            for (View animate : this.w.getRightAlignedViews()) {
                animate.animate().translationX((float) (i * -1)).setDuration(150).start();
            }
        }
    }

    public void a(int i) {
        if (this.n != null) {
            this.n.animate().translationY((float) i).setDuration(150).start();
        }
    }

    protected void a(int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) this.n.getLayoutParams();
        int i5 = (layoutParams != null ? layoutParams.topMargin : 0) + i2;
        int height = this.n.getHeight() + i5;
        int width = ((i3 - i) - this.n.getWidth()) / 2;
        if (width > 0) {
            i += width;
            i3 -= width;
        }
        this.n.layout(i, i5, i3, height);
    }

    protected boolean E() {
        return false;
    }

    public void setIsLive(boolean z) {
        if (!this.y.a()) {
            Object obj = z != this.x ? 1 : null;
            this.x = z;
            J();
            if (obj != null) {
                I();
            }
        }
    }

    void J() {
        if (this.w == null) {
            return;
        }
        if (this.x) {
            this.w.setHeartsMarginFactor(2);
        } else {
            this.w.setHeartsMarginFactor(0);
        }
    }

    protected com.twitter.library.av.model.f b(a aVar) {
        return new aw((com.twitter.library.av.model.c) aVar, this.x);
    }

    public void a(PlayerStartType playerStartType) {
        S();
        super.a(playerStartType);
    }

    public void a(boolean z, long j) {
        super.a(z, j);
        getChannelView().c();
    }

    public void z() {
        super.z();
        M();
    }

    public void w() {
        super.w();
        getChannelView().c();
        M();
    }

    private void S() {
        if (this.z != null) {
            removeView(this.z);
        }
    }

    public TextureView getPreview() {
        return null;
    }

    public ChannelView getChannelView() {
        return this.w;
    }

    public void setThumbImageUrlLoader(dce dce) {
    }

    public void setPlayPauseClickListener(OnClickListener onClickListener) {
    }

    public boolean b(int i, long j) {
        return false;
    }

    public void K() {
    }

    public void a(String str) {
    }

    public void L() {
    }

    public void b(String str) {
        if (isShown()) {
            this.y.a(true);
            T();
        }
    }

    private void T() {
        boolean z = this.x;
        this.x = false;
        if (z) {
            I();
        }
        if (this.z == null) {
            this.z = (ViewGroup) LayoutInflater.from(getContext()).inflate(2130969167, this, false);
            this.B = (ViewGroup) this.z.findViewById(2131953023);
        }
        if (this.A != null) {
            this.A.a(new ax(this));
        }
        if (this.z.getParent() == null) {
            U();
            addView(this.z);
        }
    }

    private void U() {
        if (this.B != null) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            int min = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
            ViewGroup.LayoutParams layoutParams = this.B.getLayoutParams();
            layoutParams.width = min;
            this.B.setLayoutParams(layoutParams);
        }
    }

    public void M() {
        this.y.a(false);
        S();
    }

    public void a(float f) {
    }

    public void c(String str) {
    }

    public void N() {
    }

    public void O() {
    }

    public void P() {
    }

    public void Q() {
    }

    public void R() {
    }

    public void setPlayPauseAlpha(float f) {
    }

    public void setAppCardViewProvider(f fVar) {
        this.A = fVar;
    }

    public void setBroadcastProgress(i iVar) {
        this.y = iVar;
        if (this.y.a()) {
            T();
        } else {
            S();
        }
    }
}
