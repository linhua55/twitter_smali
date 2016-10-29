package com.twitter.android.media.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.exoplayer.util.Util;
import com.twitter.android.mx;
import defpackage.bdd;

/* compiled from: Twttr */
public class CameraModeButton extends ImageView {
    private final Animation a;
    private final int b;
    private int c;
    private int d;
    private g e;

    public CameraModeButton(Context context) {
        this(context, null, 0);
    }

    public CameraModeButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CameraModeButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.CameraModeButton, i, 0);
        try {
            this.b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.a = AnimationUtils.loadAnimation(context, 2131034128);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(int i, boolean z) {
        if (i != 0) {
            if (i == 2) {
                this.c = 1;
                setImageResource(2130839102);
                setBackgroundDrawable(getResources().getDrawable(2130838705));
            } else {
                this.c = 2;
                setImageResource(2130839113);
                setBackgroundDrawable(getResources().getDrawable(2130840186));
            }
            if (z && getVisibility() == 0) {
                startAnimation(this.a);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0 && this.c != 0 && this.e != null && isEnabled()) {
            clearAnimation();
            playSoundEffect(0);
            this.e.a(this.c);
        }
        return true;
    }

    public void setLayoutParams(LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        a();
    }

    public void setLayoutGravity(int i) {
        this.d = i;
        a();
    }

    public void setListener(g gVar) {
        this.e = gVar;
    }

    @SuppressLint({"RtlHardcoded"})
    private void a() {
        int i = 0;
        LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            int i2;
            int i3;
            int i4;
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.gravity = this.d;
            switch (this.d & 7) {
                case Util.TYPE_OTHER /*3*/:
                    i2 = this.b;
                    i3 = 0;
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    i3 = this.b;
                    i2 = 0;
                    break;
                default:
                    i3 = 0;
                    i2 = 0;
                    break;
            }
            switch (this.d & 112) {
                case bdd.AppCompatTheme_homeAsUpIndicator /*48*/:
                    i4 = this.b;
                    break;
                case bdd.AppCompatTheme_panelMenuListTheme /*80*/:
                    i4 = 0;
                    i = this.b;
                    break;
                default:
                    i4 = 0;
                    break;
            }
            layoutParams2.setMargins(i2, i4, i3, i);
            requestLayout();
        }
    }
}
