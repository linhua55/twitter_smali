package com.twitter.model.drafts;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<DraftAttachment> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public DraftAttachment a(Parcel parcel) {
        return new DraftAttachment(parcel);
    }

    public DraftAttachment[] a(int i) {
        return new DraftAttachment[i];
    }
}
