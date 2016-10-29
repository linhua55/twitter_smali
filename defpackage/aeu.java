package defpackage;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.TextView;

/* compiled from: Twttr */
/* renamed from: aeu */
public class aeu {
    private static final Interpolator a;
    private static final Interpolator b;
    private final TextView c;

    static {
        a = new AccelerateInterpolator();
        b = new DecelerateInterpolator();
    }

    public aeu(TextView textView) {
        this.c = textView;
    }

    public void a(String str) {
        ViewPropertyAnimatorCompat animate = ViewCompat.animate(this.c);
        animate.setListener(null).scaleX(0.33f).scaleY(0.33f).alpha(0.0f).setDuration(175).withLayer().setInterpolator(a).setListener(new aev(this, animate, str)).start();
    }
}
