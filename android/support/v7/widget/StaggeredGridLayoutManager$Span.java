package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;

/* compiled from: Twttr */
class StaggeredGridLayoutManager$Span {
    static final int INVALID_LINE = Integer.MIN_VALUE;
    int mCachedEnd;
    int mCachedStart;
    int mDeletedSize;
    final int mIndex;
    private ArrayList<View> mViews;
    final /* synthetic */ StaggeredGridLayoutManager this$0;

    private StaggeredGridLayoutManager$Span(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.this$0 = staggeredGridLayoutManager;
        this.mViews = new ArrayList();
        this.mCachedStart = INVALID_LINE;
        this.mCachedEnd = INVALID_LINE;
        this.mDeletedSize = 0;
        this.mIndex = i;
    }

    int getStartLine(int i) {
        if (this.mCachedStart != INVALID_LINE) {
            return this.mCachedStart;
        }
        if (this.mViews.size() == 0) {
            return i;
        }
        calculateCachedStart();
        return this.mCachedStart;
    }

    void calculateCachedStart() {
        View view = (View) this.mViews.get(0);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        this.mCachedStart = this.this$0.mPrimaryOrientation.getDecoratedStart(view);
        if (layoutParams.mFullSpan) {
            FullSpanItem fullSpanItem = this.this$0.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition());
            if (fullSpanItem != null && fullSpanItem.mGapDir == -1) {
                this.mCachedStart -= fullSpanItem.getGapForSpan(this.mIndex);
            }
        }
    }

    int getStartLine() {
        if (this.mCachedStart != INVALID_LINE) {
            return this.mCachedStart;
        }
        calculateCachedStart();
        return this.mCachedStart;
    }

    int getEndLine(int i) {
        if (this.mCachedEnd != INVALID_LINE) {
            return this.mCachedEnd;
        }
        if (this.mViews.size() == 0) {
            return i;
        }
        calculateCachedEnd();
        return this.mCachedEnd;
    }

    void calculateCachedEnd() {
        View view = (View) this.mViews.get(this.mViews.size() - 1);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        this.mCachedEnd = this.this$0.mPrimaryOrientation.getDecoratedEnd(view);
        if (layoutParams.mFullSpan) {
            FullSpanItem fullSpanItem = this.this$0.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition());
            if (fullSpanItem != null && fullSpanItem.mGapDir == 1) {
                this.mCachedEnd = fullSpanItem.getGapForSpan(this.mIndex) + this.mCachedEnd;
            }
        }
    }

    int getEndLine() {
        if (this.mCachedEnd != INVALID_LINE) {
            return this.mCachedEnd;
        }
        calculateCachedEnd();
        return this.mCachedEnd;
    }

    void prependToSpan(View view) {
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = this;
        this.mViews.add(0, view);
        this.mCachedStart = INVALID_LINE;
        if (this.mViews.size() == 1) {
            this.mCachedEnd = INVALID_LINE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize += this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view);
        }
    }

    void appendToSpan(View view) {
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = this;
        this.mViews.add(view);
        this.mCachedEnd = INVALID_LINE;
        if (this.mViews.size() == 1) {
            this.mCachedStart = INVALID_LINE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize += this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view);
        }
    }

    void cacheReferenceLineAndClear(boolean z, int i) {
        int endLine;
        if (z) {
            endLine = getEndLine(INVALID_LINE);
        } else {
            endLine = getStartLine(INVALID_LINE);
        }
        clear();
        if (endLine != INVALID_LINE) {
            if (z && endLine < this.this$0.mPrimaryOrientation.getEndAfterPadding()) {
                return;
            }
            if (z || endLine <= this.this$0.mPrimaryOrientation.getStartAfterPadding()) {
                if (i != INVALID_LINE) {
                    endLine += i;
                }
                this.mCachedEnd = endLine;
                this.mCachedStart = endLine;
            }
        }
    }

    void clear() {
        this.mViews.clear();
        invalidateCache();
        this.mDeletedSize = 0;
    }

    void invalidateCache() {
        this.mCachedStart = INVALID_LINE;
        this.mCachedEnd = INVALID_LINE;
    }

    void setLine(int i) {
        this.mCachedStart = i;
        this.mCachedEnd = i;
    }

    void popEnd() {
        int size = this.mViews.size();
        View view = (View) this.mViews.remove(size - 1);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = null;
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize -= this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view);
        }
        if (size == 1) {
            this.mCachedStart = INVALID_LINE;
        }
        this.mCachedEnd = INVALID_LINE;
    }

    void popStart() {
        View view = (View) this.mViews.remove(0);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = null;
        if (this.mViews.size() == 0) {
            this.mCachedEnd = INVALID_LINE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize -= this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view);
        }
        this.mCachedStart = INVALID_LINE;
    }

    public int getDeletedSize() {
        return this.mDeletedSize;
    }

    StaggeredGridLayoutManager$LayoutParams getLayoutParams(View view) {
        return (StaggeredGridLayoutManager$LayoutParams) view.getLayoutParams();
    }

    void onOffset(int i) {
        if (this.mCachedStart != INVALID_LINE) {
            this.mCachedStart += i;
        }
        if (this.mCachedEnd != INVALID_LINE) {
            this.mCachedEnd += i;
        }
    }

    public int findFirstVisibleItemPosition() {
        return StaggeredGridLayoutManager.access$600(this.this$0) ? findOneVisibleChild(this.mViews.size() - 1, -1, false) : findOneVisibleChild(0, this.mViews.size(), false);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        return StaggeredGridLayoutManager.access$600(this.this$0) ? findOneVisibleChild(this.mViews.size() - 1, -1, true) : findOneVisibleChild(0, this.mViews.size(), true);
    }

    public int findLastVisibleItemPosition() {
        return StaggeredGridLayoutManager.access$600(this.this$0) ? findOneVisibleChild(0, this.mViews.size(), false) : findOneVisibleChild(this.mViews.size() - 1, -1, false);
    }

    public int findLastCompletelyVisibleItemPosition() {
        return StaggeredGridLayoutManager.access$600(this.this$0) ? findOneVisibleChild(0, this.mViews.size(), true) : findOneVisibleChild(this.mViews.size() - 1, -1, true);
    }

    int findOneVisibleChild(int i, int i2, boolean z) {
        int startAfterPadding = this.this$0.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.this$0.mPrimaryOrientation.getEndAfterPadding();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) this.mViews.get(i);
            int decoratedStart = this.this$0.mPrimaryOrientation.getDecoratedStart(view);
            int decoratedEnd = this.this$0.mPrimaryOrientation.getDecoratedEnd(view);
            if (decoratedStart < endAfterPadding && decoratedEnd > startAfterPadding) {
                if (!z) {
                    return this.this$0.getPosition(view);
                }
                if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                    return this.this$0.getPosition(view);
                }
            }
            i += i3;
        }
        return -1;
    }

    public View getFocusableViewAfter(int i, int i2) {
        View view = null;
        int size;
        View view2;
        if (i2 == -1) {
            size = this.mViews.size();
            int i3 = 0;
            while (i3 < size) {
                view2 = (View) this.mViews.get(i3);
                if (!view2.isFocusable()) {
                    break;
                }
                boolean z;
                if (this.this$0.getPosition(view2) > i) {
                    z = true;
                } else {
                    z = false;
                }
                if (z != StaggeredGridLayoutManager.access$600(this.this$0)) {
                    break;
                }
                i3++;
                view = view2;
            }
            return view;
        }
        size = this.mViews.size() - 1;
        while (size >= 0) {
            view2 = (View) this.mViews.get(size);
            if (!view2.isFocusable()) {
                break;
            }
            Object obj;
            if (this.this$0.getPosition(view2) > i) {
                obj = 1;
            } else {
                obj = null;
            }
            if (obj != (!StaggeredGridLayoutManager.access$600(this.this$0) ? 1 : null)) {
                break;
            }
            size--;
            view = view2;
        }
        return view;
    }
}
