package com.twitter.android.profiles.animation;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.twitter.android.profiles.ao;
import com.twitter.android.profiles.as;
import com.twitter.config.d;
import com.twitter.library.widget.af;

/* compiled from: Twttr */
public class BalloonSetAnimationView extends FlyThroughSetAnimationView {
    private static final float[] a;
    private long b;
    private ao c;

    static {
        a = new float[]{1.0f, 0.9f, 0.8f};
    }

    public BalloonSetAnimationView(Context context) {
        this(context, null, 0);
    }

    public BalloonSetAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BalloonSetAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public boolean a(int i, int i2, String[] strArr, int[] iArr) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        return a(new g(displayMetrics, 30, 6, 5, new c(this, strArr), d.a("profile_birthday_delight_v2_enabled") ? new b(this, iArr) : null, a, new f().a(displayMetrics).f(0).g(6000).h(100).a(0.003d).a(1.5f).a(i).b(i2).a(500).c(30000).b(800)));
    }

    public static af a(af afVar, int i) {
        if (!(afVar == null || i == 0)) {
            afVar.mutate().setColorFilter(new PorterDuffColorFilter(i, Mode.MULTIPLY));
        }
        return afVar;
    }

    public void a() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            childAt.setVisibility(8);
            Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 2131034160);
            loadAnimation.setAnimationListener(new a(this, childAt));
            childAt.startAnimation(loadAnimation);
        }
    }

    public void setProfileUser(ao aoVar) {
        this.c = aoVar;
    }

    public void setUserId(long j) {
        this.b = j;
    }

    protected void b() {
        as.a(this.b, this.c, "birthday_balloon:click");
    }
}
