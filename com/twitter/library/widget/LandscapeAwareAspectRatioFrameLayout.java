package com.twitter.library.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import com.google.android.exoplayer.text.Cue;
import com.twitter.media.ui.image.AspectRatioFrameLayout;

/* compiled from: Twttr */
public class LandscapeAwareAspectRatioFrameLayout extends AspectRatioFrameLayout {
    private final v a;
    private int b;
    private int d;
    private boolean e;

    public LandscapeAwareAspectRatioFrameLayout(Context context) {
        this(context, new v());
    }

    public LandscapeAwareAspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = -2;
        this.e = true;
        this.a = new v();
        this.d = getScaleMode();
    }

    public LandscapeAwareAspectRatioFrameLayout(Context context, v vVar) {
        super(context);
        this.b = -2;
        this.e = true;
        this.a = vVar;
        this.d = getScaleMode();
    }

    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new LayoutParams(-1, this.b);
            } else {
                layoutParams.height = this.b;
                layoutParams.width = -1;
            }
            setLayoutParams(layoutParams);
        }
    }

    protected void onMeasure(int i, int i2) {
        b();
        if (this.b > 0) {
            super.onMeasure(i, MeasureSpec.makeMeasureSpec(this.b, Cue.TYPE_UNSET));
        } else {
            super.onMeasure(i, i2);
        }
    }

    protected void onConfigurationChanged(Configuration configuration) {
        int scaleMode = getScaleMode();
        b();
        this.d = scaleMode;
    }

    private void b() {
        Context context = getContext();
        if (this.a.b(context) && this.e) {
            setScaleMode(3);
            if (this.a.a(context) > 0) {
                this.b = this.a.a(context);
                return;
            }
            return;
        }
        this.b = -2;
        setScaleMode(this.d);
    }

    public void a() {
        this.e = false;
    }
}
