package tv.periscope.android.view;

import android.animation.Animator;

/* compiled from: Twttr */
class s extends o {
    final /* synthetic */ PsLoading a;

    s(PsLoading psLoading) {
        this.a = psLoading;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.d();
    }
}
