package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
class StaggeredGridLayoutManager$LazySpanLookup {
    private static final int MIN_SIZE = 10;
    int[] mData;
    List<FullSpanItem> mFullSpanItems;

    /* compiled from: Twttr */
    class FullSpanItem implements Parcelable {
        public static final Creator<FullSpanItem> CREATOR;
        int mGapDir;
        int[] mGapPerSpan;
        boolean mHasUnwantedGapAfter;
        int mPosition;

        public FullSpanItem(Parcel parcel) {
            boolean z = true;
            this.mPosition = parcel.readInt();
            this.mGapDir = parcel.readInt();
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.mHasUnwantedGapAfter = z;
            int readInt = parcel.readInt();
            if (readInt > 0) {
                this.mGapPerSpan = new int[readInt];
                parcel.readIntArray(this.mGapPerSpan);
            }
        }

        int getGapForSpan(int i) {
            return this.mGapPerSpan == null ? 0 : this.mGapPerSpan[i];
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mPosition);
            parcel.writeInt(this.mGapDir);
            parcel.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
            if (this.mGapPerSpan == null || this.mGapPerSpan.length <= 0) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(this.mGapPerSpan.length);
            parcel.writeIntArray(this.mGapPerSpan);
        }

        public String toString() {
            return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
        }

        static {
            CREATOR = new Creator<FullSpanItem>() {
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };
        }
    }

    StaggeredGridLayoutManager$LazySpanLookup() {
    }

    int forceInvalidateAfter(int i) {
        if (this.mFullSpanItems != null) {
            for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                if (((FullSpanItem) this.mFullSpanItems.get(size)).mPosition >= i) {
                    this.mFullSpanItems.remove(size);
                }
            }
        }
        return invalidateAfter(i);
    }

    int invalidateAfter(int i) {
        if (this.mData == null || i >= this.mData.length) {
            return -1;
        }
        int invalidateFullSpansAfter = invalidateFullSpansAfter(i);
        if (invalidateFullSpansAfter == -1) {
            Arrays.fill(this.mData, i, this.mData.length, -1);
            return this.mData.length;
        }
        Arrays.fill(this.mData, i, invalidateFullSpansAfter + 1, -1);
        return invalidateFullSpansAfter + 1;
    }

    int getSpan(int i) {
        if (this.mData == null || i >= this.mData.length) {
            return -1;
        }
        return this.mData[i];
    }

    void setSpan(int i, StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span) {
        ensureSize(i);
        this.mData[i] = staggeredGridLayoutManager$Span.mIndex;
    }

    int sizeForPosition(int i) {
        int length = this.mData.length;
        while (length <= i) {
            length *= 2;
        }
        return length;
    }

    void ensureSize(int i) {
        if (this.mData == null) {
            this.mData = new int[(Math.max(i, MIN_SIZE) + 1)];
            Arrays.fill(this.mData, -1);
        } else if (i >= this.mData.length) {
            Object obj = this.mData;
            this.mData = new int[sizeForPosition(i)];
            System.arraycopy(obj, 0, this.mData, 0, obj.length);
            Arrays.fill(this.mData, obj.length, this.mData.length, -1);
        }
    }

    void clear() {
        if (this.mData != null) {
            Arrays.fill(this.mData, -1);
        }
        this.mFullSpanItems = null;
    }

    void offsetForRemoval(int i, int i2) {
        if (this.mData != null && i < this.mData.length) {
            ensureSize(i + i2);
            System.arraycopy(this.mData, i + i2, this.mData, i, (this.mData.length - i) - i2);
            Arrays.fill(this.mData, this.mData.length - i2, this.mData.length, -1);
            offsetFullSpansForRemoval(i, i2);
        }
    }

    private void offsetFullSpansForRemoval(int i, int i2) {
        if (this.mFullSpanItems != null) {
            int i3 = i + i2;
            for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.mFullSpanItems.get(size);
                if (fullSpanItem.mPosition >= i) {
                    if (fullSpanItem.mPosition < i3) {
                        this.mFullSpanItems.remove(size);
                    } else {
                        fullSpanItem.mPosition -= i2;
                    }
                }
            }
        }
    }

    void offsetForAddition(int i, int i2) {
        if (this.mData != null && i < this.mData.length) {
            ensureSize(i + i2);
            System.arraycopy(this.mData, i, this.mData, i + i2, (this.mData.length - i) - i2);
            Arrays.fill(this.mData, i, i + i2, -1);
            offsetFullSpansForAddition(i, i2);
        }
    }

    private void offsetFullSpansForAddition(int i, int i2) {
        if (this.mFullSpanItems != null) {
            for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.mFullSpanItems.get(size);
                if (fullSpanItem.mPosition >= i) {
                    fullSpanItem.mPosition += i2;
                }
            }
        }
    }

    private int invalidateFullSpansAfter(int i) {
        if (this.mFullSpanItems == null) {
            return -1;
        }
        FullSpanItem fullSpanItem = getFullSpanItem(i);
        if (fullSpanItem != null) {
            this.mFullSpanItems.remove(fullSpanItem);
        }
        int size = this.mFullSpanItems.size();
        int i2 = 0;
        while (i2 < size) {
            if (((FullSpanItem) this.mFullSpanItems.get(i2)).mPosition >= i) {
                break;
            }
            i2++;
        }
        i2 = -1;
        if (i2 == -1) {
            return -1;
        }
        fullSpanItem = (FullSpanItem) this.mFullSpanItems.get(i2);
        this.mFullSpanItems.remove(i2);
        return fullSpanItem.mPosition;
    }

    public void addFullSpanItem(FullSpanItem fullSpanItem) {
        if (this.mFullSpanItems == null) {
            this.mFullSpanItems = new ArrayList();
        }
        int size = this.mFullSpanItems.size();
        for (int i = 0; i < size; i++) {
            FullSpanItem fullSpanItem2 = (FullSpanItem) this.mFullSpanItems.get(i);
            if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                this.mFullSpanItems.remove(i);
            }
            if (fullSpanItem2.mPosition >= fullSpanItem.mPosition) {
                this.mFullSpanItems.add(i, fullSpanItem);
                return;
            }
        }
        this.mFullSpanItems.add(fullSpanItem);
    }

    public FullSpanItem getFullSpanItem(int i) {
        if (this.mFullSpanItems == null) {
            return null;
        }
        for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
            FullSpanItem fullSpanItem = (FullSpanItem) this.mFullSpanItems.get(size);
            if (fullSpanItem.mPosition == i) {
                return fullSpanItem;
            }
        }
        return null;
    }

    public FullSpanItem getFirstFullSpanItemInRange(int i, int i2, int i3, boolean z) {
        if (this.mFullSpanItems == null) {
            return null;
        }
        int size = this.mFullSpanItems.size();
        for (int i4 = 0; i4 < size; i4++) {
            FullSpanItem fullSpanItem = (FullSpanItem) this.mFullSpanItems.get(i4);
            if (fullSpanItem.mPosition >= i2) {
                return null;
            }
            if (fullSpanItem.mPosition >= i) {
                if (i3 == 0 || fullSpanItem.mGapDir == i3) {
                    return fullSpanItem;
                }
                if (z && fullSpanItem.mHasUnwantedGapAfter) {
                    return fullSpanItem;
                }
            }
        }
        return null;
    }
}
