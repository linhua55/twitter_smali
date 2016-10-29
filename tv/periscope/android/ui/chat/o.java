package tv.periscope.android.ui.chat;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;

/* compiled from: Twttr */
class o extends s {
    final /* synthetic */ q a;
    final /* synthetic */ ViewPropertyAnimatorCompat b;
    final /* synthetic */ k c;

    o(k kVar, q qVar, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        this.c = kVar;
        this.a = qVar;
        this.b = viewPropertyAnimatorCompat;
        super();
    }

    public void onAnimationStart(View view) {
        this.c.dispatchChangeStarting(this.a.a, true);
    }

    public void onAnimationEnd(View view) {
        this.b.setListener(null);
        ViewCompat.setAlpha(view, 1.0f);
        ViewCompat.setTranslationX(view, 0.0f);
        ViewCompat.setTranslationY(view, 0.0f);
        ViewCompat.setScaleX(view, 1.0f);
        this.c.dispatchChangeFinished(this.a.a, true);
        this.c.i.remove(this.a.a);
        this.c.a();
    }
}
