package com.twitter.media.service.tasks;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class d implements Creator<VideoStitchTask> {
    d() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoStitchTask a(Parcel parcel) {
        return new VideoStitchTask(null);
    }

    public VideoStitchTask[] a(int i) {
        return new VideoStitchTask[i];
    }
}
