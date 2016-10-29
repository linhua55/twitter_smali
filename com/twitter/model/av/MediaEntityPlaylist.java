package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.util.collection.x;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class MediaEntityPlaylist extends AVMediaPlaylist {
    public static final Creator<MediaEntityPlaylist> CREATOR;
    private final String d;
    private final Video e;
    private final Video f;
    private final DynamicAdInfo g;

    static {
        CREATOR = new m();
    }

    protected MediaEntityPlaylist(Parcel parcel) {
        super(parcel);
        this.d = parcel.readString();
        this.e = (Video) parcel.readParcelable(Video.class.getClassLoader());
        this.f = (Video) parcel.readParcelable(Video.class.getClassLoader());
        this.g = (DynamicAdInfo) parcel.readParcelable(DynamicAd.class.getClassLoader());
    }

    public MediaEntityPlaylist(String str, Video video, Video video2, DynamicAdInfo dynamicAdInfo) {
        this.d = str;
        this.e = video;
        this.f = video2;
        this.g = dynamicAdInfo;
    }

    public AVMedia c() {
        return this.e;
    }

    public AVMedia k() {
        return this.f;
    }

    public boolean a() {
        return true;
    }

    public String b() {
        return this.d;
    }

    public DynamicAdInfo i() {
        return this.g;
    }

    public AVMediaPlaylist a(DynamicAdInfo dynamicAdInfo, x<String> xVar) {
        if (dynamicAdInfo == null) {
            return this;
        }
        return new MediaEntityPlaylist(this.d, this.e, dynamicAdInfo.a != null ? dynamicAdInfo.a.a((String) xVar.c("")) : null, dynamicAdInfo);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.a(parcel, i);
        parcel.writeString(this.d);
        parcel.writeParcelable(this.e, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeParcelable(this.g, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        MediaEntityPlaylist mediaEntityPlaylist = (MediaEntityPlaylist) obj;
        if (ObjectUtils.a(mediaEntityPlaylist.d, this.d) && ObjectUtils.a(mediaEntityPlaylist.e, this.e) && ObjectUtils.a(mediaEntityPlaylist.f, this.f)) {
            return ObjectUtils.a(mediaEntityPlaylist.g, this.g);
        }
        return false;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + ObjectUtils.a(new Object[]{this.d, this.e, this.f, this.g});
    }
}
