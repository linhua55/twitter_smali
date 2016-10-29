package com.twitter.android.av;

import android.content.Context;
import com.twitter.library.av.control.VideoControlView;
import com.twitter.library.av.control.g;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
public class EngagementOnlyChromeView extends FullscreenVideoPlayerChromeView {
    public EngagementOnlyChromeView(Context context) {
        this(context, new as());
    }

    EngagementOnlyChromeView(Context context, as asVar) {
        super(context, null, new g(), asVar);
    }

    protected VideoControlView a(Context context) {
        return null;
    }

    public void a(AVMedia aVMedia) {
        super.a(aVMedia);
        p();
    }

    protected void v() {
    }

    protected void B() {
    }

    public void i() {
        u();
    }

    public boolean f() {
        if (this.a == null) {
            return false;
        }
        this.a.o();
        return true;
    }
}
