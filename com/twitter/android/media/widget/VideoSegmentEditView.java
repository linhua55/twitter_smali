package com.twitter.android.media.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class VideoSegmentEditView extends RelativeLayout implements ci {
    private static final int a;
    private int A;
    private int B;
    private int C;
    private int D;
    private float E;
    private int F;
    private boolean G;
    private final int b;
    private final int c;
    private final bt d;
    private final bx e;
    private final bu f;
    private final bz g;
    private final bz h;
    private final ca i;
    private final bv j;
    private VideoSegmentListView k;
    private cc l;
    private bw m;
    private by n;
    private bs o;
    private int p;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private Drawable u;
    private float v;
    private final Rect w;
    private int x;
    private int y;
    private int z;

    static {
        a = ViewConfiguration.getTapTimeout() * 2;
    }

    public VideoSegmentEditView(Context context) {
        this(context, null);
    }

    public VideoSegmentEditView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoSegmentEditView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new bt();
        this.e = new bx(this);
        this.f = new bu(this);
        this.g = new bz(this, 400);
        this.h = new bz(this, 120);
        this.i = new ca(this);
        this.j = new bv(this);
        this.w = new Rect();
        this.z = -1;
        this.A = -1;
        this.B = -1;
        this.b = ViewConfiguration.get(context).getScaledTouchSlop();
        this.c = this.b * 2;
        setMotionEventSplittingEnabled(false);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.k = (VideoSegmentListView) findViewById(16908298);
        this.k.setOnTouchListener(new bn(this));
        this.k.setOnScrollListener(this);
        this.o = new bs();
        this.E = getResources().getDisplayMetrics().xdpi * 0.1f;
    }

    public boolean a() {
        return this.B != -1;
    }

    public void b() {
        if (this.D >= 0) {
            removeCallbacks(this.o);
            this.D = -1;
            this.B = -1;
            this.t = false;
            if (this.u != null) {
                this.f.a();
            }
            this.k.b();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!(this.l == null || this.k.getVisibility() == 8)) {
            int a = this.l.a();
            if (a <= 0) {
                this.k.setVisibility(4);
                this.k.setThumbnailSize(0);
            } else if (a != this.k.getThumbnailSize()) {
                this.k.setVisibility(0);
                this.k.setThumbnailSize(a);
                measure(MeasureSpec.makeMeasureSpec(getWidth(), C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(getHeight(), C.ENCODING_PCM_32BIT));
                super.onLayout(true, i, i2, i3, i4);
            }
        }
        if (this.n != null) {
            this.n.g();
        }
    }

    boolean a(MotionEvent motionEvent) {
        if (this.l == null || g()) {
            return false;
        }
        this.p = ((int) motionEvent.getX()) + this.k.getLeft();
        this.r = ((int) motionEvent.getY()) + this.k.getTop();
        this.C = getClosestItemPosition();
        switch (motionEvent.getActionMasked()) {
            case Util.TYPE_DASH /*0*/:
                this.q = this.p;
                this.s = this.r;
                this.t = false;
                this.D = motionEvent.getPointerId(0);
                this.B = this.C;
                postDelayed(this.o, (long) a);
                this.k.a(motionEvent);
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.D != motionEvent.getPointerId(motionEvent.getActionIndex())) {
                    return false;
                }
                if (this.t) {
                    return this.k.a(motionEvent);
                }
                if (this.u == null) {
                    if (Math.abs(this.r - this.s) >= this.c) {
                        this.k.b();
                        removeCallbacks(this.o);
                        this.o.run();
                        if (this.u == null) {
                            return true;
                        }
                    } else if (Math.abs(this.p - this.q) < this.b) {
                        return false;
                    } else {
                        removeCallbacks(this.o);
                        this.t = true;
                        return this.k.a(motionEvent);
                    }
                }
                this.w.offsetTo(this.p - this.x, this.r - this.y);
                this.l.b(this.w);
                b(this.C);
                return true;
            case Util.TYPE_OTHER /*3*/:
                b();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (this.D != motionEvent.getPointerId(motionEvent.getActionIndex())) {
                    return false;
                }
                break;
            default:
                return false;
        }
        this.D = -1;
        int i = this.B;
        this.B = -1;
        if (this.t) {
            this.t = false;
            return this.k.a(motionEvent);
        }
        removeCallbacks(this.o);
        if (this.u != null) {
            if (this.l.a(this.z, this.w)) {
                this.j.a();
                this.F = this.A;
                if (!this.l.d(this.F)) {
                    this.G = true;
                    postDelayed(new bo(this), 100);
                } else if (this.F == this.l.getCount() - 1) {
                    this.i.a();
                } else {
                    this.g.a();
                }
            } else {
                this.f.a();
            }
            this.d.a();
            invalidate();
            this.k.b();
            return true;
        } else if (this.m == null || i == -1 || this.A != -1 || Math.abs(this.q - this.p) >= this.b || Math.abs(this.s - this.r) >= this.b) {
            this.k.a(motionEvent);
            return true;
        } else {
            this.k.b();
            this.m.c(i);
            return true;
        }
    }

    public void c() {
        invalidate();
        removeCallbacks(this.o);
    }

    public void setAdapter(cc ccVar) {
        if (ccVar != null) {
            this.l = ccVar;
            this.k.setAdapter((ListAdapter) ccVar);
            ccVar.a(this);
            return;
        }
        setListItemClickListener(null);
        this.l = null;
        this.k.setAdapter(null);
    }

    public void a(int i) {
        this.F = i;
        this.h.a();
    }

    private void b(int i) {
        if (this.l == null || !this.l.a(this.w)) {
            this.d.a();
        } else {
            VideoSegmentListView videoSegmentListView = this.k;
            int i2 = this.z;
            View childAt;
            if (i2 > -1 && i > -1 && i2 != i) {
                int firstVisiblePosition = videoSegmentListView.getFirstVisiblePosition();
                View childAt2 = videoSegmentListView.getChildAt(i - firstVisiblePosition);
                childAt = videoSegmentListView.getChildAt(i2 - firstVisiblePosition);
                int width = childAt.getWidth();
                int min = Math.min(childAt2.getLeft(), childAt.getLeft()) + width;
                firstVisiblePosition = Math.max(childAt2.getRight(), childAt.getRight()) - width;
                if (this.p <= min || this.p >= firstVisiblePosition) {
                    this.z = i;
                    b(i2, i);
                }
            } else if (i2 == i) {
                childAt = videoSegmentListView.getChildAt(videoSegmentListView.getLastVisiblePosition() - videoSegmentListView.getFirstVisiblePosition());
                if (childAt != null && this.w.left > childAt.getRight()) {
                    this.z = videoSegmentListView.getLastVisiblePosition();
                    b(i2, this.z);
                }
            }
            i2 = this.p - videoSegmentListView.getLeft();
            int width2 = videoSegmentListView.getWidth();
            if (((float) i2) > 0.66f * ((float) width2)) {
                this.d.a(1);
            } else if (((float) i2) < ((float) width2) * 0.33f) {
                this.d.a(0);
            } else {
                this.d.a();
            }
        }
        invalidate();
    }

    private void a(int i, int i2) {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.addOnGlobalLayoutListener(new bp(this, viewTreeObserver, i, i2));
        requestLayout();
    }

    void d() {
        if (this.l != null) {
            this.l.g(this.z);
        }
        this.u = null;
        this.A = -1;
        f();
        invalidate();
    }

    void e() {
        if (this.F != -1) {
            if (this.l != null) {
                this.l.j(this.F);
            }
            this.F = -1;
            this.A = -1;
            this.k.d();
        }
    }

    private void b(int i, int i2) {
        if (this.l != null) {
            if (i < i2) {
                while (i < i2) {
                    if (i >= 0) {
                        this.l.c(i, i + 1);
                        a(i, i + 1);
                    }
                    i++;
                }
            } else {
                while (i > i2) {
                    if (i >= 1) {
                        this.l.c(i, i - 1);
                        a(i, i - 1);
                    }
                    i--;
                }
            }
        }
        if (i2 != -1) {
            this.A = i2;
            this.k.d();
        }
        f();
    }

    private void f() {
        if (this.l != null) {
            int firstVisiblePosition = this.k.getFirstVisiblePosition();
            int childCount = this.k.getChildCount() + firstVisiblePosition;
            while (firstVisiblePosition < childCount) {
                c(firstVisiblePosition);
                firstVisiblePosition++;
            }
            this.k.a();
        }
    }

    private void c(int i) {
        VideoSegmentListItemView videoSegmentListItemView = (VideoSegmentListItemView) this.k.getChildAt(i - this.k.getFirstVisiblePosition());
        if (videoSegmentListItemView != null) {
            a(i, videoSegmentListItemView);
        }
    }

    private void a(int i, VideoSegmentListItemView videoSegmentListItemView) {
        int i2 = 0;
        int i3 = (this.u == null || i != this.z) ? 0 : 4;
        videoSegmentListItemView.setVisibility(i3);
        if (i == this.A) {
            i2 = 1;
        } else if (this.l != null) {
            i2 = this.l.a(i);
        }
        videoSegmentListItemView.setStatus(i2);
    }

    private int getClosestItemPosition() {
        for (int i = 0; i < this.k.getChildCount(); i++) {
            if (this.p - this.k.getLeft() < this.k.getChildAt(i).getRight()) {
                return i + this.k.getFirstVisiblePosition();
            }
        }
        return -1;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Drawable drawable = this.u;
        if (drawable != null) {
            Rect rect = this.w;
            drawable.setBounds(rect);
            float f = this.v;
            canvas.save();
            canvas.scale(f, f, (float) ((rect.left + rect.right) / 2), (float) ((rect.bottom + rect.top) / 2));
            drawable.draw(canvas);
            canvas.restore();
        }
    }

    private void d(int i) {
        VideoSegmentListItemView videoSegmentListItemView = (VideoSegmentListItemView) this.k.getChildAt(i - this.k.getFirstVisiblePosition());
        if (videoSegmentListItemView != null && this.q - this.k.getLeft() >= videoSegmentListItemView.getLeft() && this.s - this.k.getTop() >= videoSegmentListItemView.getTop() && this.q - this.k.getLeft() <= videoSegmentListItemView.getRight() && this.s - this.k.getTop() <= videoSegmentListItemView.getBottom()) {
            this.u = videoSegmentListItemView.getFloatingShadow();
            Rect rect = this.w;
            videoSegmentListItemView.getHitRect(rect);
            this.w.offset(this.k.getLeft(), this.k.getTop());
            this.x = this.q - rect.left;
            this.y = this.s - rect.top;
            this.v = 1.0f;
        }
    }

    private boolean e(int i) {
        if (i != this.A || i == -1 || this.l == null) {
            return false;
        }
        d(i);
        this.l.f(i);
        this.z = this.C;
        c(i);
        this.e.a();
        invalidate();
        return true;
    }

    private void f(int i) {
        View childAt = this.k.getChildAt(i - this.k.getFirstVisiblePosition());
        if (childAt != null) {
            if (this.A != i) {
                childAt.setActivated(true);
                if (this.A != -1) {
                    childAt = this.k.getChildAt(this.A - this.k.getFirstVisiblePosition());
                    if (childAt != null) {
                        childAt.setActivated(false);
                    }
                }
                this.A = i;
            }
            f();
            invalidate();
        }
    }

    private boolean g() {
        return this.g.a || this.h.a || this.i.a || this.j.a || this.G;
    }

    public void setListItemClickListener(bw bwVar) {
        this.m = bwVar;
    }

    public void setPostLayoutListener(by byVar) {
        this.n = byVar;
    }
}
