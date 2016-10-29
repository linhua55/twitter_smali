package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class q extends o {
    final /* synthetic */ ObjectAnimator a;
    final /* synthetic */ ChannelView b;

    q(ChannelView channelView, ObjectAnimator objectAnimator) {
        this.b = channelView;
        this.a = objectAnimator;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setFloatValues(new float[]{0.0f, (float) ChannelView.b(this.b).getMeasuredHeight()});
        ChannelView.b(this.b).setVisibility(0);
        ChannelView.d(this.b).setVisibility(0);
    }

    public void onAnimationEnd(Animator animator) {
        ChannelView.c(this.b).setVisibility(8);
    }
}
