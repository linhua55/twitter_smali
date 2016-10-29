package android.support.v7.widget;

import com.google.android.exoplayer.text.Cue;

/* compiled from: Twttr */
class StaggeredGridLayoutManager$AnchorInfo {
    boolean mInvalidateOffsets;
    boolean mLayoutFromEnd;
    int mOffset;
    int mPosition;
    final /* synthetic */ StaggeredGridLayoutManager this$0;

    private StaggeredGridLayoutManager$AnchorInfo(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.this$0 = staggeredGridLayoutManager;
    }

    void reset() {
        this.mPosition = -1;
        this.mOffset = Cue.TYPE_UNSET;
        this.mLayoutFromEnd = false;
        this.mInvalidateOffsets = false;
    }

    void assignCoordinateFromPadding() {
        this.mOffset = this.mLayoutFromEnd ? this.this$0.mPrimaryOrientation.getEndAfterPadding() : this.this$0.mPrimaryOrientation.getStartAfterPadding();
    }

    void assignCoordinateFromPadding(int i) {
        if (this.mLayoutFromEnd) {
            this.mOffset = this.this$0.mPrimaryOrientation.getEndAfterPadding() - i;
        } else {
            this.mOffset = this.this$0.mPrimaryOrientation.getStartAfterPadding() + i;
        }
    }
}
