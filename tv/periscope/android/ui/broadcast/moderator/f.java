package tv.periscope.android.ui.broadcast.moderator;

import android.animation.Animator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class f extends o {
    final /* synthetic */ ModeratorView a;

    f(ModeratorView moderatorView) {
        this.a = moderatorView;
    }

    public void onAnimationStart(Animator animator) {
        this.a.q.setVisibility(0);
    }
}
