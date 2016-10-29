package defpackage;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: cpw */
class cpw {
    public void a(View view, float f, ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        ViewPropertyAnimatorCompat interpolator = ViewCompat.animate(view).scaleX(f).scaleY(f).setDuration(300).setInterpolator(cpu.a);
        if (viewPropertyAnimatorUpdateListener != null) {
            interpolator.setUpdateListener(viewPropertyAnimatorUpdateListener);
        }
        interpolator.start();
    }
}
