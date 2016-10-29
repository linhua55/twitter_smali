package com.twitter.android.util;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class m implements Creator<CategoryListItem> {
    m() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public CategoryListItem a(Parcel parcel) {
        return new CategoryListItem(parcel);
    }

    public CategoryListItem[] a(int i) {
        return new CategoryListItem[i];
    }
}
