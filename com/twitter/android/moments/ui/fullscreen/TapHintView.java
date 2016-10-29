package com.twitter.android.moments.ui.fullscreen;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.twitter.util.d;

/* compiled from: Twttr */
public class TapHintView extends FrameLayout {
    private View a;
    private View b;
    private AnimatorSet c;

    public TapHintView(Context context) {
        this(context, null);
    }

    public TapHintView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TapHintView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        LayoutInflater.from(getContext()).inflate(2130969440, this, true);
        this.a = findViewById(2131953313);
        this.b = findViewById(2131953314);
    }

    public void a() {
        this.a.setVisibility(0);
        this.b.setVisibility(0);
        if (this.c != null) {
            this.c.cancel();
        }
        Animator loadAnimator = AnimatorInflater.loadAnimator(getContext(), 2131099650);
        Animator loadAnimator2 = AnimatorInflater.loadAnimator(getContext(), 2131099650);
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), 2131099652);
        Animator loadAnimator3 = AnimatorInflater.loadAnimator(getContext(), 2131099653);
        AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), 2131099654);
        Animator loadAnimator4 = AnimatorInflater.loadAnimator(getContext(), 2131099654);
        Animator duration = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f}).setDuration((long) getContext().getResources().getInteger(2131755076));
        AnimatorSet animatorSet3 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), 2131099652);
        Animator loadAnimator5 = AnimatorInflater.loadAnimator(getContext(), 2131099653);
        AnimatorSet animatorSet4 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), 2131099654);
        Animator loadAnimator6 = AnimatorInflater.loadAnimator(getContext(), 2131099654);
        Animator loadAnimator7 = AnimatorInflater.loadAnimator(getContext(), 2131099651);
        Animator loadAnimator8 = AnimatorInflater.loadAnimator(getContext(), 2131099651);
        Animator duration2 = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f}).setDuration((long) getContext().getResources().getInteger(2131755075));
        loadAnimator.setTarget(this.a);
        loadAnimator2.setTarget(this.b);
        loadAnimator7.setTarget(this.a);
        loadAnimator8.setTarget(this.b);
        animatorSet.setTarget(this.a);
        loadAnimator3.setTarget(this.b);
        animatorSet2.setTarget(this.a);
        loadAnimator4.setTarget(this.b);
        animatorSet3.setTarget(this.a);
        loadAnimator5.setTarget(this.b);
        animatorSet4.setTarget(this.a);
        loadAnimator6.setTarget(this.b);
        duration2.setTarget(this.a);
        duration.setTarget(this.a);
        this.c = new AnimatorSet();
        this.c.play(loadAnimator).before(animatorSet);
        this.c.play(animatorSet).before(animatorSet2);
        this.c.play(animatorSet2).before(duration);
        this.c.play(duration).before(animatorSet3);
        this.c.play(animatorSet3).before(animatorSet4);
        this.c.play(animatorSet4).before(loadAnimator7);
        this.c.play(loadAnimator7).before(duration2);
        this.c.play(loadAnimator).with(loadAnimator2);
        this.c.play(animatorSet).with(loadAnimator3);
        this.c.play(animatorSet2).with(loadAnimator4);
        this.c.play(animatorSet3).with(loadAnimator5);
        this.c.play(animatorSet4).with(loadAnimator6);
        this.c.play(loadAnimator7).with(loadAnimator8);
        this.c.addListener(new gh(this));
        this.c.start();
    }

    public void b() {
        if (this.c != null) {
            this.c.removeAllListeners();
            this.c.end();
        }
        d.a(this.a);
        d.a(this.b);
    }
}
