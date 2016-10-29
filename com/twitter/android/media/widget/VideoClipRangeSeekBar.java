package com.twitter.android.media.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.view.TickMarksView;
import com.twitter.library.view.y;
import com.twitter.library.widget.ai;
import com.twitter.util.al;

/* compiled from: Twttr */
public class VideoClipRangeSeekBar extends FrameLayout {
    private int A;
    private int B;
    private boolean C;
    private long D;
    private boolean E;
    private final int a;
    private final Animation b;
    private int c;
    private float d;
    private float e;
    private float f;
    private float g;
    private int h;
    private int i;
    private ProgressBar j;
    private ai k;
    private ai l;
    private View m;
    private TickMarksView n;
    private int o;
    private bk p;
    private bk q;
    private bk r;
    private bk s;
    private bl t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private float y;
    private float z;

    static /* synthetic */ float a(VideoClipRangeSeekBar videoClipRangeSeekBar, float f) {
        float f2 = videoClipRangeSeekBar.d + f;
        videoClipRangeSeekBar.d = f2;
        return f2;
    }

    static /* synthetic */ float b(VideoClipRangeSeekBar videoClipRangeSeekBar, float f) {
        float f2 = videoClipRangeSeekBar.e + f;
        videoClipRangeSeekBar.e = f2;
        return f2;
    }

    public VideoClipRangeSeekBar(Context context) {
        this(context, null, 0);
    }

    public VideoClipRangeSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoClipRangeSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.w = false;
        this.y = 0.0f;
        this.z = 1.0f;
        this.a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.b = AnimationUtils.loadAnimation(context, 2131034170);
        this.b.setAnimationListener(new bf(this));
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.A = getPaddingLeft();
        this.B = getPaddingRight();
        Drawable aiVar = new ai(getContext(), 2130837660);
        this.k = aiVar;
        aiVar.a(1, false);
        aiVar.a(2, false);
        this.i = aiVar.getDrawable(4).getIntrinsicWidth();
        ProgressBar progressBar = (ProgressBar) findViewById(2131952497);
        this.j = progressBar;
        progressBar.setProgressDrawable(aiVar);
        View findViewById = findViewById(2131952498);
        this.m = findViewById;
        int i = findViewById.getLayoutParams().width;
        int i2 = (int) (((float) i) * AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION);
        this.h = i * 2;
        Drawable aiVar2 = new ai(getContext(), 2130837661);
        aiVar2.a(1, false);
        this.l = aiVar2;
        TickMarksView tickMarksView = (TickMarksView) findViewById(2131952496);
        tickMarksView.setBackgroundDrawable(aiVar2);
        this.n = tickMarksView;
        this.p = new bg(this, progressBar, i);
        this.q = new bi(this, progressBar, i, i2);
        this.r = new bj(this, progressBar, i, i2);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        c();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(i, i3);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (motionEvent.getActionMasked()) {
            case Util.TYPE_DASH /*0*/:
                if (isEnabled()) {
                    if (!this.E) {
                        this.C = true;
                        this.s = b(x, y);
                        if (this.s != null) {
                            this.s.b(x, y);
                            j();
                            break;
                        }
                    }
                }
                return false;
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Util.TYPE_OTHER /*3*/:
                if (this.s != null) {
                    boolean z2;
                    this.s.c();
                    if (this.s.d()) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    this.s = null;
                    b(z2);
                } else if (this.p.c(x, y)) {
                    a(true);
                }
                this.C = false;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (!(this.E || this.s == null || !this.s.e(x, y))) {
                    if (!this.s.d()) {
                        z = true;
                    }
                    a(z);
                    break;
                }
        }
        return true;
    }

    public boolean a() {
        return this.v;
    }

    public void setVideoTrimBarListener(bl blVar) {
        this.t = blVar;
    }

    public void setMaxClipLengthMs(int i) {
        this.c = i;
    }

    public void a(float f, float f2) {
        this.g = f;
        this.f = f2;
    }

    public void b(float f, float f2) {
        this.d = f;
        this.e = f2;
        requestLayout();
    }

    public void a(int i, y[] yVarArr, boolean z) {
        boolean z2;
        this.x = i;
        if (this.x > getZoomInThreshold()) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.v = z2;
        this.n.setTickMarks(yVarArr);
        this.n.a(0, i);
        this.n.a(z ? 3 : 2);
    }

    public void a(int i, int i2, int i3) {
        this.o = i;
        this.j.setMax(i2 - i);
        this.j.setProgress(i3 - i);
        f();
    }

    public void a(int i) {
        this.j.setProgress(Math.max(this.j.getProgress(), i - this.o));
    }

    public void b() {
        d();
    }

    void c() {
        int max = Math.max((int) ((((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) * (this.e - this.d)) / (this.z - this.y)), this.h);
        boolean z = this.w || !this.v || max > this.h;
        this.u = z;
        this.j.measure(MeasureSpec.makeMeasureSpec(max, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(this.j.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
    }

    void a(int i, int i2) {
        boolean z = false;
        ProgressBar progressBar = this.j;
        int measuredWidth = progressBar.getMeasuredWidth();
        boolean z2 = this.w || measuredWidth > this.h;
        this.k.a(3, z2);
        ai aiVar = this.k;
        if (!z2 || measuredWidth >= this.h + this.i) {
            z = true;
        }
        aiVar.a(4, z);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        paddingLeft = Math.min(paddingLeft + ((int) ((((float) (((i2 - i) - paddingLeft) - paddingRight)) / (this.z - this.y)) * (this.d - this.y))), (i2 - paddingRight) - measuredWidth);
        paddingRight = paddingLeft + measuredWidth;
        progressBar.layout(paddingLeft, progressBar.getTop(), paddingRight, progressBar.getBottom());
        View view = this.m;
        if (view.getVisibility() == 0) {
            int width = view.getWidth();
            if (this.s != this.q) {
                paddingLeft = paddingRight - width;
            }
            view.layout(paddingLeft, view.getTop(), paddingLeft + width, view.getBottom());
        }
    }

    void d() {
        this.k.a(0, true);
        this.k.a(1, false);
        this.k.a(2, false);
    }

    void e() {
        this.k.a(0, false);
        this.k.a(1, true);
        this.k.a(2, false);
    }

    void f() {
        this.k.a(0, true);
        this.k.a(1, false);
        this.k.a(2, true);
    }

    void g() {
        this.E = true;
        this.m.setVisibility(0);
        this.m.startAnimation(this.b);
    }

    public void h() {
        if (this.w) {
            this.w = false;
            this.E = true;
            startAnimation(new bm(this, this.y, this.z, 0.0f, 1.0f));
        } else if (this.x > getZoomInThreshold()) {
            this.w = true;
            float f = this.e + this.d;
            float zoomInThreshold = (f - (((float) getZoomInThreshold()) / ((float) this.x))) / 2.0f;
            float f2 = f - zoomInThreshold;
            if (zoomInThreshold < 0.0f) {
                f2 -= zoomInThreshold;
                zoomInThreshold = 0.0f;
            } else if (f2 > 1.0f) {
                zoomInThreshold -= f2 - 1.0f;
                f2 = 1.0f;
            }
            this.E = true;
            startAnimation(new bm(this, 0.0f, 1.0f, zoomInThreshold, f2));
        }
    }

    boolean i() {
        if (!this.w || !this.C) {
            return false;
        }
        float f;
        long b = al.b();
        float f2 = (((float) (b - this.D)) * 30.0f) / ((float) this.x);
        this.D = b;
        if (this.d == this.y && this.y > 0.0f) {
            f = -Math.min(this.y, f2);
        } else if (this.e != this.z || this.z >= 1.0f) {
            return false;
        } else {
            f = Math.min(1.0f - this.z, f2);
        }
        this.y += f;
        this.z += f;
        this.d += f;
        this.e = f + this.e;
        this.n.a((int) (this.y * ((float) this.x)), (int) (this.z * ((float) this.x)));
        a(true);
        return true;
    }

    private void j() {
        if (this.t != null) {
            this.t.b();
        }
    }

    private void a(boolean z) {
        if (this.t != null) {
            this.t.a(this.d, this.e, z);
        }
    }

    private void b(boolean z) {
        if (this.t != null) {
            this.t.b(this.d, this.e, z);
        }
    }

    private bk b(int i, int i2) {
        if (this.p.a(i, i2)) {
            return this.p;
        }
        if (this.q.a(i, i2)) {
            return this.q;
        }
        if (this.r.a(i, i2)) {
            return this.r;
        }
        return null;
    }

    private int getZoomInThreshold() {
        return this.c * 2;
    }
}
