package tv.periscope.android.ui.broadcast.moderator;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class e extends o {
    final /* synthetic */ ObjectAnimator a;
    final /* synthetic */ ObjectAnimator b;
    final /* synthetic */ ModeratorView c;

    e(ModeratorView moderatorView, ObjectAnimator objectAnimator, ObjectAnimator objectAnimator2) {
        this.c = moderatorView;
        this.a = objectAnimator;
        this.b = objectAnimator2;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setFloatValues(new float[]{0.0f, (float) this.c.i.getMeasuredHeight()});
        this.b.setFloatValues(new float[]{0.0f, (this.c.e + this.c.f) + ((float) this.c.i.getMeasuredHeight())});
    }

    public void onAnimationEnd(Animator animator) {
        this.c.o.setAlpha(1.0f);
        this.c.o.setVisibility(4);
        this.c.p.setVisibility(4);
    }
}
