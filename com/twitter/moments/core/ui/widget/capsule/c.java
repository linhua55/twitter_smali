package com.twitter.moments.core.ui.widget.capsule;

import android.animation.ObjectAnimator;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.animation.Interpolator;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.twitter.util.math.b;
import defpackage.crd;

/* compiled from: Twttr */
public class c implements OnPageChangeListener, OnSeekBarChangeListener {
    private final int a;
    private final b b;
    private final Drawable c;
    private final SeekBar d;
    private final Interpolator e;
    private boolean f;
    private final int g;

    public c(int i, b bVar, Drawable drawable, SeekBar seekBar, float f) {
        this.e = crd.b();
        this.a = i;
        this.b = bVar;
        this.c = drawable;
        this.g = (int) (1000.0f * f);
        this.d = seekBar;
        this.d.setMax(1000);
        this.d.setProgress(this.g);
        this.d.setOnSeekBarChangeListener(this);
    }

    private int a(int i) {
        return (int) b.a((float) this.g, 1000.0f, ((float) i) / 1000.0f, true);
    }

    private float b(int i) {
        return (((float) (i - this.g)) / ((float) (1000 - this.g))) * 1000.0f;
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (!this.f) {
            int b = this.b.b();
            this.d.setProgress(a((int) (((double) (((float) ((i * b) + i2)) / ((float) (b * (this.a - 1))))) * 1000.0d)));
        }
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            int b = (int) (((double) (b(i) / 1000.0f)) * ((double) this.a));
            if (this.b.a() != b) {
                this.b.a(b, true);
            }
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f = true;
        a();
        seekBar.setThumb(this.c);
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        this.f = false;
        seekBar.setThumb(null);
        ObjectAnimator ofInt = ObjectAnimator.ofInt(seekBar, "progress", new int[]{a((this.b.a() * 1000) / (this.a - 1))});
        ofInt.setDuration(200);
        ofInt.setInterpolator(this.e);
        ofInt.start();
    }

    private void a() {
        int height = (this.d.getHeight() - this.d.getPaddingTop()) - this.d.getPaddingBottom();
        int intrinsicHeight = this.c.getIntrinsicHeight();
        height = (height / 2) - (intrinsicHeight / 2);
        this.c.setBounds(0, height, this.c.getIntrinsicWidth(), intrinsicHeight + height);
    }
}
