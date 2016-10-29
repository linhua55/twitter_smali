package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class r extends o {
    final /* synthetic */ ObjectAnimator a;
    final /* synthetic */ ChannelView b;

    r(ChannelView channelView, ObjectAnimator objectAnimator) {
        this.b = channelView;
        this.a = objectAnimator;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setFloatValues(new float[]{0.0f, (float) (ChannelView.b(this.b).getMeasuredHeight() + ChannelView.e(this.b).getInfo().getMeasuredHeight())});
        ChannelView.d(this.b).setVisibility(0);
        ChannelView.e(this.b).c();
    }

    public void onAnimationEnd(Animator animator) {
        ChannelView.c(this.b).setVisibility(8);
        ChannelView.e(this.b).b();
        ChannelView.f(this.b).setTranslationY((float) ChannelView.b(this.b).getMeasuredHeight());
        this.b.post(ChannelView.g(this.b));
    }
}
