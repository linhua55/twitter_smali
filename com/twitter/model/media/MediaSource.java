package com.twitter.model.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.model.media.foundmedia.FoundMediaOrigin;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class MediaSource implements Parcelable {
    public static final Creator<MediaSource> CREATOR;
    public static final n<MediaSource> a;
    public static final MediaSource b;
    public static final MediaSource c;
    public static final MediaSource d;
    public static final MediaSource e;
    private static final MediaSource[] f;
    private final int g;
    private final String h;
    private final String i;
    private final FoundMediaProvider j;
    private final FoundMediaOrigin k;

    static {
        CREATOR = new j();
        a = k.a;
        b = new MediaSource(0, BuildConfig.VERSION_NAME);
        c = new MediaSource(1, "gallery");
        d = new MediaSource(2, "twitter_camera");
        e = new MediaSource(3, "camera");
        f = new MediaSource[]{b, c, d, e};
    }

    public MediaSource(String str, FoundMediaProvider foundMediaProvider, FoundMediaOrigin foundMediaOrigin) {
        this.g = -1;
        this.h = "found_media";
        this.i = str;
        this.j = foundMediaProvider;
        this.k = foundMediaOrigin;
    }

    private MediaSource(int i, String str) {
        this.g = i;
        this.h = str;
        this.i = null;
        this.j = null;
        this.k = null;
    }

    public String a() {
        return this.h;
    }

    public String b() {
        return this.i;
    }

    public FoundMediaProvider c() {
        return this.j;
    }

    public FoundMediaOrigin d() {
        return this.k;
    }

    public boolean e() {
        return this.g < 0;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.g);
        parcel.writeString(this.i);
        parcel.writeParcelable(this.j, i);
        parcel.writeParcelable(this.k, i);
    }

    public static MediaSource a(String str) {
        for (MediaSource mediaSource : f) {
            if (str.equals(mediaSource.h)) {
                return mediaSource;
            }
        }
        return b;
    }

    static MediaSource a(int i, String str, FoundMediaProvider foundMediaProvider, FoundMediaOrigin foundMediaOrigin) {
        return i >= 0 ? f[i] : new MediaSource(str, foundMediaProvider, foundMediaOrigin);
    }
}
