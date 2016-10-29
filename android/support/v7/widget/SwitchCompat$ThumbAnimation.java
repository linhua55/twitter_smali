package android.support.v7.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: Twttr */
class SwitchCompat$ThumbAnimation extends Animation {
    final float mDiff;
    final float mEndPosition;
    final float mStartPosition;
    final /* synthetic */ SwitchCompat this$0;

    private SwitchCompat$ThumbAnimation(SwitchCompat switchCompat, float f, float f2) {
        this.this$0 = switchCompat;
        this.mStartPosition = f;
        this.mEndPosition = f2;
        this.mDiff = f2 - f;
    }

    protected void applyTransformation(float f, Transformation transformation) {
        SwitchCompat.access$200(this.this$0, this.mStartPosition + (this.mDiff * f));
    }
}
