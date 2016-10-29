package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.LayoutManager.Properties;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.twitter.android.mx;
import java.util.BitSet;
import tv.periscope.chatman.api.ControlMessage;

/* compiled from: Twttr */
public class StaggeredGridLayoutManager extends LayoutManager {
    private static final boolean DEBUG = false;
    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    private static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    public static final String TAG = "StaggeredGridLayoutManager";
    public static final int VERTICAL = 1;
    private final AnchorInfo mAnchorInfo;
    private final Runnable mCheckForGapsRunnable;
    private int mFullSizeSpec;
    private int mGapStrategy;
    private boolean mLaidOutInvalidFullSpan;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;
    private LayoutState mLayoutState;
    LazySpanLookup mLazySpanLookup;
    private int mOrientation;
    private SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    OrientationHelper mPrimaryOrientation;
    private BitSet mRemainingSpans;
    private boolean mReverseLayout;
    OrientationHelper mSecondaryOrientation;
    boolean mShouldReverseLayout;
    private int mSizePerSpan;
    private boolean mSmoothScrollbarEnabled;
    private int mSpanCount;
    private Span[] mSpans;
    private final Rect mTmpRect;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        boolean z = true;
        this.mSpanCount = -1;
        this.mReverseLayout = DEBUG;
        this.mShouldReverseLayout = DEBUG;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = INVALID_OFFSET;
        this.mLazySpanLookup = new LazySpanLookup();
        this.mGapStrategy = GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS;
        this.mTmpRect = new Rect();
        this.mAnchorInfo = new AnchorInfo(this, null);
        this.mLaidOutInvalidFullSpan = DEBUG;
        this.mSmoothScrollbarEnabled = true;
        this.mCheckForGapsRunnable = new 1(this);
        Properties properties = LayoutManager.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        if (this.mGapStrategy == 0) {
            z = DEBUG;
        }
        setAutoMeasureEnabled(z);
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        boolean z = true;
        this.mSpanCount = -1;
        this.mReverseLayout = DEBUG;
        this.mShouldReverseLayout = DEBUG;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = INVALID_OFFSET;
        this.mLazySpanLookup = new LazySpanLookup();
        this.mGapStrategy = GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS;
        this.mTmpRect = new Rect();
        this.mAnchorInfo = new AnchorInfo(this, null);
        this.mLaidOutInvalidFullSpan = DEBUG;
        this.mSmoothScrollbarEnabled = true;
        this.mCheckForGapsRunnable = new 1(this);
        this.mOrientation = i2;
        setSpanCount(i);
        if (this.mGapStrategy == 0) {
            z = DEBUG;
        }
        setAutoMeasureEnabled(z);
    }

    private boolean checkForGaps() {
        if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow()) {
            return DEBUG;
        }
        int lastChildPosition;
        int firstChildPosition;
        if (this.mShouldReverseLayout) {
            lastChildPosition = getLastChildPosition();
            firstChildPosition = getFirstChildPosition();
        } else {
            lastChildPosition = getFirstChildPosition();
            firstChildPosition = getLastChildPosition();
        }
        if (lastChildPosition == 0 && hasGapsToFix() != null) {
            this.mLazySpanLookup.clear();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        } else if (!this.mLaidOutInvalidFullSpan) {
            return DEBUG;
        } else {
            int i = this.mShouldReverseLayout ? -1 : VERTICAL;
            FullSpanItem firstFullSpanItemInRange = this.mLazySpanLookup.getFirstFullSpanItemInRange(lastChildPosition, firstChildPosition + VERTICAL, i, true);
            if (firstFullSpanItemInRange == null) {
                this.mLaidOutInvalidFullSpan = DEBUG;
                this.mLazySpanLookup.forceInvalidateAfter(firstChildPosition + VERTICAL);
                return DEBUG;
            }
            FullSpanItem firstFullSpanItemInRange2 = this.mLazySpanLookup.getFirstFullSpanItemInRange(lastChildPosition, firstFullSpanItemInRange.mPosition, i * -1, true);
            if (firstFullSpanItemInRange2 == null) {
                this.mLazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange.mPosition);
            } else {
                this.mLazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange2.mPosition + VERTICAL);
            }
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
    }

    public void onScrollStateChanged(int i) {
        if (i == 0) {
            checkForGaps();
        }
    }

    public void onDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
        removeCallbacks(this.mCheckForGapsRunnable);
        for (int i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
            this.mSpans[i].clear();
        }
    }

    View hasGapsToFix() {
        int i;
        int i2;
        int childCount = getChildCount() - 1;
        BitSet bitSet = new BitSet(this.mSpanCount);
        bitSet.set(HORIZONTAL, this.mSpanCount, true);
        boolean z = (this.mOrientation == VERTICAL && isLayoutRTL()) ? true : true;
        if (this.mShouldReverseLayout) {
            i = -1;
        } else {
            i = childCount + VERTICAL;
            childCount = HORIZONTAL;
        }
        if (childCount < i) {
            i2 = VERTICAL;
        } else {
            i2 = -1;
        }
        int i3 = childCount;
        while (i3 != i) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (bitSet.get(layoutParams.mSpan.mIndex)) {
                if (checkSpanForGap(layoutParams.mSpan)) {
                    return childAt;
                }
                bitSet.clear(layoutParams.mSpan.mIndex);
            }
            if (!(layoutParams.mFullSpan || i3 + i2 == i)) {
                boolean z2;
                View childAt2 = getChildAt(i3 + i2);
                int decoratedEnd;
                if (this.mShouldReverseLayout) {
                    childCount = this.mPrimaryOrientation.getDecoratedEnd(childAt);
                    decoratedEnd = this.mPrimaryOrientation.getDecoratedEnd(childAt2);
                    if (childCount < decoratedEnd) {
                        return childAt;
                    }
                    if (childCount == decoratedEnd) {
                        z2 = true;
                    }
                    z2 = HORIZONTAL;
                } else {
                    childCount = this.mPrimaryOrientation.getDecoratedStart(childAt);
                    decoratedEnd = this.mPrimaryOrientation.getDecoratedStart(childAt2);
                    if (childCount > decoratedEnd) {
                        return childAt;
                    }
                    if (childCount == decoratedEnd) {
                        z2 = true;
                    }
                    z2 = HORIZONTAL;
                }
                if (z2) {
                    if (layoutParams.mSpan.mIndex - ((LayoutParams) childAt2.getLayoutParams()).mSpan.mIndex < 0) {
                        z2 = true;
                    } else {
                        z2 = HORIZONTAL;
                    }
                    if (z2 != (z >= false ? true : HORIZONTAL)) {
                        return childAt;
                    }
                } else {
                    continue;
                }
            }
            i3 += i2;
        }
        return null;
    }

    private boolean checkSpanForGap(Span span) {
        boolean z = true;
        if (this.mShouldReverseLayout) {
            if (span.getEndLine() < this.mPrimaryOrientation.getEndAfterPadding()) {
                return !span.getLayoutParams((View) Span.access$200(span).get(Span.access$200(span).size() + -1)).mFullSpan ? true : DEBUG;
            }
        } else if (span.getStartLine() > this.mPrimaryOrientation.getStartAfterPadding()) {
            if (span.getLayoutParams((View) Span.access$200(span).get(HORIZONTAL)).mFullSpan) {
                z = HORIZONTAL;
            }
            return z;
        }
        return DEBUG;
    }

    public void setSpanCount(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.mSpanCount) {
            invalidateSpanAssignments();
            this.mSpanCount = i;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new Span[this.mSpanCount];
            for (int i2 = HORIZONTAL; i2 < this.mSpanCount; i2 += VERTICAL) {
                this.mSpans[i2] = new Span(this, i2, null);
            }
            requestLayout();
        }
    }

    public void setOrientation(int i) {
        if (i == 0 || i == VERTICAL) {
            assertNotInLayoutOrScroll(null);
            if (i != this.mOrientation) {
                this.mOrientation = i;
                if (!(this.mPrimaryOrientation == null || this.mSecondaryOrientation == null)) {
                    OrientationHelper orientationHelper = this.mPrimaryOrientation;
                    this.mPrimaryOrientation = this.mSecondaryOrientation;
                    this.mSecondaryOrientation = orientationHelper;
                }
                requestLayout();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (!(this.mPendingSavedState == null || this.mPendingSavedState.mReverseLayout == z)) {
            this.mPendingSavedState.mReverseLayout = z;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public int getGapStrategy() {
        return this.mGapStrategy;
    }

    public void setGapStrategy(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.mGapStrategy) {
            if (i == 0 || i == GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS) {
                this.mGapStrategy = i;
                setAutoMeasureEnabled(this.mGapStrategy != 0 ? true : DEBUG);
                requestLayout();
                return;
            }
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void invalidateSpanAssignments() {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    private void ensureOrientationHelper() {
        if (this.mPrimaryOrientation == null) {
            this.mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, this.mOrientation);
            this.mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - this.mOrientation);
            this.mLayoutState = new LayoutState();
        }
    }

    private void resolveShouldLayoutReverse() {
        boolean z = true;
        if (this.mOrientation == VERTICAL || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
            return;
        }
        if (this.mReverseLayout) {
            z = DEBUG;
        }
        this.mShouldReverseLayout = z;
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == VERTICAL ? true : DEBUG;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == VERTICAL) {
            paddingTop = LayoutManager.chooseSize(i2, paddingTop + rect.height(), getMinimumHeight());
            paddingRight = LayoutManager.chooseSize(i, paddingRight + (this.mSizePerSpan * this.mSpanCount), getMinimumWidth());
        } else {
            paddingRight = LayoutManager.chooseSize(i, paddingRight + rect.width(), getMinimumWidth());
            paddingTop = LayoutManager.chooseSize(i2, paddingTop + (this.mSizePerSpan * this.mSpanCount), getMinimumHeight());
        }
        setMeasuredDimension(paddingRight, paddingTop);
    }

    public void onLayoutChildren(Recycler recycler, State state) {
        onLayoutChildren(recycler, state, true);
    }

    private void onLayoutChildren(Recycler recycler, State state, boolean z) {
        ensureOrientationHelper();
        AnchorInfo anchorInfo = this.mAnchorInfo;
        anchorInfo.reset();
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        boolean z2;
        if (this.mPendingSavedState != null) {
            applyPendingSavedState(anchorInfo);
        } else {
            resolveShouldLayoutReverse();
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        updateAnchorInfoForLayout(state, anchorInfo);
        if (this.mPendingSavedState == null && !(anchorInfo.mLayoutFromEnd == this.mLastLayoutFromEnd && isLayoutRTL() == this.mLastLayoutRTL)) {
            this.mLazySpanLookup.clear();
            anchorInfo.mInvalidateOffsets = true;
        }
        if (getChildCount() > 0 && (this.mPendingSavedState == null || this.mPendingSavedState.mSpanOffsetsSize < VERTICAL)) {
            int i;
            if (anchorInfo.mInvalidateOffsets) {
                for (i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
                    this.mSpans[i].clear();
                    if (anchorInfo.mOffset != INVALID_OFFSET) {
                        this.mSpans[i].setLine(anchorInfo.mOffset);
                    }
                }
            } else {
                for (i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
                    this.mSpans[i].cacheReferenceLineAndClear(this.mShouldReverseLayout, anchorInfo.mOffset);
                }
            }
        }
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mRecycle = DEBUG;
        this.mLaidOutInvalidFullSpan = DEBUG;
        updateMeasureSpecs(this.mSecondaryOrientation.getTotalSpace());
        updateLayoutState(anchorInfo.mPosition, state);
        if (anchorInfo.mLayoutFromEnd) {
            setLayoutStateDirection(-1);
            fill(recycler, this.mLayoutState, state);
            setLayoutStateDirection(VERTICAL);
            this.mLayoutState.mCurrentPosition = anchorInfo.mPosition + this.mLayoutState.mItemDirection;
            fill(recycler, this.mLayoutState, state);
        } else {
            setLayoutStateDirection(VERTICAL);
            fill(recycler, this.mLayoutState, state);
            setLayoutStateDirection(-1);
            this.mLayoutState.mCurrentPosition = anchorInfo.mPosition + this.mLayoutState.mItemDirection;
            fill(recycler, this.mLayoutState, state);
        }
        repositionToWrapContentIfNecessary();
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout) {
                fixEndGap(recycler, state, true);
                fixStartGap(recycler, state, DEBUG);
            } else {
                fixStartGap(recycler, state, true);
                fixEndGap(recycler, state, DEBUG);
            }
        }
        if (!z || state.isPreLayout()) {
            z2 = DEBUG;
        } else {
            if (this.mGapStrategy == 0 || getChildCount() <= 0 || (!this.mLaidOutInvalidFullSpan && hasGapsToFix() == null)) {
                z2 = DEBUG;
            } else {
                z2 = true;
            }
            if (z2) {
                removeCallbacks(this.mCheckForGapsRunnable);
                if (checkForGaps()) {
                    z2 = true;
                    this.mPendingScrollPosition = -1;
                    this.mPendingScrollPositionOffset = INVALID_OFFSET;
                }
            }
            z2 = DEBUG;
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = INVALID_OFFSET;
        }
        this.mLastLayoutFromEnd = anchorInfo.mLayoutFromEnd;
        this.mLastLayoutRTL = isLayoutRTL();
        this.mPendingSavedState = null;
        if (z2) {
            onLayoutChildren(recycler, state, DEBUG);
        }
    }

    private void repositionToWrapContentIfNecessary() {
        if (this.mSecondaryOrientation.getMode() != 1073741824) {
            float f = 0.0f;
            int childCount = getChildCount();
            int i = HORIZONTAL;
            while (i < childCount) {
                float f2;
                View childAt = getChildAt(i);
                float decoratedMeasurement = (float) this.mSecondaryOrientation.getDecoratedMeasurement(childAt);
                if (decoratedMeasurement < f) {
                    f2 = f;
                } else {
                    if (((LayoutParams) childAt.getLayoutParams()).isFullSpan()) {
                        f2 = (1.0f * decoratedMeasurement) / ((float) this.mSpanCount);
                    } else {
                        f2 = decoratedMeasurement;
                    }
                    f2 = Math.max(f, f2);
                }
                i += VERTICAL;
                f = f2;
            }
            i = this.mSizePerSpan;
            int round = Math.round(((float) this.mSpanCount) * f);
            if (this.mSecondaryOrientation.getMode() == INVALID_OFFSET) {
                round = Math.min(round, this.mSecondaryOrientation.getTotalSpace());
            }
            updateMeasureSpecs(round);
            if (this.mSizePerSpan != i) {
                for (int i2 = HORIZONTAL; i2 < childCount; i2 += VERTICAL) {
                    View childAt2 = getChildAt(i2);
                    LayoutParams layoutParams = (LayoutParams) childAt2.getLayoutParams();
                    if (!layoutParams.mFullSpan) {
                        if (isLayoutRTL() && this.mOrientation == VERTICAL) {
                            childAt2.offsetLeftAndRight(((-((this.mSpanCount - 1) - layoutParams.mSpan.mIndex)) * this.mSizePerSpan) - ((-((this.mSpanCount - 1) - layoutParams.mSpan.mIndex)) * i));
                        } else {
                            int i3 = layoutParams.mSpan.mIndex * this.mSizePerSpan;
                            round = layoutParams.mSpan.mIndex * i;
                            if (this.mOrientation == VERTICAL) {
                                childAt2.offsetLeftAndRight(i3 - round);
                            } else {
                                childAt2.offsetTopAndBottom(i3 - round);
                            }
                        }
                    }
                }
            }
        }
    }

    private void applyPendingSavedState(AnchorInfo anchorInfo) {
        if (this.mPendingSavedState.mSpanOffsetsSize > 0) {
            if (this.mPendingSavedState.mSpanOffsetsSize == this.mSpanCount) {
                for (int i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
                    this.mSpans[i].clear();
                    int i2 = this.mPendingSavedState.mSpanOffsets[i];
                    if (i2 != INVALID_OFFSET) {
                        if (this.mPendingSavedState.mAnchorLayoutFromEnd) {
                            i2 += this.mPrimaryOrientation.getEndAfterPadding();
                        } else {
                            i2 += this.mPrimaryOrientation.getStartAfterPadding();
                        }
                    }
                    this.mSpans[i].setLine(i2);
                }
            } else {
                this.mPendingSavedState.invalidateSpanInfo();
                this.mPendingSavedState.mAnchorPosition = this.mPendingSavedState.mVisibleAnchorPosition;
            }
        }
        this.mLastLayoutRTL = this.mPendingSavedState.mLastLayoutRTL;
        setReverseLayout(this.mPendingSavedState.mReverseLayout);
        resolveShouldLayoutReverse();
        if (this.mPendingSavedState.mAnchorPosition != -1) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
            anchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
        } else {
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        if (this.mPendingSavedState.mSpanLookupSize > VERTICAL) {
            this.mLazySpanLookup.mData = this.mPendingSavedState.mSpanLookup;
            this.mLazySpanLookup.mFullSpanItems = this.mPendingSavedState.mFullSpanItems;
        }
    }

    void updateAnchorInfoForLayout(State state, AnchorInfo anchorInfo) {
        if (!updateAnchorFromPendingData(state, anchorInfo) && !updateAnchorFromChildren(state, anchorInfo)) {
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = HORIZONTAL;
        }
    }

    private boolean updateAnchorFromChildren(State state, AnchorInfo anchorInfo) {
        anchorInfo.mPosition = this.mLastLayoutFromEnd ? findLastReferenceChildPosition(state.getItemCount()) : findFirstReferenceChildPosition(state.getItemCount());
        anchorInfo.mOffset = INVALID_OFFSET;
        return true;
    }

    boolean updateAnchorFromPendingData(State state, AnchorInfo anchorInfo) {
        boolean z = DEBUG;
        if (state.isPreLayout() || this.mPendingScrollPosition == -1) {
            return DEBUG;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= state.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = INVALID_OFFSET;
            return DEBUG;
        } else if (this.mPendingSavedState == null || this.mPendingSavedState.mAnchorPosition == -1 || this.mPendingSavedState.mSpanOffsetsSize < VERTICAL) {
            View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (findViewByPosition != null) {
                anchorInfo.mPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
                if (this.mPendingScrollPositionOffset != INVALID_OFFSET) {
                    if (anchorInfo.mLayoutFromEnd) {
                        anchorInfo.mOffset = (this.mPrimaryOrientation.getEndAfterPadding() - this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedEnd(findViewByPosition);
                        return true;
                    }
                    anchorInfo.mOffset = (this.mPrimaryOrientation.getStartAfterPadding() + this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedStart(findViewByPosition);
                    return true;
                } else if (this.mPrimaryOrientation.getDecoratedMeasurement(findViewByPosition) > this.mPrimaryOrientation.getTotalSpace()) {
                    anchorInfo.mOffset = anchorInfo.mLayoutFromEnd ? this.mPrimaryOrientation.getEndAfterPadding() : this.mPrimaryOrientation.getStartAfterPadding();
                    return true;
                } else {
                    int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(findViewByPosition) - this.mPrimaryOrientation.getStartAfterPadding();
                    if (decoratedStart < 0) {
                        anchorInfo.mOffset = -decoratedStart;
                        return true;
                    }
                    decoratedStart = this.mPrimaryOrientation.getEndAfterPadding() - this.mPrimaryOrientation.getDecoratedEnd(findViewByPosition);
                    if (decoratedStart < 0) {
                        anchorInfo.mOffset = decoratedStart;
                        return true;
                    }
                    anchorInfo.mOffset = INVALID_OFFSET;
                    return true;
                }
            }
            anchorInfo.mPosition = this.mPendingScrollPosition;
            if (this.mPendingScrollPositionOffset == INVALID_OFFSET) {
                if (calculateScrollDirectionForPosition(anchorInfo.mPosition) == VERTICAL) {
                    z = true;
                }
                anchorInfo.mLayoutFromEnd = z;
                anchorInfo.assignCoordinateFromPadding();
            } else {
                anchorInfo.assignCoordinateFromPadding(this.mPendingScrollPositionOffset);
            }
            anchorInfo.mInvalidateOffsets = true;
            return true;
        } else {
            anchorInfo.mOffset = INVALID_OFFSET;
            anchorInfo.mPosition = this.mPendingScrollPosition;
            return true;
        }
    }

    void updateMeasureSpecs(int i) {
        this.mSizePerSpan = i / this.mSpanCount;
        this.mFullSizeSpec = MeasureSpec.makeMeasureSpec(i, this.mSecondaryOrientation.getMode());
    }

    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null ? true : DEBUG;
    }

    public int[] findFirstVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
            iArr[i] = this.mSpans[i].findFirstVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
            iArr[i] = this.mSpans[i].findFirstCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
            iArr[i] = this.mSpans[i].findLastVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
            iArr[i] = this.mSpans[i].findLastCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    public int computeHorizontalScrollOffset(State state) {
        return computeScrollOffset(state);
    }

    private int computeScrollOffset(State state) {
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return HORIZONTAL;
        }
        ensureOrientationHelper();
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        View findFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled ? true : DEBUG, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return ScrollbarHelper.computeScrollOffset(state, orientationHelper, findFirstVisibleItemClosestToStart, findFirstVisibleItemClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    public int computeVerticalScrollOffset(State state) {
        return computeScrollOffset(state);
    }

    public int computeHorizontalScrollExtent(State state) {
        return computeScrollExtent(state);
    }

    private int computeScrollExtent(State state) {
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return HORIZONTAL;
        }
        ensureOrientationHelper();
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        View findFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled ? true : DEBUG, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return ScrollbarHelper.computeScrollExtent(state, orientationHelper, findFirstVisibleItemClosestToStart, findFirstVisibleItemClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled);
    }

    public int computeVerticalScrollExtent(State state) {
        return computeScrollExtent(state);
    }

    public int computeHorizontalScrollRange(State state) {
        return computeScrollRange(state);
    }

    private int computeScrollRange(State state) {
        boolean z = DEBUG;
        if (getChildCount() == 0) {
            return HORIZONTAL;
        }
        ensureOrientationHelper();
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        View findFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled ? true : DEBUG, true);
        if (!this.mSmoothScrollbarEnabled) {
            z = true;
        }
        return ScrollbarHelper.computeScrollRange(state, orientationHelper, findFirstVisibleItemClosestToStart, findFirstVisibleItemClosestToEnd(z, true), this, this.mSmoothScrollbarEnabled);
    }

    public int computeVerticalScrollRange(State state) {
        return computeScrollRange(state);
    }

    private void measureChildWithDecorationsAndMargin(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.mFullSpan) {
            if (this.mOrientation == VERTICAL) {
                measureChildWithDecorationsAndMargin(view, this.mFullSizeSpec, LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), HORIZONTAL, layoutParams.height, true), z);
            } else {
                measureChildWithDecorationsAndMargin(view, LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), HORIZONTAL, layoutParams.width, true), this.mFullSizeSpec, z);
            }
        } else if (this.mOrientation == VERTICAL) {
            measureChildWithDecorationsAndMargin(view, LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), HORIZONTAL, layoutParams.width, DEBUG), LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), HORIZONTAL, layoutParams.height, true), z);
        } else {
            measureChildWithDecorationsAndMargin(view, LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), HORIZONTAL, layoutParams.width, true), LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), HORIZONTAL, layoutParams.height, DEBUG), z);
        }
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        calculateItemDecorationsForChild(view, this.mTmpRect);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int updateSpecWithExtra = updateSpecWithExtra(i, layoutParams.leftMargin + this.mTmpRect.left, layoutParams.rightMargin + this.mTmpRect.right);
        int updateSpecWithExtra2 = updateSpecWithExtra(i2, layoutParams.topMargin + this.mTmpRect.top, layoutParams.bottomMargin + this.mTmpRect.bottom);
        if (z ? shouldReMeasureChild(view, updateSpecWithExtra, updateSpecWithExtra2, layoutParams) : shouldMeasureChild(view, updateSpecWithExtra, updateSpecWithExtra2, layoutParams)) {
            view.measure(updateSpecWithExtra, updateSpecWithExtra2);
        }
    }

    private int updateSpecWithExtra(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = MeasureSpec.getMode(i);
        if (mode == INVALID_OFFSET || mode == 1073741824) {
            return MeasureSpec.makeMeasureSpec(Math.max(HORIZONTAL, (MeasureSpec.getSize(i) - i2) - i3), mode);
        }
        return i;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
        }
    }

    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.mReverseLayout;
        savedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        savedState.mLastLayoutRTL = this.mLastLayoutRTL;
        if (this.mLazySpanLookup == null || this.mLazySpanLookup.mData == null) {
            savedState.mSpanLookupSize = HORIZONTAL;
        } else {
            savedState.mSpanLookup = this.mLazySpanLookup.mData;
            savedState.mSpanLookupSize = savedState.mSpanLookup.length;
            savedState.mFullSpanItems = this.mLazySpanLookup.mFullSpanItems;
        }
        if (getChildCount() > 0) {
            ensureOrientationHelper();
            savedState.mAnchorPosition = this.mLastLayoutFromEnd ? getLastChildPosition() : getFirstChildPosition();
            savedState.mVisibleAnchorPosition = findFirstVisibleItemPositionInt();
            savedState.mSpanOffsetsSize = this.mSpanCount;
            savedState.mSpanOffsets = new int[this.mSpanCount];
            for (int i = HORIZONTAL; i < this.mSpanCount; i += VERTICAL) {
                int endLine;
                if (this.mLastLayoutFromEnd) {
                    endLine = this.mSpans[i].getEndLine(INVALID_OFFSET);
                    if (endLine != INVALID_OFFSET) {
                        endLine -= this.mPrimaryOrientation.getEndAfterPadding();
                    }
                } else {
                    endLine = this.mSpans[i].getStartLine(INVALID_OFFSET);
                    if (endLine != INVALID_OFFSET) {
                        endLine -= this.mPrimaryOrientation.getStartAfterPadding();
                    }
                }
                savedState.mSpanOffsets[i] = endLine;
            }
        } else {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = HORIZONTAL;
        }
        return savedState;
    }

    public void onInitializeAccessibilityNodeInfoForItem(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (this.mOrientation == 0) {
                accessibilityNodeInfoCompat.setCollectionItemInfo(CollectionItemInfoCompat.obtain(layoutParams2.getSpanIndex(), layoutParams2.mFullSpan ? this.mSpanCount : VERTICAL, -1, -1, layoutParams2.mFullSpan, DEBUG));
                return;
            } else {
                accessibilityNodeInfoCompat.setCollectionItemInfo(CollectionItemInfoCompat.obtain(-1, -1, layoutParams2.getSpanIndex(), layoutParams2.mFullSpan ? this.mSpanCount : VERTICAL, layoutParams2.mFullSpan, DEBUG));
                return;
            }
        }
        super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            AccessibilityRecordCompat asRecord = AccessibilityEventCompat.asRecord(accessibilityEvent);
            View findFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(DEBUG, true);
            View findFirstVisibleItemClosestToEnd = findFirstVisibleItemClosestToEnd(DEBUG, true);
            if (findFirstVisibleItemClosestToStart != null && findFirstVisibleItemClosestToEnd != null) {
                int position = getPosition(findFirstVisibleItemClosestToStart);
                int position2 = getPosition(findFirstVisibleItemClosestToEnd);
                if (position < position2) {
                    asRecord.setFromIndex(position);
                    asRecord.setToIndex(position2);
                    return;
                }
                asRecord.setFromIndex(position2);
                asRecord.setToIndex(position);
            }
        }
    }

    int findFirstVisibleItemPositionInt() {
        View findFirstVisibleItemClosestToEnd = this.mShouldReverseLayout ? findFirstVisibleItemClosestToEnd(true, true) : findFirstVisibleItemClosestToStart(true, true);
        return findFirstVisibleItemClosestToEnd == null ? -1 : getPosition(findFirstVisibleItemClosestToEnd);
    }

    public int getRowCountForAccessibility(Recycler recycler, State state) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        return super.getRowCountForAccessibility(recycler, state);
    }

    public int getColumnCountForAccessibility(Recycler recycler, State state) {
        if (this.mOrientation == VERTICAL) {
            return this.mSpanCount;
        }
        return super.getColumnCountForAccessibility(recycler, state);
    }

    View findFirstVisibleItemClosestToStart(boolean z, boolean z2) {
        ensureOrientationHelper();
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i = HORIZONTAL; i < childCount; i += VERTICAL) {
            View childAt = getChildAt(i);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z) {
                    return childAt;
                }
                if (z2 && view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View findFirstVisibleItemClosestToEnd(boolean z, boolean z2) {
        ensureOrientationHelper();
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            int decoratedEnd = this.mPrimaryOrientation.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z) {
                    return childAt;
                }
                if (z2 && view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    private void fixEndGap(Recycler recycler, State state, boolean z) {
        int maxEnd = getMaxEnd(INVALID_OFFSET);
        if (maxEnd != INVALID_OFFSET) {
            maxEnd = this.mPrimaryOrientation.getEndAfterPadding() - maxEnd;
            if (maxEnd > 0) {
                maxEnd -= -scrollBy(-maxEnd, recycler, state);
                if (z && maxEnd > 0) {
                    this.mPrimaryOrientation.offsetChildren(maxEnd);
                }
            }
        }
    }

    private void fixStartGap(Recycler recycler, State state, boolean z) {
        int minStart = getMinStart(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (minStart != ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            minStart -= this.mPrimaryOrientation.getStartAfterPadding();
            if (minStart > 0) {
                minStart -= scrollBy(minStart, recycler, state);
                if (z && minStart > 0) {
                    this.mPrimaryOrientation.offsetChildren(-minStart);
                }
            }
        }
    }

    private void updateLayoutState(int i, State state) {
        int targetScrollPosition;
        int i2;
        LayoutState layoutState;
        boolean z = DEBUG;
        this.mLayoutState.mAvailable = HORIZONTAL;
        this.mLayoutState.mCurrentPosition = i;
        if (isSmoothScrolling()) {
            targetScrollPosition = state.getTargetScrollPosition();
            if (targetScrollPosition != -1) {
                if (this.mShouldReverseLayout == (targetScrollPosition < i ? true : DEBUG)) {
                    targetScrollPosition = this.mPrimaryOrientation.getTotalSpace();
                    i2 = HORIZONTAL;
                } else {
                    i2 = this.mPrimaryOrientation.getTotalSpace();
                    targetScrollPosition = HORIZONTAL;
                }
                if (getClipToPadding()) {
                    this.mLayoutState.mEndLine = targetScrollPosition + this.mPrimaryOrientation.getEnd();
                    this.mLayoutState.mStartLine = -i2;
                } else {
                    this.mLayoutState.mStartLine = this.mPrimaryOrientation.getStartAfterPadding() - i2;
                    this.mLayoutState.mEndLine = targetScrollPosition + this.mPrimaryOrientation.getEndAfterPadding();
                }
                this.mLayoutState.mStopInFocusable = DEBUG;
                this.mLayoutState.mRecycle = true;
                layoutState = this.mLayoutState;
                if (this.mPrimaryOrientation.getMode() == 0) {
                    z = true;
                }
                layoutState.mInfinite = z;
            }
        }
        targetScrollPosition = HORIZONTAL;
        i2 = HORIZONTAL;
        if (getClipToPadding()) {
            this.mLayoutState.mEndLine = targetScrollPosition + this.mPrimaryOrientation.getEnd();
            this.mLayoutState.mStartLine = -i2;
        } else {
            this.mLayoutState.mStartLine = this.mPrimaryOrientation.getStartAfterPadding() - i2;
            this.mLayoutState.mEndLine = targetScrollPosition + this.mPrimaryOrientation.getEndAfterPadding();
        }
        this.mLayoutState.mStopInFocusable = DEBUG;
        this.mLayoutState.mRecycle = true;
        layoutState = this.mLayoutState;
        if (this.mPrimaryOrientation.getMode() == 0) {
            z = true;
        }
        layoutState.mInfinite = z;
    }

    private void setLayoutStateDirection(int i) {
        int i2 = VERTICAL;
        this.mLayoutState.mLayoutDirection = i;
        LayoutState layoutState = this.mLayoutState;
        if (this.mShouldReverseLayout != (i == -1 ? VERTICAL : DEBUG)) {
            i2 = -1;
        }
        layoutState.mItemDirection = i2;
    }

    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = HORIZONTAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            this.mSpans[i2].onOffset(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = HORIZONTAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            this.mSpans[i2].onOffset(i);
        }
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        handleUpdate(i, i2, GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS);
    }

    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        handleUpdate(i, i2, VERTICAL);
    }

    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        handleUpdate(i, i2, 8);
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        handleUpdate(i, i2, 4);
    }

    private void handleUpdate(int i, int i2, int i3) {
        int i4;
        int i5;
        int lastChildPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
        if (i3 != 8) {
            i4 = i + i2;
            i5 = i;
        } else if (i < i2) {
            i4 = i2 + VERTICAL;
            i5 = i;
        } else {
            i4 = i + VERTICAL;
            i5 = i2;
        }
        this.mLazySpanLookup.invalidateAfter(i5);
        switch (i3) {
            case VERTICAL /*1*/:
                this.mLazySpanLookup.offsetForAddition(i, i2);
                break;
            case GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS /*2*/:
                this.mLazySpanLookup.offsetForRemoval(i, i2);
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                this.mLazySpanLookup.offsetForRemoval(i, VERTICAL);
                this.mLazySpanLookup.offsetForAddition(i2, VERTICAL);
                break;
        }
        if (i4 > lastChildPosition) {
            if (i5 <= (this.mShouldReverseLayout ? getFirstChildPosition() : getLastChildPosition())) {
                requestLayout();
            }
        }
    }

    private int fill(Recycler recycler, LayoutState layoutState, State state) {
        int i;
        int endAfterPadding;
        int maxEnd;
        this.mRemainingSpans.set(HORIZONTAL, this.mSpanCount, true);
        if (this.mLayoutState.mInfinite) {
            if (layoutState.mLayoutDirection == VERTICAL) {
                i = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            } else {
                i = INVALID_OFFSET;
            }
        } else if (layoutState.mLayoutDirection == VERTICAL) {
            i = layoutState.mEndLine + layoutState.mAvailable;
        } else {
            i = layoutState.mStartLine - layoutState.mAvailable;
        }
        updateAllRemainingSpans(layoutState.mLayoutDirection, i);
        if (this.mShouldReverseLayout) {
            endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        } else {
            endAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        }
        Object obj = null;
        while (layoutState.hasMore(state) && (this.mLayoutState.mInfinite || !this.mRemainingSpans.isEmpty())) {
            Span span;
            int decoratedMeasurement;
            int decoratedMeasurement2;
            View next = layoutState.next(recycler);
            LayoutParams layoutParams = (LayoutParams) next.getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            int span2 = this.mLazySpanLookup.getSpan(viewLayoutPosition);
            Object obj2 = span2 == -1 ? VERTICAL : HORIZONTAL;
            if (obj2 != null) {
                Span nextSpan = layoutParams.mFullSpan ? this.mSpans[HORIZONTAL] : getNextSpan(layoutState);
                this.mLazySpanLookup.setSpan(viewLayoutPosition, nextSpan);
                span = nextSpan;
            } else {
                span = this.mSpans[span2];
            }
            layoutParams.mSpan = span;
            if (layoutState.mLayoutDirection == VERTICAL) {
                addView(next);
            } else {
                addView(next, HORIZONTAL);
            }
            measureChildWithDecorationsAndMargin(next, layoutParams, DEBUG);
            if (layoutState.mLayoutDirection == VERTICAL) {
                if (layoutParams.mFullSpan) {
                    maxEnd = getMaxEnd(endAfterPadding);
                } else {
                    maxEnd = span.getEndLine(endAfterPadding);
                }
                decoratedMeasurement = maxEnd + this.mPrimaryOrientation.getDecoratedMeasurement(next);
                if (obj2 == null || !layoutParams.mFullSpan) {
                    span2 = maxEnd;
                } else {
                    FullSpanItem createFullSpanItemFromEnd = createFullSpanItemFromEnd(maxEnd);
                    createFullSpanItemFromEnd.mGapDir = -1;
                    createFullSpanItemFromEnd.mPosition = viewLayoutPosition;
                    this.mLazySpanLookup.addFullSpanItem(createFullSpanItemFromEnd);
                    span2 = maxEnd;
                }
            } else {
                if (layoutParams.mFullSpan) {
                    maxEnd = getMinStart(endAfterPadding);
                } else {
                    maxEnd = span.getStartLine(endAfterPadding);
                }
                span2 = maxEnd - this.mPrimaryOrientation.getDecoratedMeasurement(next);
                if (obj2 != null && layoutParams.mFullSpan) {
                    FullSpanItem createFullSpanItemFromStart = createFullSpanItemFromStart(maxEnd);
                    createFullSpanItemFromStart.mGapDir = VERTICAL;
                    createFullSpanItemFromStart.mPosition = viewLayoutPosition;
                    this.mLazySpanLookup.addFullSpanItem(createFullSpanItemFromStart);
                }
                decoratedMeasurement = maxEnd;
            }
            if (layoutParams.mFullSpan && layoutState.mItemDirection == -1) {
                if (obj2 != null) {
                    this.mLaidOutInvalidFullSpan = true;
                } else {
                    obj = layoutState.mLayoutDirection == VERTICAL ? !areAllEndsEqual() ? VERTICAL : null : !areAllStartsEqual() ? VERTICAL : null;
                    if (obj != null) {
                        FullSpanItem fullSpanItem = this.mLazySpanLookup.getFullSpanItem(viewLayoutPosition);
                        if (fullSpanItem != null) {
                            fullSpanItem.mHasUnwantedGapAfter = true;
                        }
                        this.mLaidOutInvalidFullSpan = true;
                    }
                }
            }
            attachViewToSpans(next, layoutParams, layoutState);
            if (isLayoutRTL() && this.mOrientation == VERTICAL) {
                maxEnd = layoutParams.mFullSpan ? this.mSecondaryOrientation.getEndAfterPadding() : this.mSecondaryOrientation.getEndAfterPadding() - (((this.mSpanCount - 1) - span.mIndex) * this.mSizePerSpan);
                decoratedMeasurement2 = maxEnd - this.mSecondaryOrientation.getDecoratedMeasurement(next);
                viewLayoutPosition = maxEnd;
            } else {
                maxEnd = layoutParams.mFullSpan ? this.mSecondaryOrientation.getStartAfterPadding() : (span.mIndex * this.mSizePerSpan) + this.mSecondaryOrientation.getStartAfterPadding();
                viewLayoutPosition = maxEnd + this.mSecondaryOrientation.getDecoratedMeasurement(next);
                decoratedMeasurement2 = maxEnd;
            }
            if (this.mOrientation == VERTICAL) {
                layoutDecoratedWithMargins(next, decoratedMeasurement2, span2, viewLayoutPosition, decoratedMeasurement);
            } else {
                layoutDecoratedWithMargins(next, span2, decoratedMeasurement2, decoratedMeasurement, viewLayoutPosition);
            }
            if (layoutParams.mFullSpan) {
                updateAllRemainingSpans(this.mLayoutState.mLayoutDirection, i);
            } else {
                updateRemainingSpans(span, this.mLayoutState.mLayoutDirection, i);
            }
            recycle(recycler, this.mLayoutState);
            if (this.mLayoutState.mStopInFocusable && next.isFocusable()) {
                if (layoutParams.mFullSpan) {
                    this.mRemainingSpans.clear();
                } else {
                    this.mRemainingSpans.set(span.mIndex, DEBUG);
                }
            }
            obj = VERTICAL;
        }
        if (obj == null) {
            recycle(recycler, this.mLayoutState);
        }
        if (this.mLayoutState.mLayoutDirection == -1) {
            maxEnd = this.mPrimaryOrientation.getStartAfterPadding() - getMinStart(this.mPrimaryOrientation.getStartAfterPadding());
        } else {
            maxEnd = getMaxEnd(this.mPrimaryOrientation.getEndAfterPadding()) - this.mPrimaryOrientation.getEndAfterPadding();
        }
        return maxEnd > 0 ? Math.min(layoutState.mAvailable, maxEnd) : HORIZONTAL;
    }

    private FullSpanItem createFullSpanItemFromEnd(int i) {
        FullSpanItem fullSpanItem = new FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i2 = HORIZONTAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            fullSpanItem.mGapPerSpan[i2] = i - this.mSpans[i2].getEndLine(i);
        }
        return fullSpanItem;
    }

    private FullSpanItem createFullSpanItemFromStart(int i) {
        FullSpanItem fullSpanItem = new FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i2 = HORIZONTAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            fullSpanItem.mGapPerSpan[i2] = this.mSpans[i2].getStartLine(i) - i;
        }
        return fullSpanItem;
    }

    private void attachViewToSpans(View view, LayoutParams layoutParams, LayoutState layoutState) {
        if (layoutState.mLayoutDirection == VERTICAL) {
            if (layoutParams.mFullSpan) {
                appendViewToAllSpans(view);
            } else {
                layoutParams.mSpan.appendToSpan(view);
            }
        } else if (layoutParams.mFullSpan) {
            prependViewToAllSpans(view);
        } else {
            layoutParams.mSpan.prependToSpan(view);
        }
    }

    private void recycle(Recycler recycler, LayoutState layoutState) {
        if (layoutState.mRecycle && !layoutState.mInfinite) {
            if (layoutState.mAvailable == 0) {
                if (layoutState.mLayoutDirection == -1) {
                    recycleFromEnd(recycler, layoutState.mEndLine);
                } else {
                    recycleFromStart(recycler, layoutState.mStartLine);
                }
            } else if (layoutState.mLayoutDirection == -1) {
                r0 = layoutState.mStartLine - getMaxStart(layoutState.mStartLine);
                if (r0 < 0) {
                    r0 = layoutState.mEndLine;
                } else {
                    r0 = layoutState.mEndLine - Math.min(r0, layoutState.mAvailable);
                }
                recycleFromEnd(recycler, r0);
            } else {
                r0 = getMinEnd(layoutState.mEndLine) - layoutState.mEndLine;
                if (r0 < 0) {
                    r0 = layoutState.mStartLine;
                } else {
                    r0 = Math.min(r0, layoutState.mAvailable) + layoutState.mStartLine;
                }
                recycleFromStart(recycler, r0);
            }
        }
    }

    private void appendViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].appendToSpan(view);
        }
    }

    private void prependViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].prependToSpan(view);
        }
    }

    private void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        layoutDecorated(view, i + layoutParams.leftMargin, i2 + layoutParams.topMargin, i3 - layoutParams.rightMargin, i4 - layoutParams.bottomMargin);
    }

    private void updateAllRemainingSpans(int i, int i2) {
        for (int i3 = HORIZONTAL; i3 < this.mSpanCount; i3 += VERTICAL) {
            if (!Span.access$200(this.mSpans[i3]).isEmpty()) {
                updateRemainingSpans(this.mSpans[i3], i, i2);
            }
        }
    }

    private void updateRemainingSpans(Span span, int i, int i2) {
        int deletedSize = span.getDeletedSize();
        if (i == -1) {
            if (deletedSize + span.getStartLine() <= i2) {
                this.mRemainingSpans.set(span.mIndex, DEBUG);
            }
        } else if (span.getEndLine() - deletedSize >= i2) {
            this.mRemainingSpans.set(span.mIndex, DEBUG);
        }
    }

    private int getMaxStart(int i) {
        int startLine = this.mSpans[HORIZONTAL].getStartLine(i);
        for (int i2 = VERTICAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            int startLine2 = this.mSpans[i2].getStartLine(i);
            if (startLine2 > startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    private int getMinStart(int i) {
        int startLine = this.mSpans[HORIZONTAL].getStartLine(i);
        for (int i2 = VERTICAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            int startLine2 = this.mSpans[i2].getStartLine(i);
            if (startLine2 < startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    boolean areAllEndsEqual() {
        int endLine = this.mSpans[HORIZONTAL].getEndLine(INVALID_OFFSET);
        for (int i = VERTICAL; i < this.mSpanCount; i += VERTICAL) {
            if (this.mSpans[i].getEndLine(INVALID_OFFSET) != endLine) {
                return DEBUG;
            }
        }
        return true;
    }

    boolean areAllStartsEqual() {
        int startLine = this.mSpans[HORIZONTAL].getStartLine(INVALID_OFFSET);
        for (int i = VERTICAL; i < this.mSpanCount; i += VERTICAL) {
            if (this.mSpans[i].getStartLine(INVALID_OFFSET) != startLine) {
                return DEBUG;
            }
        }
        return true;
    }

    private int getMaxEnd(int i) {
        int endLine = this.mSpans[HORIZONTAL].getEndLine(i);
        for (int i2 = VERTICAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            int endLine2 = this.mSpans[i2].getEndLine(i);
            if (endLine2 > endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    private int getMinEnd(int i) {
        int endLine = this.mSpans[HORIZONTAL].getEndLine(i);
        for (int i2 = VERTICAL; i2 < this.mSpanCount; i2 += VERTICAL) {
            int endLine2 = this.mSpans[i2].getEndLine(i);
            if (endLine2 < endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    private void recycleFromStart(Recycler recycler, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(HORIZONTAL);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) <= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    int i2 = HORIZONTAL;
                    while (i2 < this.mSpanCount) {
                        if (Span.access$200(this.mSpans[i2]).size() != VERTICAL) {
                            i2 += VERTICAL;
                        } else {
                            return;
                        }
                    }
                    for (i2 = HORIZONTAL; i2 < this.mSpanCount; i2 += VERTICAL) {
                        this.mSpans[i2].popStart();
                    }
                } else if (Span.access$200(layoutParams.mSpan).size() != VERTICAL) {
                    layoutParams.mSpan.popStart();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, recycler);
            } else {
                return;
            }
        }
    }

    private void recycleFromEnd(Recycler recycler, int i) {
        int childCount = getChildCount() - 1;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            if (this.mPrimaryOrientation.getDecoratedStart(childAt) >= i) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    int i2 = HORIZONTAL;
                    while (i2 < this.mSpanCount) {
                        if (Span.access$200(this.mSpans[i2]).size() != VERTICAL) {
                            i2 += VERTICAL;
                        } else {
                            return;
                        }
                    }
                    for (i2 = HORIZONTAL; i2 < this.mSpanCount; i2 += VERTICAL) {
                        this.mSpans[i2].popEnd();
                    }
                } else if (Span.access$200(layoutParams.mSpan).size() != VERTICAL) {
                    layoutParams.mSpan.popEnd();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, recycler);
                childCount--;
            } else {
                return;
            }
        }
    }

    private boolean preferLastSpan(int i) {
        if (this.mOrientation == 0) {
            boolean z;
            if (i == -1) {
                z = true;
            } else {
                z = HORIZONTAL;
            }
            if (z != this.mShouldReverseLayout) {
                return true;
            }
            return DEBUG;
        }
        if (((i == -1 ? true : HORIZONTAL) == this.mShouldReverseLayout ? true : HORIZONTAL) != isLayoutRTL()) {
            return DEBUG;
        }
        return true;
    }

    private Span getNextSpan(LayoutState layoutState) {
        int i;
        int i2;
        Span span = null;
        int i3 = -1;
        if (preferLastSpan(layoutState.mLayoutDirection)) {
            i = this.mSpanCount - 1;
            i2 = -1;
        } else {
            i = HORIZONTAL;
            i2 = this.mSpanCount;
            i3 = VERTICAL;
        }
        int startAfterPadding;
        int i4;
        Span span2;
        int endLine;
        Span span3;
        if (layoutState.mLayoutDirection == VERTICAL) {
            startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
            i4 = i;
            i = Integer.MAX_VALUE;
            while (i4 != i2) {
                span2 = this.mSpans[i4];
                endLine = span2.getEndLine(startAfterPadding);
                if (endLine < i) {
                    span3 = span2;
                } else {
                    endLine = i;
                    span3 = span;
                }
                i4 += i3;
                span = span3;
                i = endLine;
            }
        } else {
            startAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
            i4 = i;
            i = INVALID_OFFSET;
            while (i4 != i2) {
                span2 = this.mSpans[i4];
                endLine = span2.getStartLine(startAfterPadding);
                if (endLine > i) {
                    span3 = span2;
                } else {
                    endLine = i;
                    span3 = span;
                }
                i4 += i3;
                span = span3;
                i = endLine;
            }
        }
        return span;
    }

    public boolean canScrollVertically() {
        return this.mOrientation == VERTICAL ? true : DEBUG;
    }

    public boolean canScrollHorizontally() {
        return this.mOrientation == 0 ? true : DEBUG;
    }

    public int scrollHorizontallyBy(int i, Recycler recycler, State state) {
        return scrollBy(i, recycler, state);
    }

    public int scrollVerticallyBy(int i, Recycler recycler, State state) {
        return scrollBy(i, recycler, state);
    }

    private int calculateScrollDirectionForPosition(int i) {
        int i2 = -1;
        if (getChildCount() != 0) {
            if ((i < getFirstChildPosition() ? VERTICAL : DEBUG) == this.mShouldReverseLayout) {
                i2 = VERTICAL;
            }
            return i2;
        } else if (this.mShouldReverseLayout) {
            return VERTICAL;
        } else {
            return -1;
        }
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, State state, int i) {
        2 2 = new 2(this, recyclerView.getContext());
        2.setTargetPosition(i);
        startSmoothScroll(2);
    }

    public void scrollToPosition(int i) {
        if (!(this.mPendingSavedState == null || this.mPendingSavedState.mAnchorPosition == i)) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = INVALID_OFFSET;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        requestLayout();
    }

    int scrollBy(int i, Recycler recycler, State state) {
        int lastChildPosition;
        int i2;
        ensureOrientationHelper();
        if (i > 0) {
            lastChildPosition = getLastChildPosition();
            i2 = VERTICAL;
        } else {
            i2 = -1;
            lastChildPosition = getFirstChildPosition();
        }
        this.mLayoutState.mRecycle = true;
        updateLayoutState(lastChildPosition, state);
        setLayoutStateDirection(i2);
        this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + lastChildPosition;
        int abs = Math.abs(i);
        this.mLayoutState.mAvailable = abs;
        i2 = fill(recycler, this.mLayoutState, state);
        if (abs >= i2) {
            i = i < 0 ? -i2 : i2;
        }
        this.mPrimaryOrientation.offsetChildren(-i);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        return i;
    }

    private int getLastChildPosition() {
        int childCount = getChildCount();
        return childCount == 0 ? HORIZONTAL : getPosition(getChildAt(childCount - 1));
    }

    private int getFirstChildPosition() {
        if (getChildCount() == 0) {
            return HORIZONTAL;
        }
        return getPosition(getChildAt(HORIZONTAL));
    }

    private int findFirstReferenceChildPosition(int i) {
        int childCount = getChildCount();
        for (int i2 = HORIZONTAL; i2 < childCount; i2 += VERTICAL) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return HORIZONTAL;
    }

    private int findLastReferenceChildPosition(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return HORIZONTAL;
    }

    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public RecyclerView.LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        if (layoutParams instanceof MarginLayoutParams) {
            return new LayoutParams((MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    @Nullable
    public View onFocusSearchFailed(View view, int i, Recycler recycler, State state) {
        int i2 = HORIZONTAL;
        if (getChildCount() == 0) {
            return null;
        }
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        ensureOrientationHelper();
        resolveShouldLayoutReverse();
        int convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i);
        if (convertFocusDirectionToLayoutDirection == INVALID_OFFSET) {
            return null;
        }
        int lastChildPosition;
        View focusableViewAfter;
        LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
        boolean z = layoutParams.mFullSpan;
        Span span = layoutParams.mSpan;
        if (convertFocusDirectionToLayoutDirection == VERTICAL) {
            lastChildPosition = getLastChildPosition();
        } else {
            lastChildPosition = getFirstChildPosition();
        }
        updateLayoutState(lastChildPosition, state);
        setLayoutStateDirection(convertFocusDirectionToLayoutDirection);
        this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + lastChildPosition;
        this.mLayoutState.mAvailable = (int) (MAX_SCROLL_FACTOR * ((float) this.mPrimaryOrientation.getTotalSpace()));
        this.mLayoutState.mStopInFocusable = true;
        this.mLayoutState.mRecycle = DEBUG;
        fill(recycler, this.mLayoutState, state);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        if (!z) {
            focusableViewAfter = span.getFocusableViewAfter(lastChildPosition, convertFocusDirectionToLayoutDirection);
            if (!(focusableViewAfter == null || focusableViewAfter == findContainingItemView)) {
                return focusableViewAfter;
            }
        }
        if (preferLastSpan(convertFocusDirectionToLayoutDirection)) {
            for (int i3 = this.mSpanCount - 1; i3 >= 0; i3--) {
                View focusableViewAfter2 = this.mSpans[i3].getFocusableViewAfter(lastChildPosition, convertFocusDirectionToLayoutDirection);
                if (focusableViewAfter2 != null && focusableViewAfter2 != findContainingItemView) {
                    return focusableViewAfter2;
                }
            }
        } else {
            while (i2 < this.mSpanCount) {
                focusableViewAfter = this.mSpans[i2].getFocusableViewAfter(lastChildPosition, convertFocusDirectionToLayoutDirection);
                if (focusableViewAfter != null && focusableViewAfter != findContainingItemView) {
                    return focusableViewAfter;
                }
                i2 += VERTICAL;
            }
        }
        return null;
    }

    private int convertFocusDirectionToLayoutDirection(int i) {
        int i2 = VERTICAL;
        int i3 = INVALID_OFFSET;
        switch (i) {
            case VERTICAL /*1*/:
                return -1;
            case GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS /*2*/:
                return VERTICAL;
            case mx.TwitterButton_bounded /*17*/:
                if (this.mOrientation != 0) {
                    return INVALID_OFFSET;
                }
                return -1;
            case mx.AppCompatTheme_actionModeCopyDrawable /*33*/:
                if (this.mOrientation != VERTICAL) {
                    return INVALID_OFFSET;
                }
                return -1;
            case mx.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                if (this.mOrientation != 0) {
                    i2 = INVALID_OFFSET;
                }
                return i2;
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                if (this.mOrientation == VERTICAL) {
                    i3 = VERTICAL;
                }
                return i3;
            default:
                return INVALID_OFFSET;
        }
    }
}
