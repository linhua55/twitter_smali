package android.support.design.widget;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout.Behavior;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: Twttr */
class ViewOffsetBehavior<V extends View> extends Behavior<V> {
    private int mTempLeftRightOffset;
    private int mTempTopBottomOffset;
    private ViewOffsetHelper mViewOffsetHelper;

    public ViewOffsetBehavior() {
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        layoutChild(coordinatorLayout, v, i);
        if (this.mViewOffsetHelper == null) {
            this.mViewOffsetHelper = new ViewOffsetHelper(v);
        }
        this.mViewOffsetHelper.onViewLayout();
        if (this.mTempTopBottomOffset != 0) {
            this.mViewOffsetHelper.setTopAndBottomOffset(this.mTempTopBottomOffset);
            this.mTempTopBottomOffset = 0;
        }
        if (this.mTempLeftRightOffset != 0) {
            this.mViewOffsetHelper.setLeftAndRightOffset(this.mTempLeftRightOffset);
            this.mTempLeftRightOffset = 0;
        }
        return true;
    }

    protected void layoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    public boolean setTopAndBottomOffset(int i) {
        if (this.mViewOffsetHelper != null) {
            return this.mViewOffsetHelper.setTopAndBottomOffset(i);
        }
        this.mTempTopBottomOffset = i;
        return false;
    }

    public boolean setLeftAndRightOffset(int i) {
        if (this.mViewOffsetHelper != null) {
            return this.mViewOffsetHelper.setLeftAndRightOffset(i);
        }
        this.mTempLeftRightOffset = i;
        return false;
    }

    public int getTopAndBottomOffset() {
        return this.mViewOffsetHelper != null ? this.mViewOffsetHelper.getTopAndBottomOffset() : 0;
    }

    public int getLeftAndRightOffset() {
        return this.mViewOffsetHelper != null ? this.mViewOffsetHelper.getLeftAndRightOffset() : 0;
    }
}
