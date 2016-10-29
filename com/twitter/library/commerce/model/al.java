package com.twitter.library.commerce.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class al implements Creator<ProductVariant> {
    al() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ProductVariant a(Parcel parcel) {
        return new ProductVariant(parcel, null);
    }

    public ProductVariant[] a(int i) {
        return new ProductVariant[i];
    }
}
