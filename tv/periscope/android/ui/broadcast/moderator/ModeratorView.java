package tv.periscope.android.ui.broadcast.moderator;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import tv.periscope.android.library.i;
import tv.periscope.android.library.k;
import tv.periscope.android.library.m;
import tv.periscope.android.library.o;
import tv.periscope.android.library.p;
import tv.periscope.model.chat.MessageType.ReportType;

/* compiled from: Twttr */
public class ModeratorView extends LinearLayout {
    private Animator a;
    private Animator b;
    private Animator c;
    private Animator d;
    private float e;
    private float f;
    private boolean g;
    private int h;
    private View i;
    private TextView j;
    private TextView k;
    private TextView l;
    private View m;
    private ProgressBar n;
    private View o;
    private View p;
    private View q;
    private Button r;
    private Button s;
    private Button t;
    private final int u;
    private final int v;
    private i w;
    private j x;
    private k y;

    public ModeratorView(Context context) {
        this(context, null);
    }

    public ModeratorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ModeratorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = false;
        View inflate = LayoutInflater.from(context).inflate(m.ps__moderator_overlay, this, true);
        this.m = inflate.findViewById(k.info_container);
        this.k = (TextView) inflate.findViewById(k.info);
        this.n = (ProgressBar) inflate.findViewById(k.timer);
        this.q = inflate.findViewById(k.moderator_out_of_time);
        this.l = (TextView) inflate.findViewById(k.learn_more_about_moderation);
        this.o = inflate.findViewById(k.buttons_container);
        this.r = (Button) inflate.findViewById(k.negative);
        this.s = (Button) inflate.findViewById(k.positive);
        this.t = (Button) inflate.findViewById(k.neutral);
        this.p = inflate.findViewById(k.message_container);
        this.i = inflate.findViewById(k.message);
        this.j = (TextView) inflate.findViewById(k.message_moderate_body);
        OnClickListener hVar = new h();
        this.r.setOnClickListener(hVar);
        this.s.setOnClickListener(hVar);
        this.t.setOnClickListener(hVar);
        this.l.setOnClickListener(hVar);
        this.y = new k(this);
        this.e = (float) getResources().getDimensionPixelSize(i.ps__moderator_spacing);
        this.f = (float) getResources().getDimensionPixelSize(i.ps__moderator_timer_spacing);
        this.a = b(500);
        this.b = c(1000);
        this.c = d(500);
        this.d = e(500);
        this.u = getResources().getDimensionPixelSize(i.ps__moderator_timer_height);
        this.v = getResources().getDimensionPixelSize(i.ps__moderator_timer_height_small);
    }

    public TextView getInfo() {
        return this.k;
    }

    public View getInfoContainer() {
        return this.m;
    }

    private void setReportType(ReportType reportType) {
        switch (g.b[reportType.ordinal()]) {
            case p.View_android_focusable /*1*/:
                this.r.setText(o.ps__moderator_negative_spam);
            default:
                this.r.setText(o.ps__moderator_negative);
        }
    }

    public void a() {
        d();
        setVisibility(8);
    }

    public void b() {
        this.k.setVisibility(8);
    }

    public void c() {
        this.n.getLayoutParams().height = this.v;
    }

    public void setModeratorSelectionListener(i iVar) {
        this.w = iVar;
    }

    private void setChildrenVisibility(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setVisibility(i);
        }
    }

    private void a(int i, int i2) {
        this.y.sendEmptyMessageDelayed(i, (long) i2);
        this.y.sendEmptyMessage(3);
    }

    private void a(int i) {
        a(1, i);
    }

    public void d() {
        this.b.cancel();
        this.d.cancel();
        setCountdownTimerBackgroundAlpha(0.2f);
        this.n.setAlpha(1.0f);
        this.k.setAlpha(1.0f);
        this.g = false;
        this.y.a();
        this.n.setMax(this.h);
        this.n.setProgress(this.h);
        e();
        setChildrenVisibility(0);
    }

    private void e() {
        int progress = this.n.getProgress();
        int max = this.n.getMax();
        float f = ((float) (max - progress)) / ((float) max);
        Drawable progressDrawable = this.n.getProgressDrawable();
        if (progressDrawable instanceof LayerDrawable) {
            ((LayerDrawable) progressDrawable).findDrawableByLayerId(16908301).setAlpha(Math.min(255, (int) ((f + 0.2f) * 255.0f)));
        }
    }

    private void setCountdownTimerBackgroundAlpha(float f) {
        Drawable progressDrawable = this.n.getProgressDrawable();
        if (progressDrawable instanceof LayerDrawable) {
            ((LayerDrawable) progressDrawable).findDrawableByLayerId(16908288).setAlpha((int) (255.0f * f));
        }
    }

    private Animator b(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.o, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.k, View.ALPHA, new float[]{0.0f, 1.0f});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.o, View.TRANSLATION_Y, new float[]{this.e, 0.0f});
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.n, View.TRANSLATION_Y, new float[]{this.e + this.f, 0.0f});
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.p, View.TRANSLATION_Y, new float[]{this.e + this.f, 0.0f});
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.i, View.TRANSLATION_Y, new float[]{(float) this.i.getMeasuredHeight(), 0.0f});
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.m, View.TRANSLATION_Y, new float[]{(this.e + this.f) + ((float) this.i.getMeasuredHeight()), 0.0f});
        Animator animatorSet = new AnimatorSet();
        animatorSet.setDuration((long) i);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat6, ofFloat5, ofFloat7});
        animatorSet.addListener(new c(this, ofFloat6, ofFloat7));
        return animatorSet;
    }

    private Animator c(int i) {
        ObjectAnimator.ofFloat(this.k, View.ALPHA, new float[]{0.5f, 1.0f}).setDuration((long) i);
        ObjectAnimator.ofFloat(this.k, View.ALPHA, new float[]{1.0f, 0.5f}).setDuration((long) i);
        new AnimatorSet().playSequentially(new Animator[]{r0, r1});
        ObjectAnimator.ofFloat(this.n, View.ALPHA, new float[]{0.5f, 1.0f}).setDuration((long) i);
        ObjectAnimator.ofFloat(this.n, View.ALPHA, new float[]{1.0f, 0.5f}).setDuration((long) i);
        new AnimatorSet().playSequentially(new Animator[]{r0, r1});
        Animator animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{r3, r2});
        animatorSet.addListener(new d(this));
        return animatorSet;
    }

    private Animator d(int i) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.o, View.ALPHA, new float[]{1.0f, 0.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.o, View.TRANSLATION_Y, new float[]{0.0f, this.e});
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.n, View.TRANSLATION_Y, new float[]{0.0f, this.e + this.f});
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.p, View.TRANSLATION_Y, new float[]{0.0f, this.e + this.f});
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.i, View.TRANSLATION_Y, new float[]{0.0f, (float) this.i.getMeasuredHeight()});
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.m, View.TRANSLATION_Y, new float[]{0.0f, (this.e + this.f) + ((float) this.i.getMeasuredHeight())});
        Animator animatorSet = new AnimatorSet();
        animatorSet.setDuration((long) i);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3, ofFloat5, ofFloat4, ofFloat6});
        animatorSet.addListener(new e(this, ofFloat5, ofFloat6));
        return animatorSet;
    }

    private Animator e(int i) {
        Animator d = d(i);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.m, View.ALPHA, new float[]{1.0f, 0.0f});
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.q, View.ALPHA, new float[]{0.0f, 1.0f});
        Animator animatorSet = new AnimatorSet();
        animatorSet.setDuration((long) i);
        animatorSet.playTogether(new Animator[]{ofFloat, ofFloat2, d});
        animatorSet.addListener(new f(this));
        return animatorSet;
    }
}
