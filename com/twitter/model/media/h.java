package com.twitter.model.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class h implements Creator<EditableVideo> {
    h() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public EditableVideo a(Parcel parcel) {
        return new EditableVideo(parcel);
    }

    public EditableVideo[] a(int i) {
        return new EditableVideo[i];
    }
}
