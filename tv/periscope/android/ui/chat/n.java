package tv.periscope.android.ui.chat;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;

/* compiled from: Twttr */
class n extends s {
    final /* synthetic */ r a;
    final /* synthetic */ ViewHolder b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;
    final /* synthetic */ ViewPropertyAnimatorCompat e;
    final /* synthetic */ k f;

    n(k kVar, r rVar, ViewHolder viewHolder, int i, int i2, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        this.f = kVar;
        this.a = rVar;
        this.b = viewHolder;
        this.c = i;
        this.d = i2;
        this.e = viewPropertyAnimatorCompat;
        super();
    }

    public void onAnimationStart(View view) {
        if (this.a.f) {
            this.f.dispatchAddStarting(this.b);
        } else {
            this.f.dispatchMoveStarting(this.b);
        }
    }

    public void onAnimationCancel(View view) {
        if (this.c != 0) {
            ViewCompat.setTranslationX(view, 0.0f);
        }
        if (this.d != 0) {
            ViewCompat.setTranslationY(view, 0.0f);
        }
    }

    public void onAnimationEnd(View view) {
        this.e.setListener(null);
        if (this.a.f) {
            this.f.dispatchAddFinished(this.b);
            this.f.g.remove(this.b);
        } else {
            this.f.dispatchMoveFinished(this.b);
            this.f.h.remove(this.b);
        }
        this.f.a();
    }
}
