package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class s extends o {
    final /* synthetic */ ObjectAnimator a;
    final /* synthetic */ ChannelView b;

    s(ChannelView channelView, ObjectAnimator objectAnimator) {
        this.b = channelView;
        this.a = objectAnimator;
    }

    public void onAnimationStart(Animator animator) {
        int measuredHeight;
        View infoContainer = ChannelView.e(this.b).getInfoContainer();
        if (infoContainer.getVisibility() == 8) {
            measuredHeight = ChannelView.b(this.b).getMeasuredHeight();
        } else {
            measuredHeight = infoContainer.getMeasuredHeight() + ChannelView.b(this.b).getMeasuredHeight();
        }
        this.a.setFloatValues(new float[]{(float) ChannelView.b(this.b).getMeasuredHeight(), (float) measuredHeight});
        ChannelView.e(this.b).d();
        ChannelView.b(this.b).g();
        ChannelView.b(this.b).setVisibility(0);
        ChannelView.d(this.b).setVisibility(0);
    }

    public void onAnimationEnd(Animator animator) {
        ChannelView.e(this.b).a();
        ChannelView.c(this.b).setVisibility(8);
        ChannelView.e(this.b).setAlpha(1.0f);
        ChannelView.f(this.b).setTranslationY(0.0f);
        this.b.post(ChannelView.g(this.b));
    }
}
