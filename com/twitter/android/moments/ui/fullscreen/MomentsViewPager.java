package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.twitter.ui.widget.ScrollEventsFilteringViewPager;
import com.twitter.util.r;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class MomentsViewPager extends ScrollEventsFilteringViewPager implements r {
    static final /* synthetic */ boolean a;
    private final Set<OnPageChangeListener> b;
    private OnPageChangeListener c;
    private boolean d;
    private boolean e;

    static {
        a = !MomentsViewPager.class.desiredAssertionStatus();
    }

    public MomentsViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new HashSet();
        this.c = new eo(this);
        this.e = true;
        if (a || this.c != null) {
            addOnPageChangeListener(this.c);
            return;
        }
        throw new AssertionError();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.d && getAdapter() != null && getAdapter().getCount() > 0) {
            for (OnPageChangeListener onPageSelected : this.b) {
                onPageSelected.onPageSelected(getCurrentItem());
            }
            this.b.remove(this.c);
            this.c = null;
        }
    }

    public void addOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        super.addOnPageChangeListener(onPageChangeListener);
        this.b.add(onPageChangeListener);
    }

    public void removeOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        super.removeOnPageChangeListener(onPageChangeListener);
        this.b.remove(onPageChangeListener);
    }

    public void b() {
        this.e = true;
    }

    public void a() {
        this.e = false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.e && super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.e && super.onTouchEvent(motionEvent);
    }
}
