package tv.periscope.android.ui.chat;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;

/* compiled from: Twttr */
class p extends s {
    final /* synthetic */ q a;
    final /* synthetic */ ViewPropertyAnimatorCompat b;
    final /* synthetic */ View c;
    final /* synthetic */ k d;

    p(k kVar, q qVar, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, View view) {
        this.d = kVar;
        this.a = qVar;
        this.b = viewPropertyAnimatorCompat;
        this.c = view;
        super();
    }

    public void onAnimationStart(View view) {
        this.d.dispatchChangeStarting(this.a.b, false);
    }

    public void onAnimationEnd(View view) {
        this.b.setListener(null);
        ViewCompat.setAlpha(this.c, 1.0f);
        ViewCompat.setTranslationX(this.c, 0.0f);
        ViewCompat.setTranslationY(this.c, 0.0f);
        this.d.dispatchChangeFinished(this.a.b, false);
        this.d.i.remove(this.a.b);
        this.d.a();
    }
}
