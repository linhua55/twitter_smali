package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class VideoSegmentListView extends AdapterView<ListAdapter> {
    private ci A;
    private final cj B;
    private ListAdapter a;
    private int b;
    private boolean c;
    private int d;
    private DataSetObserver e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final Drawable o;
    private final int p;
    private final Rect q;
    private boolean r;
    private int s;
    private VideoSegmentListItemView t;
    private VideoSegmentListItemView u;
    private long v;
    private boolean w;
    private int x;
    private VelocityTracker y;
    private final ch z;

    public VideoSegmentListView(Context context) {
        this(context, null);
    }

    public VideoSegmentListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoSegmentListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = 0;
        this.g = 0;
        this.h = Cue.TYPE_UNSET;
        this.i = Cue.TYPE_UNSET;
        this.q = new Rect();
        this.x = Cue.TYPE_UNSET;
        this.z = new ch(this);
        this.B = new cj(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.VideoSegmentListView, i, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        if (dimensionPixelSize > 0) {
            setDividerWidth(dimensionPixelSize);
        }
        this.k = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.o = obtainStyledAttributes.getDrawable(2);
        this.p = obtainStyledAttributes.getDimensionPixelSize(3, 10);
        this.s = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.l = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMinimumFlingVelocity();
        this.n = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    public int getFirstVisiblePosition() {
        return this.g;
    }

    public int getLastVisiblePosition() {
        return (this.g + getChildCount()) - 1;
    }

    public ListAdapter getAdapter() {
        return this.a;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != this.a) {
            this.B.a();
            this.z.a();
            if (this.e == null) {
                this.e = new cg();
            }
            if (this.a != null) {
                this.a.unregisterDataSetObserver(this.e);
            }
            this.a = listAdapter;
            if (listAdapter != null) {
                listAdapter.registerDataSetObserver(this.e);
                this.b = listAdapter.getCount();
                return;
            }
            this.b = 0;
        }
    }

    public View getSelectedView() {
        return null;
    }

    public void setSelection(int i) {
    }

    public void a() {
        int childCount = getChildCount();
        if (childCount != 0) {
            VideoSegmentListItemView videoSegmentListItemView = (VideoSegmentListItemView) getChildAt(childCount - 1);
            int status = videoSegmentListItemView.getStatus();
            if (status == 4 || status == 3) {
                videoSegmentListItemView.a(false, false);
                status = childCount - 2;
                childCount = (this.b - 2) - this.g;
            } else {
                status = childCount - 1;
                childCount = (this.b - 1) - this.g;
            }
            int i = 0;
            while (i <= status) {
                videoSegmentListItemView = (VideoSegmentListItemView) getChildAt(i);
                if (videoSegmentListItemView.getStatus() == 1) {
                    videoSegmentListItemView.a(true, true);
                    break;
                }
                i++;
            }
            if (i > status) {
                i = Integer.MAX_VALUE;
            }
            int i2 = 0;
            while (i2 <= status) {
                if (i2 != i) {
                    videoSegmentListItemView = (VideoSegmentListItemView) getChildAt(i2);
                    boolean z = (i2 == 0 && this.g == 0) || i2 == i + 1;
                    boolean z2 = i2 == childCount || i2 == i - 1;
                    videoSegmentListItemView.a(z, z2);
                }
                i2++;
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        this.f = MeasureSpec.makeMeasureSpec(this.s, C.ENCODING_PCM_32BIT);
        this.b = this.a == null ? 0 : this.a.getCount();
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode == 0) {
            size = (getPaddingLeft() + getPaddingRight()) + this.s;
        } else if (mode == Cue.TYPE_UNSET) {
            size = a(this.f, size, -1);
        }
        setMeasuredDimension(size, ((getPaddingTop() + getPaddingBottom()) + this.s) + getResources().getDimensionPixelSize(2131689504));
    }

    private void a(View view, int i) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingTop() + getPaddingBottom(), layoutParams.height);
        int i2 = layoutParams.width;
        if (i2 > 0) {
            i2 = MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT);
        } else {
            i2 = MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(i2, childMeasureSpec);
    }

    private int a(int i, int i2, int i3) {
        int i4 = 0;
        ListAdapter listAdapter = this.a;
        if (listAdapter == null) {
            return getPaddingLeft() + getPaddingRight();
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int count = listAdapter.getCount();
        int i5 = 0;
        while (i5 < count) {
            View b = b(i5);
            a(b, i);
            paddingLeft += b.getMeasuredWidth();
            if (paddingLeft < i2) {
                if (i3 >= 0 && i5 >= i3) {
                    i4 = paddingLeft;
                }
                i5++;
            } else if (i3 < 0 || i5 <= i3 || i4 <= 0 || paddingLeft == i2) {
                return i2;
            } else {
                return i4;
            }
        }
        return paddingLeft;
    }

    private void b(boolean z) {
        if (z) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).forceLayout();
            }
        }
        f();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        b(z);
    }

    protected void dispatchDraw(Canvas canvas) {
        VideoSegmentListItemView videoSegmentListItemView;
        super.dispatchDraw(canvas);
        VideoSegmentListItemView videoSegmentListItemView2 = this.u;
        if (videoSegmentListItemView2 == null || videoSegmentListItemView2.getParent() == this) {
            videoSegmentListItemView = videoSegmentListItemView2;
        } else {
            this.u = null;
            videoSegmentListItemView = null;
        }
        if (this.r) {
            int i;
            videoSegmentListItemView2 = this.t;
            if (!(videoSegmentListItemView2 != null && videoSegmentListItemView2.a() && videoSegmentListItemView2.getParent() == this)) {
                int childCount = getChildCount();
                for (i = 0; i < childCount; i++) {
                    videoSegmentListItemView2 = (VideoSegmentListItemView) getChildAt(i);
                    if (videoSegmentListItemView2.a()) {
                        break;
                    }
                }
                videoSegmentListItemView2 = null;
                this.t = videoSegmentListItemView2;
                if (videoSegmentListItemView2 == null) {
                    return;
                }
            }
            int height = getHeight();
            i = height - this.p;
            this.q.left = videoSegmentListItemView2.getLeft();
            this.q.right = this.q.left + this.s;
            this.q.top = i;
            this.q.bottom = height;
            if (!(videoSegmentListItemView2 == videoSegmentListItemView || videoSegmentListItemView == null)) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.v;
                if (elapsedRealtime < 100) {
                    float f = ((float) elapsedRealtime) / 100.0f;
                    float f2 = 1.0f - f;
                    this.q.left = (int) ((f * ((float) this.q.left)) + (((float) videoSegmentListItemView.getLeft()) * f2));
                    this.q.right = this.q.left + this.s;
                    invalidate(0, i, getWidth(), height);
                }
            }
            this.o.setBounds(this.q);
            this.o.draw(canvas);
        }
    }

    private void e() {
        if (this.y != null) {
            this.y.recycle();
            this.y = null;
        }
    }

    public boolean a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && this.w) {
            return false;
        }
        this.B.a();
        if (this.b != 0) {
            if (this.y == null) {
                this.y = VelocityTracker.obtain();
            }
            this.y.addMovement(motionEvent);
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            switch (actionMasked) {
                case Util.TYPE_DASH /*0*/:
                    this.d = 1;
                    c(true);
                    this.z.a();
                    this.h = x;
                    this.i = y;
                    this.x = Cue.TYPE_UNSET;
                    this.w = false;
                    return true;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    switch (this.d) {
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                            this.d = 0;
                            break;
                        default:
                            VelocityTracker velocityTracker = this.y;
                            velocityTracker.computeCurrentVelocity(ExoPlayerImplInternal.MSG_SEEK_COMPLETE, (float) this.n);
                            float xVelocity = velocityTracker.getXVelocity();
                            if (Math.abs(xVelocity) > ((float) this.m)) {
                                this.z.a((int) (-xVelocity));
                                break;
                            }
                            break;
                    }
                    e();
                    this.i = Cue.TYPE_UNSET;
                    this.h = Cue.TYPE_UNSET;
                    this.x = Cue.TYPE_UNSET;
                    return true;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (this.h != Cue.TYPE_UNSET) {
                        if (getChildCount() == 0) {
                            this.d = 0;
                            return super.onTouchEvent(motionEvent);
                        }
                        actionMasked = x - this.h;
                        if (this.d != 2) {
                            if (!(this.g == 0 && getOverflowLeft() == 0 && actionMasked > 0) && (getOverflowRight() != 0 || actionMasked >= 0)) {
                                if (this.i != Cue.TYPE_UNSET) {
                                    if (this.l <= Math.abs(y - this.i)) {
                                        c(false);
                                        return true;
                                    }
                                }
                                if (this.l > Math.abs(actionMasked)) {
                                    return true;
                                }
                                this.d = 2;
                            } else {
                                c(false);
                                return true;
                            }
                        }
                        if (x == this.x) {
                            return true;
                        }
                        int i;
                        if (actionMasked > 0) {
                            i = actionMasked - this.l;
                        } else {
                            i = this.l + actionMasked;
                        }
                        if (this.x != Cue.TYPE_UNSET) {
                            i = x - this.x;
                        }
                        a(actionMasked, i);
                        this.x = x;
                    }
                    this.h = x;
                    this.i = y;
                    return true;
                case Util.TYPE_OTHER /*3*/:
                    b();
                    return true;
                default:
                    return true;
            }
        } else if (motionEvent.getX() < 0.0f || motionEvent.getX() > ((float) getWidth()) || motionEvent.getY() < 0.0f || motionEvent.getY() > ((float) getHeight())) {
            return false;
        } else {
            return true;
        }
    }

    public void b() {
        if (!this.w) {
            this.w = true;
            this.B.a();
            e();
            this.h = Cue.TYPE_UNSET;
            this.i = Cue.TYPE_UNSET;
            this.x = Cue.TYPE_UNSET;
            this.d = 0;
        }
    }

    private void c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    public boolean a(int i, int i2) {
        boolean z = true;
        int i3 = 0;
        int childCount = getChildCount();
        if (childCount != 0) {
            int overflowRight;
            boolean z2 = i2 < 0;
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int right = getChildAt(childCount - 1).getRight();
            int left = getChildAt(0).getLeft();
            if (z2) {
                overflowRight = getOverflowRight();
            } else {
                overflowRight = getOverflowLeft();
            }
            int i4 = this.g;
            if (z2) {
                if (i4 + childCount >= this.b && right + i < width - this.k) {
                    z = false;
                }
            } else if (i4 <= 0 && left + i > this.k + paddingLeft) {
                z = false;
            }
            if (z) {
                if (z2) {
                    left = 0;
                    right = 0;
                    while (left < childCount && getChildAt(left).getRight() + i < paddingLeft) {
                        left++;
                        right++;
                    }
                    left = 0;
                } else {
                    i4 = childCount - 1;
                    left = 0;
                    right = 0;
                    while (i4 >= 0 && getChildAt(i4).getLeft() + i > width) {
                        right++;
                        left = i4;
                        i4--;
                    }
                }
                if (right > 0) {
                    detachViewsFromParent(left, right);
                    if (z2) {
                        this.g = right + this.g;
                    }
                }
                right = getChildCount();
                while (i3 < right) {
                    getChildAt(i3).offsetLeftAndRight(i);
                    i3++;
                }
                invalidate();
                if (overflowRight < Math.abs(i2)) {
                    d(z2);
                }
                if (this.A != null) {
                    this.A.c();
                }
            }
        }
        return z;
    }

    public void a(int i) {
        this.B.a(i);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, this.s == 0 ? -2 : this.s);
    }

    public Drawable getIndicatorDrawable() {
        return this.o;
    }

    public void c() {
        int height = getHeight();
        invalidate(0, height - this.p, getWidth(), height);
    }

    private int getOverflowRight() {
        return getChildAt(getChildCount() - 1).getRight() - ((getWidth() - getPaddingRight()) - this.k);
    }

    private int getOverflowLeft() {
        return (getPaddingLeft() + this.k) - getChildAt(0).getLeft();
    }

    private void d(boolean z) {
        int i = 0;
        int childCount = getChildCount();
        if (z) {
            if (childCount > 0) {
                i = getChildAt(childCount - 1).getRight() + this.j;
            } else {
                i = getPaddingLeft();
            }
            c(childCount + this.g, i);
            return;
        }
        if (childCount > 0) {
            i = getChildAt(0).getLeft() - this.j;
        }
        b(this.g - 1, i);
    }

    private void b(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        while (i2 > paddingLeft && i >= 0) {
            i2 = a(i, i2, paddingTop, false).getLeft() - this.j;
            i--;
        }
        if (this.b <= 0 || i != -1 || getOverflowLeft() >= 0) {
            this.g = i + 1;
            return;
        }
        detachAllViewsFromParent();
        this.g = 0;
        c(0, getPaddingLeft() + this.k);
    }

    private void c(int i, int i2) {
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        boolean z = i == 0 && i2 == getPaddingLeft() + this.k;
        while (i2 < width && i < this.b) {
            i2 = a(i, i2, paddingTop, true).getRight() + this.j;
            i++;
        }
        if (!z && this.b > 0 && i == this.b && getOverflowRight() < 0) {
            if (this.g > 0 || getOverflowLeft() > 0) {
                detachAllViewsFromParent();
                b(this.b - 1, width - this.k);
            }
        }
    }

    private View a(int i, int i2, int i3, boolean z) {
        View b = b(i);
        a(b, i2, i3, z);
        return b;
    }

    private VideoSegmentListItemView b(int i) {
        VideoSegmentListItemView videoSegmentListItemView = (VideoSegmentListItemView) this.a.getView(i, null, this);
        videoSegmentListItemView.setThumbnailSize(this.s);
        return videoSegmentListItemView;
    }

    private void a(View view, int i, int i2, boolean z) {
        int i3;
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = layoutParams;
        addViewInLayout(view, z ? -1 : 0, layoutParams2, true);
        boolean isLayoutRequested = view.isLayoutRequested();
        if (isLayoutRequested) {
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, getPaddingTop() + getPaddingBottom(), layoutParams2.height);
            i3 = layoutParams2.width;
            if (i3 > 0) {
                i3 = MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT);
            } else {
                i3 = MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i3, childMeasureSpec);
        } else {
            cleanupLayoutState(view);
        }
        i3 = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (!z) {
            i -= i3;
        }
        if (isLayoutRequested) {
            view.layout(i, i2, i3 + i, measuredHeight + i2);
            return;
        }
        view.offsetLeftAndRight(i - view.getLeft());
        view.offsetTopAndBottom(i2 - view.getTop());
    }

    private void f() {
        boolean z = this.c;
        int i = this.g;
        View childAt = getChildAt(0);
        detachAllViewsFromParent();
        if (childAt == null) {
            c(i, getPaddingLeft() + this.k);
        } else {
            c(i, childAt.getLeft());
        }
        a();
        if (z) {
            invalidate();
        }
        this.c = false;
    }

    public void setPressed(boolean z) {
    }

    public void d() {
        this.u = this.t;
        this.v = SystemClock.elapsedRealtime();
        int height = getHeight();
        invalidate(0, height - this.p, getWidth(), height);
    }

    public void setDividerWidth(int i) {
        this.j = i;
        requestLayout();
        invalidate();
    }

    public int getDividerWidth() {
        return this.j;
    }

    public void setThumbnailSize(int i) {
        this.s = i;
        this.f = MeasureSpec.makeMeasureSpec(this.s, C.ENCODING_PCM_32BIT);
        forceLayout();
    }

    public int getThumbnailSize() {
        return this.s;
    }

    public void a(boolean z) {
        this.r = z;
        invalidate();
    }

    public void setOnScrollListener(ci ciVar) {
        this.A = ciVar;
    }
}
