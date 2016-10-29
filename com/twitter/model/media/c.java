package com.twitter.model.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<EditableImage> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public EditableImage a(Parcel parcel) {
        return new EditableImage(parcel);
    }

    public EditableImage[] a(int i) {
        return new EditableImage[i];
    }
}
