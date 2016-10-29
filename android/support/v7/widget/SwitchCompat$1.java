package android.support.v7.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

/* compiled from: Twttr */
class SwitchCompat$1 implements AnimationListener {
    final /* synthetic */ SwitchCompat this$0;
    final /* synthetic */ boolean val$newCheckedState;

    SwitchCompat$1(SwitchCompat switchCompat, boolean z) {
        this.this$0 = switchCompat;
        this.val$newCheckedState = z;
    }

    public void onAnimationStart(Animation animation) {
    }

    public void onAnimationEnd(Animation animation) {
        if (SwitchCompat.access$100(this.this$0) == animation) {
            SwitchCompat.access$200(this.this$0, this.val$newCheckedState ? 1.0f : 0.0f);
            SwitchCompat.access$102(this.this$0, null);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }
}
