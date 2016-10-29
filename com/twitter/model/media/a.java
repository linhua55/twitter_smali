package com.twitter.model.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class a implements Creator<EditableAnimatedGif> {
    a() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public EditableAnimatedGif a(Parcel parcel) {
        return new EditableAnimatedGif(parcel);
    }

    public EditableAnimatedGif[] a(int i) {
        return new EditableAnimatedGif[i];
    }
}
