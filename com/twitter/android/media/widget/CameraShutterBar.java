package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.mx;
import com.twitter.android.util.j;
import com.twitter.util.h;

/* compiled from: Twttr */
public class CameraShutterBar extends FrameLayout {
    public final CameraModeButton a;
    private final ImageView b;
    private final ImageView c;
    private final View d;
    private final Animation e;
    private final Animation f;
    private final Animation g;
    private final Animation h;
    private final int i;
    private final int j;
    private h k;
    private boolean l;
    private i m;
    private int n;
    private int o;

    public CameraShutterBar(Context context) {
        this(context, null);
    }

    public CameraShutterBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CameraShutterBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = 0;
        this.o = 0;
        if (attributeSet == null) {
            this.i = 0;
            this.j = 0;
        } else {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.CameraShutterBar, i, 0);
            try {
                this.i = obtainStyledAttributes.getDimensionPixelSize(0, 0);
                this.j = obtainStyledAttributes.getDimensionPixelSize(1, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        View inflate = inflate(context, 2130968662, this);
        this.a = (CameraModeButton) inflate.findViewById(2131952051);
        this.d = inflate.findViewById(2131952052);
        this.b = (ImageView) this.d.findViewById(2131952053);
        this.c = (ImageView) this.d.findViewById(2131952054);
        this.f = AnimationUtils.loadAnimation(context, 2131034138);
        this.e = AnimationUtils.loadAnimation(context, 2131034139);
        this.g = AnimationUtils.loadAnimation(context, 2131034137);
        this.h = AnimationUtils.loadAnimation(context, 2131034136);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.k == null) {
            return false;
        }
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case Util.TYPE_DASH /*0*/:
                if (!this.k.a(this, motionEvent)) {
                    return false;
                }
                this.a.clearAnimation();
                this.b.clearAnimation();
                this.c.clearAnimation();
                this.c.setVisibility(4);
                a();
                ((TransitionDrawable) getBackground()).startTransition(0);
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Util.TYPE_OTHER /*3*/:
                a();
                ((TransitionDrawable) getBackground()).reverseTransition(300);
                break;
        }
        return this.k.a(this, motionEvent);
    }

    public void a(int i, boolean z) {
        if (this.n != i) {
            this.n = i;
            this.o = 0;
            b(z);
            if (this.l) {
                this.a.setVisibility(0);
            }
            this.a.a(i, z);
            if (i == 2) {
                this.c.setImageResource(2130839103);
                this.b.setImageResource(2130839114);
            } else {
                this.c.setImageResource(2130839114);
                this.b.setImageResource(2130839103);
            }
            if (z) {
                this.c.setVisibility(0);
                if (this.d.getRotation() == 0.0f) {
                    this.c.startAnimation(this.e);
                    this.b.startAnimation(this.f);
                    return;
                }
                this.c.startAnimation(this.g);
                this.b.startAnimation(this.h);
                return;
            }
            this.c.setVisibility(4);
        }
    }

    public void setVideoModeAvailable(boolean z) {
        this.l = z;
        this.a.setVisibility(z ? 0 : 8);
    }

    public void a(boolean z) {
        this.a.setVisibility(z ? 0 : 4);
    }

    public void a(int i) {
        int i2 = 0;
        h.b(!j.d());
        if (getVisibility() == 0) {
            i2 = 300;
        }
        j.a(this.a, i, i2, 2131034164);
        j.a(this.d, i, i2, 2131034164);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.a.setEnabled(z);
        this.d.setEnabled(z);
    }

    public void setShutterButtonMode(int i) {
        if (this.o != i) {
            this.o = i;
            if (this.n == 2) {
                this.b.setImageResource(i == 1 ? 2130839115 : 2130839114);
            }
        }
    }

    public void setCameraShutterBarListener(h hVar) {
        this.k = hVar;
    }

    protected void onMeasure(int i, int i2) {
        if (getOrientation() == 1) {
            i2 = MeasureSpec.makeMeasureSpec(this.j, C.ENCODING_PCM_32BIT);
        } else {
            i = MeasureSpec.makeMeasureSpec(this.i, C.ENCODING_PCM_32BIT);
        }
        super.onMeasure(i, i2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.a.setLayoutGravity(getOrientation() == 1 ? 19 : 81);
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onConfigurationChanged(Configuration configuration) {
        requestLayout();
    }

    private int getOrientation() {
        return getResources().getConfiguration().orientation;
    }

    private void b(boolean z) {
        Drawable drawable;
        a();
        Resources resources = getResources();
        if (this.n == 2) {
            Drawable drawable2 = (TransitionDrawable) resources.getDrawable(2130837716);
            drawable2.setCrossFadeEnabled(resources.getConfiguration().orientation == 2);
            drawable = drawable2;
        } else {
            drawable = (TransitionDrawable) resources.getDrawable(2130837715);
        }
        if (z) {
            startAnimation(new i(this, (TransitionDrawable) getBackground(), drawable));
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    private void a() {
        clearAnimation();
        if (this.m != null) {
            this.m.onAnimationEnd(this.m);
        }
    }
}
