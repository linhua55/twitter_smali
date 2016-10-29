package com.twitter.android.av;

import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.widget.EngagementActionBar;
import com.twitter.config.d;
import com.twitter.library.av.control.VideoControlView;
import com.twitter.library.av.control.g;
import com.twitter.library.av.model.f;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.a;

/* compiled from: Twttr */
public class FullscreenVideoPlayerChromeView extends BaseVideoPlayerChromeView implements am {
    protected final as l;
    protected EngagementActionBar m;
    protected ExternalActionButton n;
    protected f o;
    protected String p;
    protected ViewGroup q;
    protected View r;
    protected View s;
    protected boolean t;

    public FullscreenVideoPlayerChromeView(Context context) {
        this(context, null);
    }

    public FullscreenVideoPlayerChromeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, new g(), new as());
    }

    public FullscreenVideoPlayerChromeView(Context context, AttributeSet attributeSet, as asVar) {
        this(context, attributeSet, new g(), asVar);
    }

    public FullscreenVideoPlayerChromeView(Context context, g gVar, as asVar) {
        this(context, null, gVar, asVar);
    }

    public FullscreenVideoPlayerChromeView(Context context, AttributeSet attributeSet, g gVar, as asVar) {
        super(context, attributeSet, gVar);
        this.l = asVar;
        setupEngagementActionBar(context);
    }

    protected void k() {
        if (!a(this.q)) {
            addView(this.q);
        }
        if (!a(this.d)) {
            addView(this.d);
        }
        if (!a((View) this.n) && G()) {
            addView(this.n);
        }
        if (!(a((View) this.b) || this.b == null)) {
            addView(this.b);
        }
        if (!a((View) this.m)) {
            addView(this.m);
        }
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        super.a(aVPlayerAttachment);
        this.l.a(getContext(), aVPlayerAttachment.a());
        I();
    }

    protected void setupInternalViews(Context context) {
        super.setupInternalViews(context);
        LayoutInflater from = LayoutInflater.from(context);
        if (this.n == null) {
            this.n = (ExternalActionButton) from.inflate(2130968641, this, false);
            this.n.setVisibility(8);
            this.n.setEventLister(this);
        }
        if (this.q == null) {
            this.q = (ViewGroup) from.inflate(2130968642, this, false);
        }
        this.r = this.q.findViewById(2131952007);
        this.r.setOnClickListener(this);
        this.r.setVisibility(8);
        this.s = this.q.findViewById(2131952008);
        this.s.setVisibility(8);
    }

    private void setupEngagementActionBar(Context context) {
        if (this.m == null) {
            this.m = this.l.a(context, this);
            int color = context.getResources().getColor(2131886185);
            this.m.setVisibility(8);
            this.m.setBackgroundColor(color);
        }
    }

    protected VideoControlView a(Context context) {
        return this.j.b(context);
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        J();
        a(configuration.orientation);
    }

    private void a(int i) {
        if ((F() || i == 1 || this.c) && this.o != null && this.o.a() && G()) {
            this.n.setVisibility(0);
        }
        if (i == 2 && E()) {
            this.n.setVisibility(8);
        }
    }

    protected boolean E() {
        return !F();
    }

    private void J() {
        EngagementActionBar engagementActionBar = this.m;
        if (H() && F()) {
            engagementActionBar.setVisibility(0);
        } else if (!H()) {
            engagementActionBar.setVisibility(8);
        }
    }

    boolean F() {
        return this.b != null && b(this.b) && this.b.i();
    }

    boolean G() {
        return d.a("video_call_to_action_enabled");
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(z, i, i2, i3, i4);
    }

    protected void a(boolean z, int i, int i2, int i3, int i4) {
        int height;
        int height2;
        if (H()) {
            height = i4 - this.m.getHeight();
            this.m.layout(i, height, i3, i4);
        } else {
            height = i4;
        }
        if (this.b != null) {
            height2 = height - this.b.getHeight();
            this.b.layout(i, height2, i3, height);
            height = height2;
        }
        a(i, i2, i3, height);
        int height3 = (((i4 - i2) + this.d.getHeight()) + this.n.getPaddingBottom()) / 2;
        int height4 = height3 - this.d.getHeight();
        height = ((i3 - i) - this.d.getWidth()) / 2;
        if (height > 0) {
            height2 = i + height;
            height = i3 - height;
        } else {
            height = i3;
            height2 = i;
        }
        this.d.layout(height2, height4, height, height3);
        if (this.h != null) {
            this.h.a(z, i, i2, i3, i4);
        }
    }

    protected void a(int i, int i2, int i3, int i4) {
        int paddingBottom = i4 - this.n.getPaddingBottom();
        int height = paddingBottom - this.n.getHeight();
        int width = ((i3 - i) - this.n.getWidth()) / 2;
        if (width > 0) {
            i += width;
            i3 -= width;
        }
        this.n.layout(i, height, i3, paddingBottom);
    }

    protected void o() {
        super.o();
        int i = getResources().getConfiguration().orientation;
        if (H() && b(this.m)) {
            com.twitter.util.d.a(this.m);
        }
        if (G() && b(this.n) && i != 1) {
            com.twitter.util.d.a(this.n);
        } else if (i == 1) {
        }
    }

    protected void p() {
        super.p();
        if (H() && !b(this.m)) {
            com.twitter.util.d.b(this.m);
        }
        if (G() && !b(this.n) && this.o != null && this.o.a()) {
            com.twitter.util.d.b(this.n);
        }
    }

    protected boolean b(View view) {
        return view.getParent() != null && view.getVisibility() == 0;
    }

    protected boolean H() {
        return K() && this.l.a(getContext());
    }

    private boolean K() {
        return (this.a == null || this.a.h().c().b() == null) ? false : true;
    }

    public void a(PlayerStartType playerStartType) {
        super.a(playerStartType);
        I();
    }

    void I() {
        a aVar = null;
        AVPlayer aVPlayer = getAVPlayer();
        AVMedia D = aVPlayer != null ? aVPlayer.D() : null;
        if (D != null) {
            aVar = D.f();
            this.p = D.c();
        }
        a(aVar);
    }

    protected void a(a aVar) {
        this.o = b(aVar);
        if (this.o.a()) {
            Context context = getContext();
            Uri c = this.o.c();
            Uri a = this.o.a(context);
            if (c != null) {
                this.n.setFallbackText(this.o.b(context));
                this.n.setFallbackUri(a);
                this.n.setActionText(this.o.c(context));
                this.n.setExternalUri(c);
            }
            this.n.a(c);
            return;
        }
        this.n.setVisibility(8);
    }

    protected f b(a aVar) {
        return new f(aVar);
    }

    public void a(boolean z) {
        AVPlayer aVPlayer = getAVPlayer();
        if (aVPlayer != null && this.o != null && this.o.a()) {
            Bundle i = aVPlayer.i();
            String str = "impression_scribed." + this.p;
            boolean z2 = i.getBoolean(str, false);
            boolean z3 = i.getBoolean("cta_availability", false);
            if (!z2 || z3 != z) {
                i.putBoolean(str, true);
                i.putBoolean("cta_availability", z);
                aVPlayer.a(this.o.a(z));
            }
        }
    }

    public void b(boolean z) {
        AVPlayer aVPlayer = getAVPlayer();
        if (aVPlayer != null && this.o != null) {
            aVPlayer.a(this.o.b(!z));
        }
    }

    public void setShouldPlayPauseOnTap(boolean z) {
        this.t = z;
    }
}
