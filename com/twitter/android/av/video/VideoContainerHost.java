package com.twitter.android.av.video;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import com.twitter.library.widget.a;
import com.twitter.library.widget.c;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.util.h;

/* compiled from: Twttr */
public class VideoContainerHost extends AspectRatioFrameLayout implements c {
    k a;
    n b;
    private m d;

    public VideoContainerHost(Context context) {
        super(context);
        this.d = new m();
    }

    public VideoContainerHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new m();
    }

    public VideoContainerHost(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new m();
    }

    public a getAutoPlayableItem() {
        return this.a != null ? this.a : a.j;
    }

    @VisibleForTesting
    public void setVideoContainerFactory(m mVar) {
        h.d();
        this.d = mVar;
    }

    public void a() {
        if (this.a != null) {
            this.a.a();
            this.a = null;
        }
        this.b = null;
        removeAllViews();
    }

    public void setVideoContainerConfig(n nVar) {
        a();
        this.b = nVar;
        b();
    }

    public boolean a(n nVar) {
        return nVar == this.b;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.a == null && this.b != null) {
            b();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @VisibleForTesting
    void b() {
        removeAllViews();
        Activity activityContext = getActivityContext();
        if (this.b != null && activityContext != null) {
            this.a = this.d.a(activityContext, this, this.b.b, this.b.a, this.b.e);
            setAspectRatio(this.b.f.a());
            this.a.a(this.b.g);
            this.a.a(this.b.c, this.b.d);
            this.a.b();
        }
    }

    @VisibleForTesting
    void c() {
        if (this.a != null) {
            this.a.a(null);
            this.a.a();
            this.a = null;
        }
    }

    @VisibleForTesting
    Activity getActivityContext() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }
}
