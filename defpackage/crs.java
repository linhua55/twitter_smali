package defpackage;

import android.animation.ObjectAnimator;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: crs */
public class crs {
    private static final FastOutSlowInInterpolator a;

    static {
        a = new FastOutSlowInInterpolator();
    }

    public static void a(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, new float[]{(float) view.getHeight(), 0.0f});
        ofFloat.setInterpolator(a);
        ofFloat.setDuration(300);
        ofFloat.start();
    }

    public static void b(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, new float[]{(float) (-view.getHeight()), 0.0f});
        ofFloat.setInterpolator(a);
        ofFloat.setDuration(300);
        ofFloat.start();
    }

    public static void c(View view) {
        ViewCompat.animate(view).withLayer().translationY((float) (-(view.getTop() + view.getHeight()))).setDuration(300).setInterpolator(a).setListener(null).start();
    }

    public static void d(View view) {
        ViewCompat.animate(view).withLayer().translationY(0.0f).setDuration(300).setInterpolator(a).start();
    }

    public static void a(View view, int i, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        ViewCompat.animate(view).withLayer().alpha(0.0f).setDuration((long) i).setInterpolator(a).setListener(viewPropertyAnimatorListener).start();
    }
}
