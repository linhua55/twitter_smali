package com.twitter.android.people.adapters.viewbinders;

import android.animation.ValueAnimator;
import android.support.v4.view.ViewPager;
import android.view.VelocityTracker;
import android.view.animation.AccelerateDecelerateInterpolator;
import bbn;
import com.twitter.android.people.adapters.viewbinders.h$com.twitter.android.people.adapters.viewbinders.j;
import com.twitter.util.ui.r;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* compiled from: Twttr */
class t implements Runnable {
    private final WeakReference<j> a;
    private final WeakReference<ViewPager> b;
    private final WeakReference<com.twitter.app.common.util.t> c;

    t(w wVar, com.twitter.app.common.util.t tVar) {
        this.a = new WeakReference(wVar.b);
        this.b = new WeakReference(wVar.d);
        this.c = new WeakReference(tVar);
        wVar.f = this;
    }

    public void run() {
        ViewPager viewPager = (ViewPager) this.b.get();
        j jVar = (j) this.a.get();
        com.twitter.app.common.util.t tVar = (com.twitter.app.common.util.t) this.c.get();
        if (viewPager != null && jVar != null && tVar != null && viewPager.getCurrentItem() != viewPager.getAdapter().getCount() - 1 && r.a(viewPager) && tVar.m_() && viewPager.beginFakeDrag()) {
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, viewPager.getWidth()});
            ofInt.addListener(new u(this, jVar, viewPager));
            ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
            ofInt.addUpdateListener(new v(this, viewPager));
            ofInt.setDuration(1000);
            ofInt.start();
        }
    }

    protected void a(j jVar, ViewPager viewPager) {
        jVar.a();
        if (viewPager.isFakeDragging()) {
            try {
                viewPager.endFakeDrag();
            } catch (NullPointerException e) {
                try {
                    Field declaredField = ViewPager.class.getDeclaredField("mVelocityTracker");
                    if (declaredField != null) {
                        declaredField.setAccessible(true);
                        declaredField.set(viewPager, VelocityTracker.obtain());
                        viewPager.endFakeDrag();
                    }
                } catch (Throwable e2) {
                    bbn.a(e2);
                } catch (Throwable e22) {
                    bbn.a(e22);
                }
            }
        }
    }
}
