package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
/* renamed from: afn */
class afn extends AnimatorListenerAdapter {
    final /* synthetic */ boolean a;
    final /* synthetic */ afm b;

    afn(afm afm, boolean z) {
        this.b = afm;
        this.a = z;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.a) {
            this.b.f.setVisibility(4);
            this.b.f.animate().setListener(null);
        }
    }
}
