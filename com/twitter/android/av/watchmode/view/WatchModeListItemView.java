package com.twitter.android.av.watchmode.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.exoplayer.C;
import com.twitter.android.av.AutoPlayBadgeView;
import com.twitter.android.av.WatchModeVideoPlayerChromeView;
import com.twitter.android.av.bv;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.av.video.n;
import com.twitter.library.av.control.f;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.be;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.a;
import com.twitter.library.widget.c;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class WatchModeListItemView extends RelativeLayout implements OnClickListener, bv, x, f, c {
    @VisibleForTesting
    public d a;
    @VisibleForTesting
    d b;
    @VisibleForTesting
    VideoContainerHost c;
    @VisibleForTesting
    AspectRatioFrameLayout d;
    @VisibleForTesting
    AutoPlayBadgeView e;
    @VisibleForTesting
    TextView f;
    @VisibleForTesting
    TextView g;
    @VisibleForTesting
    TweetSummaryView h;
    @VisibleForTesting
    ViewGroup i;
    @VisibleForTesting
    WatchModeVideoPlayerChromeView j;
    @VisibleForTesting
    WatchModeScalingFrameLayout k;
    @VisibleForTesting
    LayoutParams l;
    @VisibleForTesting
    LayoutParams m;
    @VisibleForTesting
    LayoutParams n;
    @VisibleForTesting
    float o;
    @VisibleForTesting
    float p;
    @VisibleForTesting
    ColorStateList q;
    @VisibleForTesting
    ColorStateList r;
    @VisibleForTesting
    boolean s;
    @VisibleForTesting
    n t;
    @VisibleForTesting
    boolean u;
    @VisibleForTesting
    float v;
    private final r w;
    private final i x;
    private AVDataSource y;
    private o z;

    public WatchModeListItemView(Context context) {
        this(context, null);
    }

    public WatchModeListItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WatchModeListItemView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, new r(), new m());
    }

    @VisibleForTesting
    WatchModeListItemView(Context context, AttributeSet attributeSet, int i, r rVar, m mVar) {
        super(context, attributeSet, i);
        this.o = 1.0f;
        this.p = 1.0f;
        this.v = 0.55f;
        this.w = rVar;
        this.x = mVar.a(this);
    }

    public h getChromeView() {
        return this.j;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        Context context = getContext();
        this.d = (AspectRatioFrameLayout) findViewById(2131953389);
        this.c = (VideoContainerHost) findViewById(2131953391);
        this.i = (ViewGroup) findViewById(2131953393);
        inflate(context, 2130968636, this.i);
        this.e = (AutoPlayBadgeView) findViewById(2131951997);
        this.f = (TextView) findViewById(2131953394);
        this.g = (TextView) findViewById(2131953395);
        this.h = (TweetSummaryView) findViewById(2131953217);
        this.a = new d(this.h);
        this.d.setAspectRatio(3.0f);
        this.r = this.f.getTextColors();
        this.q = this.g.getTextColors();
        this.j = (WatchModeVideoPlayerChromeView) findViewById(2131952789);
        this.j.setOnChromeVisibilityChangeListener(this);
        this.k = (WatchModeScalingFrameLayout) findViewById(2131953390);
        this.b = new d(findViewById(2131953392));
        f();
        b();
        j();
        this.j.setControlsListener(this);
        setOnClickListener(this);
    }

    public void setVideoContainerConfig(n nVar) {
        boolean z = true;
        if (nVar != null) {
            this.t = nVar;
            if (!this.c.a(this.t)) {
                this.c.setVideoContainerConfig(this.t);
                requestLayout();
            } else {
                return;
            }
        }
        this.c.a();
        this.y = nVar != null ? nVar.a : null;
        if (this.y != null) {
            this.o = com.twitter.library.av.playback.h.a(this.y);
            Tweet b = this.y.b();
            int i = b != null ? 0 : 8;
            if (b != null) {
                boolean z2;
                this.f.setText(b.d());
                this.g.setText("@" + b.v);
                WatchModeVideoPlayerChromeView watchModeVideoPlayerChromeView = this.j;
                if (be.e(b)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                watchModeVideoPlayerChromeView.setShouldShowControls(z2);
            }
            this.f.setVisibility(i);
            this.g.setVisibility(i);
            this.e.setAVDataSource(this.y);
            a(this.y.b(), nVar.b);
            WatchModeVideoPlayerChromeView watchModeVideoPlayerChromeView2 = this.j;
            if (this.y.c() != 2) {
                z = false;
            }
            watchModeVideoPlayerChromeView2.setShouldPlayPauseOnTap(z);
        }
        setExpandedFraction(1.0f);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.u = false;
        a();
        if (configuration.orientation == 2) {
            c();
        } else {
            d();
        }
        requestLayout();
    }

    @VisibleForTesting
    void a() {
        if (this.s) {
            d();
            this.x.a();
            a(false);
        }
    }

    @VisibleForTesting
    void a(Tweet tweet, TwitterScribeAssociation twitterScribeAssociation) {
        int i = getResources().getConfiguration().orientation;
        if (tweet == null || twitterScribeAssociation == null) {
            this.h.setVisibility(8);
            return;
        }
        this.h.a(tweet, twitterScribeAssociation);
        if (i != 2) {
            this.h.setVisibility(0);
        } else {
            this.h.setVisibility(8);
        }
    }

    protected void onMeasure(int i, int i2) {
        if (this.w.b(getContext())) {
            c();
            i2 = MeasureSpec.makeMeasureSpec(this.w.a(getContext()), C.ENCODING_PCM_32BIT);
        } else if (!this.s) {
            d();
        }
        super.onMeasure(i, i2);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!getGlobalVisibleRect(new Rect())) {
            a();
        }
    }

    public void setExpandedFraction(float f) {
        float max = Math.max(Math.min(f, 1.0f), 0.0f);
        if (this.p != max) {
            this.p = max;
            b();
            this.h.setExpandedFraction(this.p);
            this.k.setExpandedFraction(this.p);
            if (this.p == 0.0f) {
                a();
                this.j.o();
            }
            j();
            requestLayout();
        }
        this.j.setCollapsed(this.p != 1.0f);
    }

    @VisibleForTesting
    void b() {
        float f;
        if (this.p > 0.5f) {
            f = ((this.p - 0.5f) * 0.55f) / 0.5f;
        } else {
            f = 0.0f;
        }
        f = 0.55f - f;
        int round = Math.round(255.0f * f);
        this.g.setTextColor(this.q.withAlpha(round));
        this.f.setTextColor(this.r.withAlpha(round));
        this.e.setAlpha(f);
    }

    public a getAutoPlayableItem() {
        return this.c.getAutoPlayableItem();
    }

    @VisibleForTesting
    void c() {
        g();
        setTweetSummaryViewLayoutParams(this.l);
        this.j.setShouldShowFullscreenButton(false);
    }

    @VisibleForTesting
    void d() {
        i();
        setTweetSummaryViewLayoutParams(this.m);
        this.j.setShouldShowFullscreenButton(h());
        this.h.setVisibility(0);
    }

    private boolean h() {
        if (this.t != null) {
            return this.t.f.c();
        }
        return true;
    }

    @VisibleForTesting
    void e() {
        g();
        setTweetSummaryViewLayoutParams(this.n);
        this.j.setShouldShowFullscreenButton(true);
    }

    @VisibleForTesting
    void setTweetSummaryViewLayoutParams(LayoutParams layoutParams) {
        if (this.h.getLayoutParams() != layoutParams) {
            this.h.setLayoutParams(layoutParams);
        }
    }

    @VisibleForTesting
    void f() {
        ViewGroup.LayoutParams layoutParams = this.h.getLayoutParams();
        this.l = new LayoutParams(layoutParams);
        this.l.addRule(12, -1);
        this.l.addRule(3, 0);
        this.m = new LayoutParams(layoutParams);
        this.m.addRule(3, 2131953389);
        this.m.addRule(12, -1);
        this.n = new LayoutParams(layoutParams);
        this.n.addRule(12, -1);
        this.n.addRule(3, 0);
    }

    private void i() {
        a((float) getMeasuredWidth());
    }

    @VisibleForTesting
    void g() {
        this.d.setAspectRatio(-1.0f);
    }

    @VisibleForTesting
    void a(float f) {
        this.d.setAspectRatio(Math.min(f / ((f / this.o) * this.p), 3.0f));
    }

    @VisibleForTesting
    void a(boolean z) {
        this.s = z;
        this.j.setIsFullscreen(z);
    }

    public void w() {
    }

    public void y() {
    }

    public void z() {
    }

    public void x() {
        if (!this.u) {
            boolean z = !this.s;
            c(z);
            if (z) {
                this.x.b(new p(this, z));
            } else {
                this.x.a(new q(this, z));
            }
        }
    }

    private void c(boolean z) {
        if (this.z == null) {
            return;
        }
        if (z) {
            this.z.d();
        } else {
            this.z.f();
        }
    }

    public void a(boolean z, long j) {
    }

    public void a(int i) {
        if ((i == 2 || this.s) && this.a != null) {
            this.a.a();
        }
    }

    public void b(int i) {
        if ((i == 2 || this.s) && this.a != null) {
            this.a.b();
        }
    }

    protected void setScrollClickListener(s sVar) {
        this.j.setScrollClickListener(sVar);
    }

    protected void setFullscreenListener(o oVar) {
        this.z = oVar;
    }

    public int getExpandedHeight() {
        return (int) ((((float) getMeasuredWidth()) / this.o) + ((float) this.h.getPreferredHeight()));
    }

    public void setActive(boolean z) {
        float f = z ? 0.55f : 0.7f;
        if (f != this.v) {
            this.v = f;
            b(true);
        }
    }

    public void onClick(View view) {
        getChromeView().f();
    }

    private void j() {
        b(false);
    }

    @VisibleForTesting
    void b(boolean z) {
        float f;
        int i = 0;
        if (this.p == 0.0f) {
            f = this.v;
            if (z) {
                i = 400;
            }
        } else {
            f = this.v - (this.p * this.v);
        }
        this.b.a(f, i);
    }
}
