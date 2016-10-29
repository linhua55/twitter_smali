package com.twitter.ui.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import java.lang.reflect.Field;

/* compiled from: Twttr */
public class LockableViewPager extends ViewPager {
    private boolean a;
    private j b;

    public LockableViewPager(Context context) {
        this(context, null);
    }

    public LockableViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = true;
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            Field declaredField2 = ViewPager.class.getDeclaredField("sInterpolator");
            if (declaredField != null && declaredField2 != null) {
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                this.b = new j((Interpolator) declaredField2.get(null), null);
                declaredField.set(this, this.b);
            }
        } catch (IllegalAccessException e) {
            this.b = null;
        } catch (NoSuchFieldException e2) {
            this.b = null;
        }
    }

    public void setScrollDurationMilliseconds(int i) {
        if (this.b != null) {
            this.b.a(i);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.a) {
            try {
                z = super.onTouchEvent(motionEvent);
            } catch (ArrayIndexOutOfBoundsException e) {
            } catch (IllegalArgumentException e2) {
            }
        }
        return z;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.a) {
            try {
                z = super.onInterceptTouchEvent(motionEvent);
            } catch (ArrayIndexOutOfBoundsException e) {
            } catch (IllegalArgumentException e2) {
            }
        }
        return z;
    }

    public boolean getPagingEnabled() {
        return this.a;
    }

    public void setPagingEnabled(boolean z) {
        this.a = z;
    }
}
