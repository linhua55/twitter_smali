package tv.periscope.android.view;

import android.animation.Animator;

/* compiled from: Twttr */
class l extends o {
    final /* synthetic */ PlayerView a;

    l(PlayerView playerView) {
        this.a = playerView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.c.setVisibility(8);
    }
}
