package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import com.twitter.ui.widget.TypefacesTextView;
import defpackage.bcu;
import defpackage.bdd;

/* compiled from: Twttr */
public class FadeInTextView extends RelativeLayout {
    private String[] a;
    private int b;
    private boolean c;
    private int d;
    private float e;
    private int f;
    private int g;
    private j h;

    public FadeInTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public FadeInTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, bdd.FadeInTextView, i, 0);
            this.d = obtainStyledAttributes.getColor(bdd.FadeInTextView_android_textColor, getResources().getColor(bcu.black));
            this.e = obtainStyledAttributes.getDimension(bdd.FadeInTextView_android_textSize, 15.0f);
            this.f = obtainStyledAttributes.getInt(bdd.FadeInTextView_android_duration, 0);
            int resourceId = obtainStyledAttributes.getResourceId(bdd.FadeInTextView_texts, ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
            setTexts(resourceId != 0 ? getResources().getStringArray(resourceId) : new String[0]);
            obtainStyledAttributes.recycle();
        }
    }

    private void a() {
        if (!this.c && this.a != null && this.a.length != 0) {
            this.c = true;
            this.b %= this.a.length;
            Animation animationSet = new AnimationSet(false);
            Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setInterpolator(new LinearInterpolator());
            animationSet.addAnimation(alphaAnimation);
            alphaAnimation = new TranslateAnimation(0.0f, 0.0f, 50.0f, 0.0f);
            alphaAnimation.setInterpolator(new DecelerateInterpolator());
            animationSet.addAnimation(alphaAnimation);
            animationSet.setDuration((long) a(0.16666667f));
            animationSet.setAnimationListener(new g(this));
            a(animationSet, (long) a(0.16666667f));
        }
    }

    private void b() {
        if (this.c) {
            this.c = false;
            clearAnimation();
        }
    }

    private void a(Animation animation, long j) {
        Handler handler = getHandler();
        if (!this.c || handler == null) {
            this.c = false;
        } else {
            handler.postDelayed(new h(this, animation), j);
        }
    }

    private void c() {
        Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration((long) a(0.16666667f));
        alphaAnimation.setInterpolator(new LinearInterpolator());
        alphaAnimation.setAnimationListener(new i(this));
        a(alphaAnimation, (long) a(0.5f));
    }

    public void setTexts(String[] strArr) {
        this.a = strArr;
        this.g = this.f / this.a.length;
        removeAllViews();
        for (CharSequence charSequence : strArr) {
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(14);
            TypefacesTextView typefacesTextView = new TypefacesTextView(getContext());
            typefacesTextView.setLayoutParams(layoutParams);
            typefacesTextView.setVisibility(4);
            typefacesTextView.setTextColor(this.d);
            typefacesTextView.setTextSize(0, this.e);
            typefacesTextView.setGravity(1);
            typefacesTextView.setText(charSequence);
            addView(typefacesTextView);
        }
    }

    private int a(float f) {
        return (int) (((float) this.g) * f);
    }

    public void setVisibility(int i) {
        if (getVisibility() != i) {
            super.setVisibility(i);
            if (i == 8 || i == 4) {
                b();
            } else {
                a();
            }
        }
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 8 || i == 4) {
            b();
        } else {
            a();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    protected void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }

    public void setCycleListener(j jVar) {
        this.h = jVar;
    }
}
