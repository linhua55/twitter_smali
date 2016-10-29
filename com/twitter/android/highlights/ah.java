package com.twitter.android.highlights;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class ah implements AnimatorListener, AnimatorUpdateListener {
    private final ad a;
    private final ag b;
    private final WeakReference<ai> c;

    ah(ad adVar, ag agVar, WeakReference<ai> weakReference) {
        this.a = adVar;
        this.b = agVar;
        this.c = weakReference;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        animator.removeAllListeners();
        this.b.b.setLayerType(0, null);
        for (View layerType : this.b.c) {
            layerType.setLayerType(0, null);
        }
        for (View layerType2 : this.b.d) {
            layerType2.setLayerType(0, null);
        }
        ai aiVar;
        if (ad.a(this.a) == 0) {
            ad.a(this.a, 2);
            if (this.c != null) {
                aiVar = (ai) this.c.get();
                if (aiVar != null) {
                    aiVar.j();
                }
            }
        } else if (ad.a(this.a) == 3 && this.c != null) {
            aiVar = (ai) this.c.get();
            if (aiVar != null) {
                aiVar.d();
            }
        }
    }

    public void onAnimationCancel(Animator animator) {
        animator.removeAllListeners();
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
    }
}
