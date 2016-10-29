package com.twitter.library.api.periscope;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<PeriscopeCapiModel> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public PeriscopeCapiModel a(Parcel parcel) {
        return new PeriscopeCapiModel(parcel);
    }

    public PeriscopeCapiModel[] a(int i) {
        return new PeriscopeCapiModel[i];
    }
}
