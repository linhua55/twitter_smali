package tv.periscope.android.ui.chat;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

/* compiled from: Twttr */
class v implements AnimatorUpdateListener {
    final /* synthetic */ j a;
    final /* synthetic */ View b;
    final /* synthetic */ u c;

    v(u uVar, j jVar, View view) {
        this.c = uVar;
        this.a = jVar;
        this.b = view;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.a.a((long) (4500.0f * floatValue));
        this.a.a(floatValue);
        this.b.setAlpha(floatValue);
    }
}
