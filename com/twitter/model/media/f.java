package com.twitter.model.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class f implements Creator<EditableSegmentedVideo> {
    f() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public EditableSegmentedVideo a(Parcel parcel) {
        return new EditableSegmentedVideo(parcel);
    }

    public EditableSegmentedVideo[] a(int i) {
        return new EditableSegmentedVideo[i];
    }
}
