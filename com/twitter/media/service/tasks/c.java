package com.twitter.media.service.tasks;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class c implements Creator<VideoMuxTask> {
    c() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoMuxTask a(Parcel parcel) {
        return new VideoMuxTask(null);
    }

    public VideoMuxTask[] a(int i) {
        return new VideoMuxTask[i];
    }
}
