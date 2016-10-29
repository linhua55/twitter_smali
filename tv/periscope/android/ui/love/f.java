package tv.periscope.android.ui.love;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Path;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import tv.periscope.android.view.o;

@TargetApi(21)
/* compiled from: Twttr */
public class f extends a {
    private final AtomicInteger a;
    private final Set<Animator> b;
    private final o c;
    private final Handler d;

    public f(Context context) {
        super(context);
        this.a = new AtomicInteger(0);
        this.b = new HashSet();
        this.c = new g(this);
        this.d = new Handler(Looper.getMainLooper());
    }

    public void a(HeartView heartView, ViewGroup viewGroup, boolean z) {
        viewGroup.addView(heartView);
        Path a = a(this.a, heartView, viewGroup, 1);
        float b = b();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(heartView, View.ROTATION, new float[]{0.0f, b});
        ofFloat.setDuration(3000);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(heartView, View.X, View.Y, a);
        ofFloat2.setDuration(3000);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(heartView, View.ALPHA, new float[]{1.0f, 0.0f});
        ofFloat3.setDuration(3000);
        ofFloat3.addListener(new h(this, viewGroup, heartView));
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(heartView, View.SCALE_X, new float[]{0.2f, z ? 1.4f : 1.1f});
        ofFloat4.addListener(new j(this, heartView, r0));
        AnimatorSet animatorSet = new AnimatorSet();
        Collection arrayList = new ArrayList();
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(heartView, View.SCALE_Y, new float[]{0.2f, r0});
        arrayList.add(ofFloat4);
        arrayList.add(ofFloat5);
        animatorSet.setDuration(200);
        animatorSet.addListener(this.c);
        animatorSet.playTogether(arrayList);
        animatorSet.start();
        AnimatorSet animatorSet2 = new AnimatorSet();
        Collection arrayList2 = new ArrayList();
        arrayList2.add(ofFloat2);
        arrayList2.add(ofFloat3);
        arrayList2.add(ofFloat);
        animatorSet2.setInterpolator(new LinearInterpolator());
        animatorSet2.addListener(this.c);
        animatorSet2.playTogether(arrayList2);
        animatorSet2.start();
    }

    public void a() {
        this.d.removeCallbacksAndMessages(null);
        for (Animator cancel : new ArrayList(this.b)) {
            cancel.cancel();
        }
        this.b.clear();
    }
}
