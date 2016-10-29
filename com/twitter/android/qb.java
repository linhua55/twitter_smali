package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class qb implements Creator<SelectionFragment$SelectedItem> {
    qb() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public SelectionFragment$SelectedItem a(Parcel parcel) {
        return new SelectionFragment$SelectedItem(parcel);
    }

    public SelectionFragment$SelectedItem[] a(int i) {
        return new SelectionFragment$SelectedItem[i];
    }
}
