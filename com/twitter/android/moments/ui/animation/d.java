package com.twitter.android.moments.ui.animation;

import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import cqk;
import cqm;
import crd;

/* compiled from: Twttr */
public class d implements c {
    private final Interpolator a;

    public d() {
        this.a = crd.b();
    }

    public void a(View view, ImageView imageView, View view2, cqm cqm, cqk cqk) {
        view.setPivotX((float) (view.getWidth() / 2));
        view.setPivotY((float) (view.getHeight() / 2));
        view.setScaleX(AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION);
        view.setScaleY(AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION);
        view.setAlpha(0.0f);
        ViewCompat.animate(view2).withLayer().alpha(1.0f).setDuration(300).setInterpolator(this.a).start();
        ViewCompat.animate(view).withLayer().setDuration(300).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setInterpolator(this.a).withEndAction(new e(this, cqk)).start();
    }
}
