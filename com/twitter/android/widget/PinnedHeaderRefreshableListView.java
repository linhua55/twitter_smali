package com.twitter.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.refresh.widget.RefreshableListView;
import com.twitter.util.ak;

/* compiled from: Twttr */
public class PinnedHeaderRefreshableListView extends RefreshableListView {
    private dl a;
    private View b;
    private boolean c;
    private int d;
    private int e;
    private View f;
    private int g;
    private MotionEvent k;
    private float l;
    private float m;

    public PinnedHeaderRefreshableListView(Context context) {
        this(context, null);
    }

    public PinnedHeaderRefreshableListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772078);
    }

    public PinnedHeaderRefreshableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a(View view, int i) {
        this.b = view;
        requestLayout();
    }

    public void setRedrawOnDirtyHeaderView(View view) {
        this.f = view;
    }

    public void setBuiltInDividerHeight(int i) {
        this.g = i;
    }

    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        this.a = (dl) listAdapter;
    }

    public dl getPinnedHeaderAdapter() {
        return this.a;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b != null) {
            measureChild(this.b, i, i2);
            this.d = this.b.getMeasuredWidth();
            this.e = this.b.getMeasuredHeight();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.b != null) {
            int paddingLeft = getPaddingLeft();
            this.b.layout(paddingLeft, 0, this.d + paddingLeft, this.e);
            a(getFirstVisiblePosition());
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        float y = motionEvent.getY();
        float x = motionEvent.getX();
        boolean z = this.c && this.b != null && y <= ((float) this.b.getBottom()) && y >= ((float) this.b.getTop()) && x <= ((float) this.b.getRight()) && x >= ((float) this.b.getLeft());
        if (z) {
            float scrollX;
            float scrollY;
            switch (motionEvent.getActionMasked()) {
                case Util.TYPE_DASH /*0*/:
                    this.l = x;
                    this.m = y;
                    this.k = MotionEvent.obtain(motionEvent);
                    return true;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    scrollX = (float) (getScrollX() - this.b.getLeft());
                    scrollY = (float) (getScrollY() - this.b.getTop());
                    motionEvent.offsetLocation(scrollX, scrollY);
                    if (this.k != null) {
                        this.k.offsetLocation(scrollX, scrollY);
                        this.b.dispatchTouchEvent(this.k);
                        this.k.recycle();
                        this.k = null;
                    }
                    boolean dispatchTouchEvent = this.b.dispatchTouchEvent(motionEvent);
                    invalidate();
                    return dispatchTouchEvent;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (this.k != null) {
                        scrollX = motionEvent.getX() - this.l;
                        scrollY = motionEvent.getY() - this.m;
                        if ((scrollX * scrollX) + (scrollY * scrollY) > ak.e()) {
                            super.dispatchTouchEvent(this.k);
                            this.k.recycle();
                            this.k = null;
                            break;
                        }
                    }
                    break;
                default:
                    if (this.k != null) {
                        super.dispatchTouchEvent(this.k);
                        this.k.recycle();
                        this.k = null;
                        break;
                    }
                    break;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.k != null) {
            this.k.recycle();
        }
        this.k = null;
        return super.dispatchTouchEvent(motionEvent);
    }

    public void a(int i) {
        if (this.b != null && getChildCount() != 0) {
            int lastVisiblePosition;
            int i2;
            int bottom = getChildAt(0).getBottom();
            if (bottom <= (-this.g)) {
                lastVisiblePosition = getLastVisiblePosition() - getFirstVisiblePosition();
                i2 = 1;
                while (i2 < lastVisiblePosition) {
                    View childAt = getChildAt(i2);
                    if (childAt != null) {
                        if (childAt.getVisibility() == 0 && childAt.getHeight() > 0) {
                            i = getFirstVisiblePosition() + i2;
                            bottom = childAt.getBottom();
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
            }
            i2 = getHeaderViewsCount();
            lastVisiblePosition = this.a.a_(i, i2);
            int paddingLeft = getPaddingLeft();
            switch (lastVisiblePosition) {
                case Util.TYPE_DASH /*0*/:
                    this.c = false;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.a.a(this.b, i, i2, NalUnitUtil.EXTENDED_SAR);
                    if (this.b.getTop() != 0) {
                        this.b.layout(paddingLeft, 0, this.d + paddingLeft, this.e);
                    }
                    this.c = true;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    int i3;
                    lastVisiblePosition = this.b.getHeight();
                    if (lastVisiblePosition <= 0 || bottom >= this.g + lastVisiblePosition) {
                        bottom = NalUnitUtil.EXTENDED_SAR;
                        i3 = 0;
                    } else {
                        i3 = bottom - (this.g + lastVisiblePosition);
                        bottom = ((lastVisiblePosition + i3) * NalUnitUtil.EXTENDED_SAR) / lastVisiblePosition;
                    }
                    this.a.a(this.b, i, i2, bottom);
                    if (this.b.getTop() != i3) {
                        this.b.layout(paddingLeft, i3, this.d + paddingLeft, this.e + i3);
                    }
                    this.c = true;
                default:
            }
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        if (this.c && this.f != null && this.f.isDirty()) {
            invalidate();
        }
        super.dispatchDraw(canvas);
        if (this.c) {
            drawChild(canvas, this.b, getDrawingTime());
        }
    }
}
