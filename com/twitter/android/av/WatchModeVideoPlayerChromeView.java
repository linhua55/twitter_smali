package com.twitter.android.av;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.android.av.watchmode.view.s;
import com.twitter.library.av.control.VideoControlView;
import com.twitter.library.av.control.j;
import com.twitter.library.av.playback.AVPlayer;

/* compiled from: Twttr */
public class WatchModeVideoPlayerChromeView extends FullscreenVideoPlayerChromeView {
    private boolean v;
    private bv w;
    private boolean x;
    private s y;

    public WatchModeVideoPlayerChromeView(Context context) {
        this(context, null);
    }

    public WatchModeVideoPlayerChromeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, new j(), new as());
        this.x = true;
    }

    public WatchModeVideoPlayerChromeView(Context context, j jVar, as asVar) {
        super(context, null, jVar, asVar);
        this.x = true;
    }

    protected VideoControlView a(Context context) {
        VideoControlView a = super.a(context);
        if (a != null) {
            View controlBarView = a.getControlBarView();
            if (controlBarView != null) {
                controlBarView.setBackground(context.getResources().getDrawable(2130837609));
            }
        }
        return a;
    }

    protected boolean H() {
        return false;
    }

    boolean G() {
        return false;
    }

    protected boolean r() {
        return false;
    }

    protected boolean C() {
        return false;
    }

    protected boolean D() {
        return this.x;
    }

    public void setShouldShowFullscreenButton(boolean z) {
        this.x = z;
        m();
    }

    protected void p() {
        if (!this.v) {
            if (this.w != null) {
                this.w.a(getResources().getConfiguration().orientation);
            }
            super.p();
        }
    }

    public void o() {
        if (this.w != null) {
            this.w.b(getResources().getConfiguration().orientation);
        }
        super.o();
    }

    public boolean s() {
        return true;
    }

    public boolean f() {
        if (this.v) {
            if (this.y == null) {
                return false;
            }
            AVPlayer aVPlayer = getAVPlayer();
            if (aVPlayer == null) {
                return false;
            }
            this.y.a(aVPlayer.e().c());
            return false;
        } else if (this.a == null) {
            return false;
        } else {
            if (!this.t) {
                return super.f();
            }
            this.a.o();
            return true;
        }
    }

    public void setCollapsed(boolean z) {
        this.v = z;
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.w == null) {
            return;
        }
        if (F()) {
            this.w.a(configuration.orientation);
        } else {
            this.w.b(configuration.orientation);
        }
    }

    public void c() {
        if (!this.v) {
            t();
        }
    }

    protected void B() {
    }

    public void setOnChromeVisibilityChangeListener(bv bvVar) {
        this.w = bvVar;
    }

    public void setScrollClickListener(s sVar) {
        this.y = sVar;
    }
}
