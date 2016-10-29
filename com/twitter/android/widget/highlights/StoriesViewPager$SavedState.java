package com.twitter.android.widget.highlights;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.os.ParcelableCompat;
import android.view.View.BaseSavedState;

/* compiled from: Twttr */
public class StoriesViewPager$SavedState extends BaseSavedState {
    public static final Creator<StoriesViewPager$SavedState> CREATOR;
    private int a;
    private Parcelable b;
    private ClassLoader c;

    static {
        CREATOR = ParcelableCompat.newCreator(new n());
    }

    public StoriesViewPager$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
        parcel.writeParcelable(this.b, i);
    }

    public String toString() {
        return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
    }

    StoriesViewPager$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel);
        if (classLoader == null) {
            classLoader = getClass().getClassLoader();
        }
        this.a = parcel.readInt();
        this.b = parcel.readParcelable(classLoader);
        this.c = classLoader;
    }
}
