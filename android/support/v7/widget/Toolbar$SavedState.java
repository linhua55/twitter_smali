package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

/* compiled from: Twttr */
public class Toolbar$SavedState extends BaseSavedState {
    public static final Creator<Toolbar$SavedState> CREATOR;
    int expandedMenuItemId;
    boolean isOverflowOpen;

    public Toolbar$SavedState(Parcel parcel) {
        super(parcel);
        this.expandedMenuItemId = parcel.readInt();
        this.isOverflowOpen = parcel.readInt() != 0;
    }

    public Toolbar$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.expandedMenuItemId);
        parcel.writeInt(this.isOverflowOpen ? 1 : 0);
    }

    static {
        CREATOR = new Creator<Toolbar$SavedState>() {
            public Toolbar$SavedState createFromParcel(Parcel parcel) {
                return new Toolbar$SavedState(parcel);
            }

            public Toolbar$SavedState[] newArray(int i) {
                return new Toolbar$SavedState[i];
            }
        };
    }
}
