package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout.DefaultBehavior;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@DefaultBehavior(Behavior.class)
/* compiled from: Twttr */
public class AppBarLayout extends LinearLayout {
    private static final int INVALID_SCROLL_RANGE = -1;
    private static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    private static final int PENDING_ACTION_COLLAPSED = 2;
    private static final int PENDING_ACTION_EXPANDED = 1;
    private static final int PENDING_ACTION_NONE = 0;
    private int mDownPreScrollRange;
    private int mDownScrollRange;
    boolean mHaveChildWithInterpolator;
    private WindowInsetsCompat mLastInsets;
    private final List<OnOffsetChangedListener> mListeners;
    private int mPendingAction;
    private float mTargetElevation;
    private int mTotalScrollRange;

    /* compiled from: Twttr */
    public class Behavior extends HeaderBehavior<AppBarLayout> {
        private static final int ANIMATE_OFFSET_DIPS_PER_SECOND = 300;
        private static final int INVALID_POSITION = -1;
        private ValueAnimatorCompat mAnimator;
        private WeakReference<View> mLastNestedScrollingChildRef;
        private int mOffsetDelta;
        private int mOffsetToChildIndexOnLayout;
        private boolean mOffsetToChildIndexOnLayoutIsMinHeight;
        private float mOffsetToChildIndexOnLayoutPerc;
        private DragCallback mOnDragCallback;
        private boolean mSkipNestedPreScroll;
        private boolean mWasNestedFlung;

        /* compiled from: Twttr */
        /* renamed from: android.support.design.widget.AppBarLayout.Behavior.1 */
        class AnonymousClass1 implements AnimatorUpdateListener {
            final /* synthetic */ AppBarLayout val$child;
            final /* synthetic */ CoordinatorLayout val$coordinatorLayout;

            AnonymousClass1(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.val$coordinatorLayout = coordinatorLayout;
                this.val$child = appBarLayout;
            }

            public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                Behavior.this.setHeaderTopBottomOffset(this.val$coordinatorLayout, this.val$child, valueAnimatorCompat.getAnimatedIntValue());
            }
        }

        /* compiled from: Twttr */
        public abstract class DragCallback {
            public abstract boolean canDrag(@NonNull AppBarLayout appBarLayout);
        }

        /* compiled from: Twttr */
        public class SavedState extends BaseSavedState {
            public static final Creator<SavedState> CREATOR;
            boolean firstVisibileChildAtMinimumHeight;
            float firstVisibileChildPercentageShown;
            int firstVisibleChildIndex;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel);
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibileChildPercentageShown = parcel.readFloat();
                this.firstVisibileChildAtMinimumHeight = parcel.readByte() != null;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibileChildPercentageShown);
                parcel.writeByte((byte) (this.firstVisibileChildAtMinimumHeight ? AppBarLayout.PENDING_ACTION_EXPANDED : 0));
            }

            static {
                CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>() {
                    public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                        return new SavedState(parcel, classLoader);
                    }

                    public SavedState[] newArray(int i) {
                        return new SavedState[i];
                    }
                });
            }
        }

        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        public Behavior() {
            this.mOffsetToChildIndexOnLayout = INVALID_POSITION;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOffsetToChildIndexOnLayout = INVALID_POSITION;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i) {
            boolean z = (i & AppBarLayout.PENDING_ACTION_COLLAPSED) != 0 && appBarLayout.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= appBarLayout.getHeight();
            if (z && this.mAnimator != null) {
                this.mAnimator.cancel();
            }
            this.mLastNestedScrollingChildRef = null;
            return z;
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr) {
            if (i2 != 0 && !this.mSkipNestedPreScroll) {
                int i3;
                int access$200;
                if (i2 < 0) {
                    i3 = -appBarLayout.getTotalScrollRange();
                    access$200 = i3 + appBarLayout.getDownNestedPreScrollRange();
                } else {
                    i3 = -appBarLayout.getUpNestedPreScrollRange();
                    access$200 = 0;
                }
                iArr[AppBarLayout.PENDING_ACTION_EXPANDED] = scroll(coordinatorLayout, appBarLayout, i2, i3, access$200);
            }
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4) {
            if (i4 < 0) {
                scroll(coordinatorLayout, appBarLayout, i4, -appBarLayout.getDownNestedScrollRange(), 0);
                this.mSkipNestedPreScroll = true;
                return;
            }
            this.mSkipNestedPreScroll = false;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
            if (!this.mWasNestedFlung) {
                snapToChildIfNeeded(coordinatorLayout, appBarLayout);
            }
            this.mSkipNestedPreScroll = false;
            this.mWasNestedFlung = false;
            this.mLastNestedScrollingChildRef = new WeakReference(view);
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f, float f2, boolean z) {
            boolean z2 = false;
            if (!z) {
                z2 = fling(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange(), 0, -f2);
            } else if (f2 < 0.0f) {
                r1 = (-appBarLayout.getTotalScrollRange()) + appBarLayout.getDownNestedPreScrollRange();
                if (getTopBottomOffsetForScrollingSibling() < r1) {
                    animateOffsetTo(coordinatorLayout, appBarLayout, r1);
                    z2 = true;
                }
            } else {
                r1 = -appBarLayout.getUpNestedPreScrollRange();
                if (getTopBottomOffsetForScrollingSibling() > r1) {
                    animateOffsetTo(coordinatorLayout, appBarLayout, r1);
                    z2 = true;
                }
            }
            this.mWasNestedFlung = z2;
            return z2;
        }

        public void setDragCallback(@Nullable DragCallback dragCallback) {
            this.mOnDragCallback = dragCallback;
        }

        private void animateOffsetTo(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling != i) {
                if (this.mAnimator == null) {
                    this.mAnimator = ViewUtils.createAnimator();
                    this.mAnimator.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                    this.mAnimator.setUpdateListener(new AnonymousClass1(coordinatorLayout, appBarLayout));
                } else {
                    this.mAnimator.cancel();
                }
                this.mAnimator.setDuration(Math.round(((((float) Math.abs(topBottomOffsetForScrollingSibling - i)) / coordinatorLayout.getResources().getDisplayMetrics().density) * 1000.0f) / 300.0f));
                this.mAnimator.setIntValues(topBottomOffsetForScrollingSibling, i);
                this.mAnimator.start();
            } else if (this.mAnimator != null && this.mAnimator.isRunning()) {
                this.mAnimator.cancel();
            }
        }

        private View getChildOnOffset(AppBarLayout appBarLayout, int i) {
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2 += AppBarLayout.PENDING_ACTION_EXPANDED) {
                View childAt = appBarLayout.getChildAt(i2);
                if (childAt.getTop() <= (-i) && childAt.getBottom() >= (-i)) {
                    return childAt;
                }
            }
            return null;
        }

        private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            View childOnOffset = getChildOnOffset(appBarLayout, topBottomOffsetForScrollingSibling);
            if (childOnOffset != null) {
                LayoutParams layoutParams = (LayoutParams) childOnOffset.getLayoutParams();
                if ((layoutParams.getScrollFlags() & 17) == 17) {
                    int minimumHeight;
                    int i = -childOnOffset.getTop();
                    int i2 = -childOnOffset.getBottom();
                    if ((layoutParams.getScrollFlags() & AppBarLayout.PENDING_ACTION_COLLAPSED) == AppBarLayout.PENDING_ACTION_COLLAPSED) {
                        minimumHeight = ViewCompat.getMinimumHeight(childOnOffset) + i2;
                    } else {
                        minimumHeight = i2;
                    }
                    if (topBottomOffsetForScrollingSibling >= (minimumHeight + i) / AppBarLayout.PENDING_ACTION_COLLAPSED) {
                        minimumHeight = i;
                    }
                    animateOffsetTo(coordinatorLayout, appBarLayout, MathUtils.constrain(minimumHeight, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, appBarLayout, i);
            int access$500 = appBarLayout.getPendingAction();
            int i2;
            if (access$500 != 0) {
                i2 = (access$500 & AppBarLayout.PENDING_ACTION_ANIMATE_ENABLED) != 0 ? AppBarLayout.PENDING_ACTION_EXPANDED : 0;
                if ((access$500 & AppBarLayout.PENDING_ACTION_COLLAPSED) != 0) {
                    access$500 = -appBarLayout.getUpNestedPreScrollRange();
                    if (i2 != 0) {
                        animateOffsetTo(coordinatorLayout, appBarLayout, access$500);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, appBarLayout, access$500);
                    }
                } else if ((access$500 & AppBarLayout.PENDING_ACTION_EXPANDED) != 0) {
                    if (i2 != 0) {
                        animateOffsetTo(coordinatorLayout, appBarLayout, 0);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, appBarLayout, 0);
                    }
                }
            } else if (this.mOffsetToChildIndexOnLayout >= 0) {
                View childAt = appBarLayout.getChildAt(this.mOffsetToChildIndexOnLayout);
                access$500 = -childAt.getBottom();
                if (this.mOffsetToChildIndexOnLayoutIsMinHeight) {
                    i2 = ViewCompat.getMinimumHeight(childAt) + access$500;
                } else {
                    i2 = Math.round(((float) childAt.getHeight()) * this.mOffsetToChildIndexOnLayoutPerc) + access$500;
                }
                setTopAndBottomOffset(i2);
            }
            appBarLayout.resetPendingAction();
            this.mOffsetToChildIndexOnLayout = INVALID_POSITION;
            setTopAndBottomOffset(MathUtils.constrain(getTopAndBottomOffset(), -appBarLayout.getTotalScrollRange(), 0));
            dispatchOffsetUpdates(appBarLayout);
            return onLayoutChild;
        }

        boolean canDragView(AppBarLayout appBarLayout) {
            if (this.mOnDragCallback != null) {
                return this.mOnDragCallback.canDrag(appBarLayout);
            }
            if (this.mLastNestedScrollingChildRef == null) {
                return true;
            }
            View view = (View) this.mLastNestedScrollingChildRef.get();
            return (view == null || !view.isShown() || ViewCompat.canScrollVertically(view, INVALID_POSITION)) ? false : true;
        }

        void onFlingFinished(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            snapToChildIfNeeded(coordinatorLayout, appBarLayout);
        }

        int getMaxDragOffset(AppBarLayout appBarLayout) {
            return -appBarLayout.getDownNestedScrollRange();
        }

        int getScrollRangeForDragFling(AppBarLayout appBarLayout) {
            return appBarLayout.getTotalScrollRange();
        }

        int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (i2 == 0 || topBottomOffsetForScrollingSibling < i2 || topBottomOffsetForScrollingSibling > i3) {
                this.mOffsetDelta = 0;
                return 0;
            }
            int constrain = MathUtils.constrain(i, i2, i3);
            if (topBottomOffsetForScrollingSibling == constrain) {
                return 0;
            }
            int interpolateOffset = appBarLayout.hasChildWithInterpolator() ? interpolateOffset(appBarLayout, constrain) : constrain;
            boolean topAndBottomOffset = setTopAndBottomOffset(interpolateOffset);
            topBottomOffsetForScrollingSibling -= constrain;
            this.mOffsetDelta = constrain - interpolateOffset;
            if (!topAndBottomOffset && appBarLayout.hasChildWithInterpolator()) {
                coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
            }
            dispatchOffsetUpdates(appBarLayout);
            return topBottomOffsetForScrollingSibling;
        }

        private void dispatchOffsetUpdates(AppBarLayout appBarLayout) {
            List access$800 = appBarLayout.mListeners;
            int size = access$800.size();
            for (int i = 0; i < size; i += AppBarLayout.PENDING_ACTION_EXPANDED) {
                OnOffsetChangedListener onOffsetChangedListener = (OnOffsetChangedListener) access$800.get(i);
                if (onOffsetChangedListener != null) {
                    onOffsetChangedListener.onOffsetChanged(appBarLayout, getTopAndBottomOffset());
                }
            }
        }

        private int interpolateOffset(AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = appBarLayout.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i2 += AppBarLayout.PENDING_ACTION_EXPANDED;
                } else if (scrollInterpolator == null) {
                    return i;
                } else {
                    int height;
                    i2 = layoutParams.getScrollFlags();
                    if ((i2 & AppBarLayout.PENDING_ACTION_EXPANDED) != 0) {
                        height = (layoutParams.bottomMargin + (childAt.getHeight() + layoutParams.topMargin)) + 0;
                        if ((i2 & AppBarLayout.PENDING_ACTION_COLLAPSED) != 0) {
                            height -= ViewCompat.getMinimumHeight(childAt);
                        }
                    } else {
                        height = 0;
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        height -= appBarLayout.getTopInset();
                    }
                    if (height <= 0) {
                        return i;
                    }
                    return Integer.signum(i) * (Math.round(scrollInterpolator.getInterpolation(((float) (abs - childAt.getTop())) / ((float) height)) * ((float) height)) + childAt.getTop());
                }
            }
            return i;
        }

        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.mOffsetDelta;
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            boolean z = false;
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, appBarLayout);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = appBarLayout.getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset > 0 || bottom < 0) {
                    i += AppBarLayout.PENDING_ACTION_EXPANDED;
                } else {
                    SavedState savedState = new SavedState(onSaveInstanceState);
                    savedState.firstVisibleChildIndex = i;
                    if (bottom == ViewCompat.getMinimumHeight(childAt)) {
                        z = true;
                    }
                    savedState.firstVisibileChildAtMinimumHeight = z;
                    savedState.firstVisibileChildPercentageShown = ((float) bottom) / ((float) childAt.getHeight());
                    return savedState;
                }
            }
            return onSaveInstanceState;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.onRestoreInstanceState(coordinatorLayout, appBarLayout, savedState.getSuperState());
                this.mOffsetToChildIndexOnLayout = savedState.firstVisibleChildIndex;
                this.mOffsetToChildIndexOnLayoutPerc = savedState.firstVisibileChildPercentageShown;
                this.mOffsetToChildIndexOnLayoutIsMinHeight = savedState.firstVisibileChildAtMinimumHeight;
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
            this.mOffsetToChildIndexOnLayout = INVALID_POSITION;
        }
    }

    /* compiled from: Twttr */
    public class LayoutParams extends android.widget.LinearLayout.LayoutParams {
        static final int FLAG_QUICK_RETURN = 5;
        static final int FLAG_SNAP = 17;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        int mScrollFlags;
        Interpolator mScrollInterpolator;

        @Retention(RetentionPolicy.SOURCE)
        /* compiled from: Twttr */
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mScrollFlags = SCROLL_FLAG_SCROLL;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_LayoutParams);
            this.mScrollFlags = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_LayoutParams_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_LayoutParams_layout_scrollInterpolator)) {
                this.mScrollInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R.styleable.AppBarLayout_LayoutParams_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mScrollFlags = SCROLL_FLAG_SCROLL;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
            this.mScrollFlags = SCROLL_FLAG_SCROLL;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mScrollFlags = SCROLL_FLAG_SCROLL;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mScrollFlags = SCROLL_FLAG_SCROLL;
        }

        public LayoutParams(android.widget.LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.mScrollFlags = SCROLL_FLAG_SCROLL;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.mScrollFlags = SCROLL_FLAG_SCROLL;
            this.mScrollFlags = layoutParams.mScrollFlags;
            this.mScrollInterpolator = layoutParams.mScrollInterpolator;
        }

        public void setScrollFlags(int i) {
            this.mScrollFlags = i;
        }

        public int getScrollFlags() {
            return this.mScrollFlags;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.mScrollInterpolator = interpolator;
        }

        public Interpolator getScrollInterpolator() {
            return this.mScrollInterpolator;
        }
    }

    /* compiled from: Twttr */
    public interface OnOffsetChangedListener {
        void onOffsetChanged(AppBarLayout appBarLayout, int i);
    }

    /* compiled from: Twttr */
    public class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, view, i, i2, i3, i4);
        }

        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Params);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Params_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            offsetChildAsNeeded(coordinatorLayout, view, view2);
            return false;
        }

        private void offsetChildAsNeeded(CoordinatorLayout coordinatorLayout, View view, View view2) {
            android.support.design.widget.CoordinatorLayout.Behavior behavior = ((android.support.design.widget.CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof Behavior) {
                Behavior behavior2 = (Behavior) behavior;
                behavior2.getTopBottomOffsetForScrollingSibling();
                view.offsetTopAndBottom(((behavior2.mOffsetDelta + (view2.getBottom() - view.getTop())) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        float getOverlapRatioForOffset(View view) {
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int access$200 = appBarLayout.getDownNestedPreScrollRange();
            int appBarLayoutOffset = getAppBarLayoutOffset(appBarLayout);
            if (access$200 != 0 && totalScrollRange + appBarLayoutOffset <= access$200) {
                return 0.0f;
            }
            totalScrollRange -= access$200;
            if (totalScrollRange != 0) {
                return 1.0f + (((float) appBarLayoutOffset) / ((float) totalScrollRange));
            }
            return 0.0f;
        }

        private static int getAppBarLayoutOffset(AppBarLayout appBarLayout) {
            android.support.design.widget.CoordinatorLayout.Behavior behavior = ((android.support.design.widget.CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof Behavior) {
                return ((Behavior) behavior).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        View findFirstDependency(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i += AppBarLayout.PENDING_ACTION_EXPANDED) {
                View view = (View) list.get(i);
                if (view instanceof AppBarLayout) {
                    return view;
                }
            }
            return null;
        }

        int getScrollRange(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.getScrollRange(view);
        }
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTotalScrollRange = INVALID_SCROLL_RANGE;
        this.mDownPreScrollRange = INVALID_SCROLL_RANGE;
        this.mDownScrollRange = INVALID_SCROLL_RANGE;
        this.mPendingAction = 0;
        setOrientation(PENDING_ACTION_EXPANDED);
        ThemeUtils.checkAppCompatTheme(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout);
        this.mTargetElevation = (float) obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppBarLayout_elevation, 0);
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(R.styleable.AppBarLayout_android_background));
        if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_expanded)) {
            setExpanded(obtainStyledAttributes.getBoolean(R.styleable.AppBarLayout_expanded, false));
        }
        obtainStyledAttributes.recycle();
        ViewUtils.setBoundsViewOutlineProvider(this);
        this.mListeners = new ArrayList();
        ViewCompat.setElevation(this, this.mTargetElevation);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() {
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return AppBarLayout.this.onWindowInsetChanged(windowInsetsCompat);
            }
        });
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        if (onOffsetChangedListener != null && !this.mListeners.contains(onOffsetChangedListener)) {
            this.mListeners.add(onOffsetChangedListener);
        }
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        if (onOffsetChangedListener != null) {
            this.mListeners.remove(onOffsetChangedListener);
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        invalidateScrollRanges();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        invalidateScrollRanges();
        this.mHaveChildWithInterpolator = false;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5 += PENDING_ACTION_EXPANDED) {
            if (((LayoutParams) getChildAt(i5).getLayoutParams()).getScrollInterpolator() != null) {
                this.mHaveChildWithInterpolator = true;
                return;
            }
        }
    }

    private void invalidateScrollRanges() {
        this.mTotalScrollRange = INVALID_SCROLL_RANGE;
        this.mDownPreScrollRange = INVALID_SCROLL_RANGE;
        this.mDownScrollRange = INVALID_SCROLL_RANGE;
    }

    public void setOrientation(int i) {
        if (i != PENDING_ACTION_EXPANDED) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setExpanded(boolean z) {
        setExpanded(z, ViewCompat.isLaidOut(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        this.mPendingAction = (z2 ? PENDING_ACTION_ANIMATE_ENABLED : 0) | (z ? PENDING_ACTION_EXPANDED : PENDING_ACTION_COLLAPSED);
        requestLayout();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams((int) INVALID_SCROLL_RANGE, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof android.widget.LinearLayout.LayoutParams) {
            return new LayoutParams((android.widget.LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof MarginLayoutParams) {
            return new LayoutParams((MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    private boolean hasChildWithInterpolator() {
        return this.mHaveChildWithInterpolator;
    }

    public final int getTotalScrollRange() {
        if (this.mTotalScrollRange != INVALID_SCROLL_RANGE) {
            return this.mTotalScrollRange;
        }
        int minimumHeight;
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2 += PENDING_ACTION_EXPANDED) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = layoutParams.mScrollFlags;
            if ((i3 & PENDING_ACTION_EXPANDED) == 0) {
                break;
            }
            i += layoutParams.bottomMargin + (measuredHeight + layoutParams.topMargin);
            if ((i3 & PENDING_ACTION_COLLAPSED) != 0) {
                minimumHeight = i - ViewCompat.getMinimumHeight(childAt);
                break;
            }
        }
        minimumHeight = i;
        minimumHeight = Math.max(0, minimumHeight - getTopInset());
        this.mTotalScrollRange = minimumHeight;
        return minimumHeight;
    }

    private boolean hasScrollableChildren() {
        return getTotalScrollRange() != 0;
    }

    private int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    private int getDownNestedPreScrollRange() {
        if (this.mDownPreScrollRange != INVALID_SCROLL_RANGE) {
            return this.mDownPreScrollRange;
        }
        int i;
        int childCount = getChildCount() + INVALID_SCROLL_RANGE;
        int i2 = 0;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = layoutParams.mScrollFlags;
            if ((i3 & 5) == 5) {
                i = (layoutParams.bottomMargin + layoutParams.topMargin) + i2;
                if ((i3 & 8) != 0) {
                    i += ViewCompat.getMinimumHeight(childAt);
                } else if ((i3 & PENDING_ACTION_COLLAPSED) != 0) {
                    i += measuredHeight - ViewCompat.getMinimumHeight(childAt);
                } else {
                    i += measuredHeight;
                }
            } else if (i2 > 0) {
                break;
            } else {
                i = i2;
            }
            childCount += INVALID_SCROLL_RANGE;
            i2 = i;
        }
        i = Math.max(0, i2 - getTopInset());
        this.mDownPreScrollRange = i;
        return i;
    }

    private int getDownNestedScrollRange() {
        if (this.mDownScrollRange != INVALID_SCROLL_RANGE) {
            return this.mDownScrollRange;
        }
        int i;
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3 += PENDING_ACTION_EXPANDED) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + (layoutParams.topMargin + layoutParams.bottomMargin);
            i = layoutParams.mScrollFlags;
            if ((i & PENDING_ACTION_EXPANDED) == 0) {
                break;
            }
            i2 += measuredHeight;
            if ((i & PENDING_ACTION_COLLAPSED) != 0) {
                i = i2 - (ViewCompat.getMinimumHeight(childAt) + getTopInset());
                break;
            }
        }
        i = i2;
        i = Math.max(0, i);
        this.mDownScrollRange = i;
        return i;
    }

    final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight != 0) {
            return topInset + (minimumHeight * PENDING_ACTION_COLLAPSED);
        }
        minimumHeight = getChildCount();
        return minimumHeight >= PENDING_ACTION_EXPANDED ? topInset + (ViewCompat.getMinimumHeight(getChildAt(minimumHeight + INVALID_SCROLL_RANGE)) * PENDING_ACTION_COLLAPSED) : 0;
    }

    public void setTargetElevation(float f) {
        this.mTargetElevation = f;
    }

    public float getTargetElevation() {
        return this.mTargetElevation;
    }

    private int getPendingAction() {
        return this.mPendingAction;
    }

    private void resetPendingAction() {
        this.mPendingAction = 0;
    }

    private int getTopInset() {
        return this.mLastInsets != null ? this.mLastInsets.getSystemWindowInsetTop() : 0;
    }

    private WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = null;
        if (ViewCompat.getFitsSystemWindows(this)) {
            windowInsetsCompat2 = windowInsetsCompat;
        }
        if (windowInsetsCompat2 != this.mLastInsets) {
            this.mLastInsets = windowInsetsCompat2;
            invalidateScrollRanges();
        }
        return windowInsetsCompat;
    }
}
