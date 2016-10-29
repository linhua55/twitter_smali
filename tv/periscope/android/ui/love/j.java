package tv.periscope.android.ui.love;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class j extends o {
    final /* synthetic */ HeartView a;
    final /* synthetic */ float b;
    final /* synthetic */ f c;

    j(f fVar, HeartView heartView, float f) {
        this.c = fVar;
        this.a = heartView;
        this.b = f;
    }

    public void onAnimationEnd(Animator animator) {
        AnimatorSet animatorSet = new AnimatorSet();
        Collection arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.a, View.SCALE_X, new float[]{this.b, 1.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.a, View.SCALE_Y, new float[]{this.b, 1.0f});
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        animatorSet.setDuration(100);
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(this.c.c);
        animatorSet.start();
    }
}
