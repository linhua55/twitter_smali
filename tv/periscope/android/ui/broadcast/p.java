package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class p extends o {
    final /* synthetic */ ObjectAnimator a;
    final /* synthetic */ ChannelView b;

    p(ChannelView channelView, ObjectAnimator objectAnimator) {
        this.b = channelView;
        this.a = objectAnimator;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setFloatValues(new float[]{(float) ChannelView.b(this.b).getMeasuredHeight(), 0.0f});
        ChannelView.c(this.b).setVisibility(0);
    }

    public void onAnimationEnd(Animator animator) {
        ChannelView.b(this.b).setVisibility(8);
        ChannelView.d(this.b).setVisibility(8);
    }
}
