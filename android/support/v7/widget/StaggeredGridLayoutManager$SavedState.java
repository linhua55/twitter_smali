package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;

/* compiled from: Twttr */
public class StaggeredGridLayoutManager$SavedState implements Parcelable {
    public static final Creator<StaggeredGridLayoutManager$SavedState> CREATOR;
    boolean mAnchorLayoutFromEnd;
    int mAnchorPosition;
    List<FullSpanItem> mFullSpanItems;
    boolean mLastLayoutRTL;
    boolean mReverseLayout;
    int[] mSpanLookup;
    int mSpanLookupSize;
    int[] mSpanOffsets;
    int mSpanOffsetsSize;
    int mVisibleAnchorPosition;

    StaggeredGridLayoutManager$SavedState(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.mAnchorPosition = parcel.readInt();
        this.mVisibleAnchorPosition = parcel.readInt();
        this.mSpanOffsetsSize = parcel.readInt();
        if (this.mSpanOffsetsSize > 0) {
            this.mSpanOffsets = new int[this.mSpanOffsetsSize];
            parcel.readIntArray(this.mSpanOffsets);
        }
        this.mSpanLookupSize = parcel.readInt();
        if (this.mSpanLookupSize > 0) {
            this.mSpanLookup = new int[this.mSpanLookupSize];
            parcel.readIntArray(this.mSpanLookup);
        }
        this.mReverseLayout = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mAnchorLayoutFromEnd = z;
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.mLastLayoutRTL = z2;
        this.mFullSpanItems = parcel.readArrayList(FullSpanItem.class.getClassLoader());
    }

    public StaggeredGridLayoutManager$SavedState(StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState) {
        this.mSpanOffsetsSize = staggeredGridLayoutManager$SavedState.mSpanOffsetsSize;
        this.mAnchorPosition = staggeredGridLayoutManager$SavedState.mAnchorPosition;
        this.mVisibleAnchorPosition = staggeredGridLayoutManager$SavedState.mVisibleAnchorPosition;
        this.mSpanOffsets = staggeredGridLayoutManager$SavedState.mSpanOffsets;
        this.mSpanLookupSize = staggeredGridLayoutManager$SavedState.mSpanLookupSize;
        this.mSpanLookup = staggeredGridLayoutManager$SavedState.mSpanLookup;
        this.mReverseLayout = staggeredGridLayoutManager$SavedState.mReverseLayout;
        this.mAnchorLayoutFromEnd = staggeredGridLayoutManager$SavedState.mAnchorLayoutFromEnd;
        this.mLastLayoutRTL = staggeredGridLayoutManager$SavedState.mLastLayoutRTL;
        this.mFullSpanItems = staggeredGridLayoutManager$SavedState.mFullSpanItems;
    }

    void invalidateSpanInfo() {
        this.mSpanOffsets = null;
        this.mSpanOffsetsSize = 0;
        this.mSpanLookupSize = 0;
        this.mSpanLookup = null;
        this.mFullSpanItems = null;
    }

    void invalidateAnchorPositionInfo() {
        this.mSpanOffsets = null;
        this.mSpanOffsetsSize = 0;
        this.mAnchorPosition = -1;
        this.mVisibleAnchorPosition = -1;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeInt(this.mAnchorPosition);
        parcel.writeInt(this.mVisibleAnchorPosition);
        parcel.writeInt(this.mSpanOffsetsSize);
        if (this.mSpanOffsetsSize > 0) {
            parcel.writeIntArray(this.mSpanOffsets);
        }
        parcel.writeInt(this.mSpanLookupSize);
        if (this.mSpanLookupSize > 0) {
            parcel.writeIntArray(this.mSpanLookup);
        }
        if (this.mReverseLayout) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.mAnchorLayoutFromEnd) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (!this.mLastLayoutRTL) {
            i3 = 0;
        }
        parcel.writeInt(i3);
        parcel.writeList(this.mFullSpanItems);
    }

    static {
        CREATOR = new Creator<StaggeredGridLayoutManager$SavedState>() {
            public StaggeredGridLayoutManager$SavedState createFromParcel(Parcel parcel) {
                return new StaggeredGridLayoutManager$SavedState(parcel);
            }

            public StaggeredGridLayoutManager$SavedState[] newArray(int i) {
                return new StaggeredGridLayoutManager$SavedState[i];
            }
        };
    }
}
