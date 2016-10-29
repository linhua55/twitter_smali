package defpackage;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.twitter.android.av.audio.h;
import com.twitter.android.av.audio.l;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
/* renamed from: afh */
public class afh {
    private final FrameLayout a;
    private final TextView b;
    private final TextView c;
    private final AnimatorListener d;
    private final Rect e;
    private AnimatorSet f;

    public afh(View view) {
        this.a = (FrameLayout) view.findViewById(2131951922);
        this.b = (TextView) view.findViewById(k.text);
        this.c = (TextView) view.findViewById(2131952746);
        this.f = new AnimatorSet();
        this.d = new afi(this);
        this.c.getViewTreeObserver().addOnPreDrawListener(new afj(this));
        this.e = new Rect();
    }

    public void a(l lVar) {
        h.a(this.c, lVar);
    }

    public void a() {
        d();
        e();
    }

    public void b() {
        this.f.removeListener(this.d);
    }

    public void c() {
        this.f.removeListener(this.d);
        this.f.end();
        this.f.cancel();
        this.a.setTranslationX(0.0f);
        this.a.setTranslationY(0.0f);
        this.c.setTranslationY((float) this.a.getHeight());
        this.c.setTranslationX(0.0f);
    }

    private void d() {
        if (this.f.getListeners() == null || !this.f.getListeners().contains(this.d)) {
            this.f.addListener(this.d);
        }
    }

    private void e() {
        if (!this.f.isRunning() && this.c.getText() != null) {
            Animator duration;
            Animator animator;
            c();
            LayoutParams layoutParams = (LayoutParams) this.c.getLayoutParams();
            this.c.getPaint().getTextBounds(this.c.getText().toString(), 0, this.c.getText().length(), this.e);
            int width = ((this.a.getWidth() - this.e.width()) - layoutParams.rightMargin) - layoutParams.leftMargin;
            if (width < 0) {
                duration = ObjectAnimator.ofFloat(this.c, View.TRANSLATION_X, new float[]{0.0f, (float) width}).setDuration((long) Math.round(((float) Math.abs(width)) / 0.1f));
                layoutParams.gravity = 19;
                animator = duration;
            } else {
                duration = ObjectAnimator.ofFloat(this.c, View.TRANSLATION_X, new float[]{0.0f, 0.0f});
                layoutParams.gravity = 17;
                animator = duration;
            }
            this.c.requestLayout();
            duration = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f}).setDuration(1000);
            Animator duration2 = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f}).setDuration(1000);
            Animator duration3 = ObjectAnimator.ofFloat(this.c, View.TRANSLATION_Y, new float[]{(float) this.a.getHeight(), 0.0f}).setDuration(500);
            Animator duration4 = ObjectAnimator.ofFloat(this.c, View.TRANSLATION_X, new float[]{(float) (-width), 0.0f}).setDuration(500);
            Animator duration5 = ObjectAnimator.ofFloat(this.c, View.TRANSLATION_Y, new float[]{0.0f, (float) (-this.a.getHeight())}).setDuration(500);
            Animator duration6 = ObjectAnimator.ofFloat(this.b, View.TRANSLATION_Y, new float[]{(float) this.a.getHeight(), 0.0f}).setDuration(500);
            Animator duration7 = ObjectAnimator.ofFloat(this.b, View.TRANSLATION_Y, new float[]{0.0f, (float) (-this.a.getHeight())}).setDuration(500);
            this.f = new AnimatorSet();
            this.f.setInterpolator(new LinearInterpolator());
            this.f.setStartDelay(1000);
            this.f.play(duration7).with(duration3).after(duration4);
            this.f.play(duration).after(duration7);
            this.f.play(animator).after(duration);
            this.f.play(duration2).after(animator);
            this.f.play(duration5).with(duration6).after(duration2);
            this.f.start();
        }
    }
}
