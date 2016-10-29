package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.TransitionDrawable;
import android.hardware.Camera;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.mx;
import com.twitter.android.util.j;
import com.twitter.android.widget.MultiToggleButton;
import com.twitter.android.widget.cs;
import com.twitter.util.h;
import defpackage.bcu;
import java.util.Set;

/* compiled from: Twttr */
public class CameraToolbar extends LinearLayout implements OnTouchListener, cs {
    public final TextView a;
    private final ImageView b;
    private final MultiToggleButton c;
    private final ImageButton d;
    private final Animation e;
    private final Animation f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private n m;

    public CameraToolbar(Context context) {
        this(context, null, 0);
    }

    public CameraToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CameraToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(context, 2130968659, this);
        this.b = (ImageView) findViewById(2131952031);
        this.b.setOnClickListener(new k(this));
        this.c = (MultiToggleButton) findViewById(2131952032);
        this.c.setOnTouchListener(this);
        this.c.setOnToggleListener(this);
        this.d = (ImageButton) findViewById(2131952033);
        if (Camera.getNumberOfCameras() < 2) {
            this.d.setVisibility(8);
        } else {
            this.d.setOnTouchListener(this);
        }
        this.a = (TextView) findViewById(2131951937);
        this.e = AnimationUtils.loadAnimation(context, 2131034140);
        this.e.setAnimationListener(new l(this));
        this.f = AnimationUtils.loadAnimation(context, 2131034141);
        this.f.setAnimationListener(new m(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.CameraToolbar, i, 0);
        try {
            this.g = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.h = obtainStyledAttributes.getDimensionPixelSize(1, 0);
            this.i = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
            this.j = obtainStyledAttributes.getDimensionPixelSize(3, 0);
            this.k = obtainStyledAttributes.getDimensionPixelSize(4, 0);
            this.l = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
            onConfigurationChanged(getResources().getConfiguration());
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(int i) {
        h.b(!j.d());
        j.a(this.c, i, 300, 2131034164);
        j.a(this.d, i, 300, 2131034164);
    }

    public void a(MultiToggleButton multiToggleButton, CharSequence charSequence) {
        if (this.m != null && multiToggleButton == this.c) {
            this.m.a(charSequence);
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!isEnabled() || this.m == null) {
            return false;
        }
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case Util.TYPE_DASH /*0*/:
                ((TransitionDrawable) view.getBackground()).startTransition(0);
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                ((TransitionDrawable) view.getBackground()).reverseTransition(300);
                if (j.a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    if (view == this.d) {
                        this.m.b();
                        return true;
                    } else if (view == this.c) {
                        this.c.performClick();
                    }
                }
                return false;
            case Util.TYPE_OTHER /*3*/:
                ((TransitionDrawable) view.getBackground()).reverseTransition(300);
                return false;
            default:
                return false;
        }
    }

    public void setOnCameraToolbarClickListener(n nVar) {
        this.m = nVar;
    }

    public void a(Set<CharSequence> set, CharSequence charSequence) {
        this.c.a(set, charSequence);
    }

    public void setControlsEnabled(boolean z) {
        this.b.setEnabled(z);
        setFlashEnabled(z);
        setFlipCameraButtonEnabled(z);
        this.a.setEnabled(z);
    }

    public void a(CharSequence charSequence) {
        if (charSequence.equals("flash")) {
            this.c.b();
        }
    }

    public void setDoneButtonEnabled(boolean z) {
        int i = z ? 0 : 8;
        this.a.setVisibility(i);
        findViewById(2131952034).setVisibility(i);
    }

    public void setFlipCameraButtonEnabled(boolean z) {
        if (this.d.isEnabled() != z) {
            this.d.setEnabled(z);
            this.d.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    public void setFlashEnabled(boolean z) {
        this.c.setEnabled(z);
        this.c.setAlpha(z ? 1.0f : 0.5f);
    }

    public void a(int i, int i2, int i3, int i4) {
        measure(MeasureSpec.makeMeasureSpec(i3 - i, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(i4 - i2, C.ENCODING_PCM_32BIT));
        layout(i, i2, i3, i4);
    }

    public void a(boolean z) {
        clearAnimation();
        if (getVisibility() == 0) {
            return;
        }
        if (z) {
            startAnimation(this.e);
        } else {
            setVisibility(0);
        }
    }

    public void b(boolean z) {
        clearAnimation();
        if (getVisibility() != 0) {
            return;
        }
        if (z) {
            startAnimation(this.f);
        } else {
            setVisibility(8);
        }
    }

    protected void onConfigurationChanged(Configuration configuration) {
        Resources resources = getResources();
        setBackgroundDrawable(resources.getDrawable(2130837605));
        if (configuration.orientation == 1) {
            this.b.setImageResource(2130839111);
            this.a.setTextColor(resources.getColor(bcu.twitter_blue));
            setPadding(this.k, 0, this.k, this.l);
        } else {
            this.b.setImageResource(2130839112);
            this.a.setTextColor(resources.getColor(bcu.white));
            setPadding(this.h, 0, this.h, this.i);
        }
        requestLayout();
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(getResources().getConfiguration().orientation == 1 ? this.j : this.g, C.ENCODING_PCM_32BIT));
    }
}
