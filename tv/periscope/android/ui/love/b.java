package tv.periscope.android.ui.love;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import tv.periscope.android.library.i;

/* compiled from: Twttr */
public class b extends a {
    private final int a;
    private final int b;
    private final AtomicInteger c;
    private final Set<HeartView> d;
    private Handler e;

    public b(Context context) {
        super(context);
        this.c = new AtomicInteger(0);
        this.d = new HashSet();
        Resources resources = context.getResources();
        this.a = resources.getDimensionPixelSize(i.ps__heart_size_width);
        this.b = resources.getDimensionPixelSize(i.ps__heart_size_height);
        this.e = new Handler(Looper.getMainLooper());
    }

    public void a(HeartView heartView, ViewGroup viewGroup, boolean z) {
        viewGroup.addView(heartView, new LayoutParams(this.a, this.b));
        Animation eVar = new e(a(this.c, heartView, viewGroup, 2), b(), viewGroup, heartView, z ? 1.4f : 1.1f);
        eVar.setDuration(3000);
        eVar.setInterpolator(new LinearInterpolator());
        eVar.setAnimationListener(new c(this, heartView, viewGroup));
        Animation animationSet = new AnimationSet(false);
        animationSet.addAnimation(eVar);
        animationSet.setInterpolator(new LinearInterpolator());
        heartView.startAnimation(animationSet);
    }

    public void a() {
        this.e.removeCallbacksAndMessages(null);
        for (HeartView clearAnimation : new ArrayList(this.d)) {
            clearAnimation.clearAnimation();
        }
        this.d.clear();
    }
}
