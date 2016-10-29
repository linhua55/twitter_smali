package com.twitter.media.service.tasks;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class e implements Creator<VideoTrimTask> {
    e() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public VideoTrimTask a(Parcel parcel) {
        return new VideoTrimTask(null);
    }

    public VideoTrimTask[] a(int i) {
        return new VideoTrimTask[i];
    }
}
