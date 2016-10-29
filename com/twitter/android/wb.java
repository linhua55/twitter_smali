package com.twitter.android;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.twitter.util.collection.n;
import cri;
import defpackage.bcu;
import java.util.List;

/* compiled from: Twttr */
class wb {
    private static final Interpolator a;
    private static final Interpolator b;
    private final View c;
    private final vx d;
    private List<View> e;
    private AnimatorSet f;
    private AnimatorSet g;
    private Animator h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    @ColorInt
    private final int m;
    @ColorInt
    private final int n;
    @ColorInt
    private final int o;

    static {
        a = new cri(354.0f, 22.0f);
        b = PathInterpolatorCompat.create(0.25f, 0.1f, 0.25f, 1.0f);
    }

    wb(View view, Context context, vx vxVar) {
        this.c = view;
        this.d = vxVar;
        Resources resources = context.getResources();
        this.i = resources.getInteger(2131755082);
        this.j = resources.getInteger(2131755083);
        this.k = resources.getInteger(2131755084);
        this.l = resources.getInteger(2131755085);
        this.m = ContextCompat.getColor(context, bcu.deep_gray);
        this.n = ContextCompat.getColor(context, bcu.twitter_blue);
        this.o = ContextCompat.getColor(context, bcu.faded_blue);
        this.e = n.a(this.c.findViewById(2131952370), new View[]{this.c.findViewById(2131952371), this.c.findViewById(2131952372)});
    }

    public void a() {
        d().start();
    }

    public void b() {
        g().start();
    }

    public void c() {
        ViewGroup viewGroup = (ViewGroup) this.c.findViewById(2131952369);
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            viewGroup.getChildAt(i).setVisibility(0);
        }
        for (View visibility : this.e) {
            visibility.setVisibility(0);
        }
        f().start();
        this.c.setVisibility(0);
    }

    public void a(List<View> list) {
        for (View b : list) {
            b(b).start();
        }
    }

    public void b(List<View> list) {
        for (View a : list) {
            a(a).start();
        }
    }

    private AnimatorSet d() {
        if (this.f == null) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(b(this.c)).with(e()).before(f());
            this.f = animatorSet;
        }
        return this.f;
    }

    private AnimatorSet e() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{a((View) this.e.get(0), 0), a((View) this.e.get(1), (long) (this.i / 2)), a((View) this.e.get(2), (long) this.i)});
        return animatorSet;
    }

    private AnimatorSet f() {
        if (this.g == null) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(new Animator[]{b((View) this.e.get(0), 0), b((View) this.e.get(1), (long) (this.j / 2)), b((View) this.e.get(2), (long) this.j)});
            animatorSet.addListener(new wc(this));
            this.g = animatorSet;
        }
        return this.g;
    }

    private Animator a(View view) {
        Animator ofFloat = ObjectAnimator.ofFloat(view, "translationY", new float[]{0.0f, 300.0f});
        ofFloat.setDuration((long) this.l);
        ofFloat.setInterpolator(b);
        ofFloat.addListener(new wd(this, view));
        return ofFloat;
    }

    private Animator b(View view) {
        return a(view, 0, this.k, 200.0f);
    }

    private Animator a(View view, long j) {
        return a(view, j, this.i, 50.0f);
    }

    private Animator a(View view, long j, int i, float f) {
        Animator ofFloat = ObjectAnimator.ofFloat(view, "translationY", new float[]{f, 0.0f});
        ofFloat.setDuration((long) i);
        ofFloat.setStartDelay(j);
        ofFloat.setInterpolator(a);
        ofFloat.addListener(new we(this, view));
        return ofFloat;
    }

    private Animator b(View view, long j) {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.5f});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.5f});
        PropertyValuesHolder ofFloat3 = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.0f});
        PropertyValuesHolder ofFloat4 = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.0f});
        PropertyValuesHolder.ofInt("colorFilter", new int[]{this.n, this.o}).setEvaluator(new ArgbEvaluator());
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, new PropertyValuesHolder[]{ofFloat3, ofFloat4, r4});
        ObjectAnimator.ofPropertyValuesHolder(view, new PropertyValuesHolder[]{ofFloat, ofFloat2}).addListener(new wf(this, view));
        Animator animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(j);
        animatorSet.setDuration((long) this.j);
        animatorSet.playSequentially(new Animator[]{r0, ofPropertyValuesHolder});
        return animatorSet;
    }

    private Animator g() {
        if (this.h == null) {
            Animator ofFloat = ObjectAnimator.ofFloat(this.c, "translationY", new float[]{0.0f, 300.0f});
            ofFloat.setDuration((long) this.l);
            ofFloat.setInterpolator(b);
            ofFloat.addListener(new wg(this));
            this.h = ofFloat;
        }
        return this.h;
    }

    private void h() {
        for (View view : this.e) {
            ImageView imageView = (ImageView) view;
            imageView.getDrawable().setColorFilter(this.m, Mode.SRC_IN);
            imageView.setVisibility(4);
        }
    }
}
