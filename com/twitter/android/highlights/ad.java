package com.twitter.android.highlights;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import com.twitter.android.widget.highlights.StoriesViewPager;
import defpackage.cfb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class ad {
    public int a;
    private final WeakReference<ai> b;
    private final List<ObjectAnimator> c;
    private final List<ObjectAnimator> d;
    private final long e;
    private final long f;
    private final long g;
    private final long h;
    private final int i;
    private final int j;
    private int k;

    public ad(Resources resources, ai aiVar) {
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = (long) resources.getInteger(2131755043);
        this.f = (long) resources.getInteger(2131755048);
        this.g = (long) resources.getInteger(2131755042);
        this.h = (long) resources.getInteger(2131755041);
        this.j = resources.getDimensionPixelSize(2131690050);
        this.i = resources.getDisplayMetrics().widthPixels;
        this.k = -1;
        this.b = aiVar != null ? new WeakReference(aiVar) : null;
    }

    public void a() {
        this.k = -1;
    }

    public void a(StoriesViewPager storiesViewPager) {
        if (this.k != -1) {
            cfb.d("StoriesAnimations", "Invalid state to enter 'STATE_ENTERING' state: " + this.k);
        } else if (storiesViewPager.getChildCount() != 0) {
            this.k = 0;
            TimeInterpolator decelerateInterpolator = new DecelerateInterpolator(3.0f);
            TimeInterpolator overshootInterpolator = new OvershootInterpolator();
            ag a = a(storiesViewPager, 0);
            a.b.setAlpha(0.0f);
            storiesViewPager.setEnabled(false);
            Animator ofFloat = ObjectAnimator.ofFloat(a.b, "alpha", new float[]{0.0f, 1.0f});
            ofFloat.setDuration(this.g);
            ofFloat.setInterpolator(decelerateInterpolator);
            Animator ofFloat2 = ObjectAnimator.ofFloat(a.b, "scaleX", new float[]{0.7f, 1.0f});
            ofFloat2.setDuration(this.g);
            ofFloat2.setInterpolator(overshootInterpolator);
            Animator ofFloat3 = ObjectAnimator.ofFloat(a.b, "scaleY", new float[]{0.7f, 1.0f});
            ofFloat3.setDuration(this.g);
            ofFloat3.setInterpolator(overshootInterpolator);
            for (View view : a.c) {
                view.setAlpha(0.0f);
                view.setTranslationX((float) (-this.a));
            }
            for (View view2 : a.d) {
                view2.setAlpha(0.0f);
                view2.setTranslationX((float) this.a);
            }
            List<ObjectAnimator> a2 = a(a, this.k);
            AnimatorSet animatorSet = new AnimatorSet();
            Builder with = animatorSet.play(ofFloat).with(ofFloat2).with(ofFloat3);
            for (ObjectAnimator objectAnimator : a2) {
                objectAnimator.setStartDelay(this.g);
                objectAnimator.setDuration(this.g);
                with.with(objectAnimator);
            }
            animatorSet.addListener(new ah(this, a, this.b));
            animatorSet.setStartDelay(this.e);
            animatorSet.start();
        }
    }

    public void a(StoriesViewPager storiesViewPager, View view, boolean z) {
        if (this.k != 2) {
            cfb.d("StoriesAnimations", "Invalid state to enter 'STATE_EXITING' state: " + this.k);
            return;
        }
        TimeInterpolator decelerateInterpolator;
        this.k = 3;
        ag a = a(storiesViewPager, 2);
        AnimatorSet animatorSet = new AnimatorSet();
        if (z) {
            decelerateInterpolator = new DecelerateInterpolator();
        } else {
            Object accelerateInterpolator = new AccelerateInterpolator(2.0f);
        }
        storiesViewPager.setEnabled(false);
        a.b.bringToFront();
        Animator ofFloat = ObjectAnimator.ofFloat(a.b, "translationX", new float[]{a.b.getTranslationX(), (float) (-(a.b.getWidth() + this.a))});
        ofFloat.setDuration(this.h);
        ofFloat.setInterpolator(decelerateInterpolator);
        animatorSet.addListener(new ah(this, a, this.b));
        Builder play = animatorSet.play(ofFloat);
        for (ObjectAnimator objectAnimator : a(a, this.k)) {
            objectAnimator.setDuration(this.h);
            objectAnimator.setInterpolator(decelerateInterpolator);
            objectAnimator.setStartDelay(0);
            play.with(objectAnimator);
        }
        if (view != null) {
            ofFloat = ObjectAnimator.ofFloat(view, "alpha", new float[]{view.getAlpha(), 0.0f});
            ofFloat.setDuration(this.h);
            ofFloat.setInterpolator(decelerateInterpolator);
            play.with(ofFloat);
        }
        animatorSet.start();
    }

    public void b(StoriesViewPager storiesViewPager) {
        TimeInterpolator decelerateInterpolator = new DecelerateInterpolator();
        ae aeVar = new ae(this, storiesViewPager);
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(decelerateInterpolator);
        valueAnimator.addUpdateListener(aeVar);
        valueAnimator.setIntValues(new int[]{0, -this.j});
        valueAnimator.setDuration(this.g);
        ValueAnimator valueAnimator2 = new ValueAnimator();
        valueAnimator2.setInterpolator(decelerateInterpolator);
        valueAnimator2.addUpdateListener(aeVar);
        valueAnimator2.setIntValues(new int[]{-this.j, 0});
        valueAnimator2.setDuration(this.h);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(this.f);
        animatorSet.playSequentially(new Animator[]{valueAnimator, valueAnimator2});
        animatorSet.addListener(new af(this, storiesViewPager));
        animatorSet.start();
    }

    ag a(StoriesViewPager storiesViewPager, int i) {
        int childCount = storiesViewPager.getChildCount();
        if (childCount == 0) {
            throw new IllegalStateException("prepareAnimatedViews MUST be called with a non-empty ViewPager");
        }
        List arrayList = new ArrayList(1);
        List arrayList2 = new ArrayList(1);
        int currentItem = storiesViewPager.getCurrentItem();
        int i2 = 0;
        View view = null;
        while (i2 < childCount) {
            View view2;
            View childAt = storiesViewPager.getChildAt(i2);
            at atVar = (at) childAt.getTag();
            if (atVar != null) {
                if (atVar.F == currentItem) {
                    childAt.setLayerType(i, null);
                    view2 = childAt;
                } else if (atVar.F == RtlSpacingHelper.UNDEFINED) {
                    view2 = view;
                } else if (atVar.F < currentItem && Math.abs(atVar.F - currentItem) <= 1) {
                    childAt.setLayerType(i, null);
                    arrayList.add(childAt);
                    view2 = view;
                } else if (atVar.F > currentItem && Math.abs(atVar.F - currentItem) <= 1) {
                    childAt.setLayerType(i, null);
                    arrayList2.add(childAt);
                }
                i2++;
                view = view2;
            }
            view2 = view;
            i2++;
            view = view2;
        }
        if (view != null) {
            return new ag(storiesViewPager, view, arrayList, arrayList2);
        }
        throw new IllegalStateException("No focused child in ViewPager!");
    }

    List<ObjectAnimator> a(ag agVar, int i) {
        int i2;
        int i3;
        int max = Math.max(agVar.c.size() + agVar.d.size(), this.c.size());
        for (i2 = 0; i2 < max; i2++) {
            if (i2 >= this.c.size()) {
                this.c.add(ObjectAnimator.ofFloat(null, "alpha", new float[]{0.0f, 0.0f}));
            } else {
                ((ObjectAnimator) this.c.get(i2)).cancel();
            }
            if (i2 >= this.d.size()) {
                this.d.add(ObjectAnimator.ofFloat(null, "translationX", new float[]{0.0f, 0.0f}));
            } else {
                ((ObjectAnimator) this.d.get(i2)).cancel();
            }
        }
        Map hashMap = new HashMap();
        i2 = (i == 0 || i == 2) ? 0 : -this.a;
        if (i == 0 || i == 2) {
            i3 = 0;
        } else {
            i3 = -((this.i - this.a) + agVar.b.getWidth());
        }
        hashMap.put(agVar.c, Integer.valueOf(i2));
        hashMap.put(agVar.d, Integer.valueOf(i3));
        List<ObjectAnimator> arrayList = new ArrayList();
        max = 0;
        for (Entry entry : hashMap.entrySet()) {
            List<View> list = (List) entry.getKey();
            int intValue = ((Integer) entry.getValue()).intValue();
            for (View view : list) {
                if (view != null) {
                    float alpha = view.getAlpha();
                    ObjectAnimator objectAnimator = (ObjectAnimator) this.c.get(max);
                    objectAnimator.setTarget(view);
                    objectAnimator.setFloatValues(new float[]{alpha, 1.0f});
                    arrayList.add(objectAnimator);
                    alpha = view.getTranslationX();
                    objectAnimator = (ObjectAnimator) this.d.get(max);
                    objectAnimator.setTarget(view);
                    objectAnimator.setFloatValues(new float[]{alpha, (float) intValue});
                    arrayList.add(objectAnimator);
                    max++;
                }
            }
        }
        return arrayList;
    }
}
