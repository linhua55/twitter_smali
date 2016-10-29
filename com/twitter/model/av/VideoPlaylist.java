package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.collection.x;
import java.util.Map;

@Deprecated
/* compiled from: Twttr */
public class VideoPlaylist extends AVMediaPlaylist {
    public static final Creator<VideoPlaylist> CREATOR;
    private final Video d;
    private final Video e;
    private final DynamicAdInfo f;

    static {
        CREATOR = new x();
    }

    private VideoPlaylist(Parcel parcel) {
        super(parcel);
        this.d = (Video) parcel.readParcelable(Video.class.getClassLoader());
        this.e = (Video) parcel.readParcelable(Video.class.getClassLoader());
        this.f = (DynamicAdInfo) parcel.readParcelable(DynamicAd.class.getClassLoader());
    }

    public VideoPlaylist(Video[] videoArr, int i, Map<String, String> map, String str, DynamicAdInfo dynamicAdInfo) {
        super(map, i, str);
        this.d = b(videoArr);
        this.e = a(videoArr);
        this.f = dynamicAdInfo;
    }

    private static Video a(Video[] videoArr) {
        if (videoArr == null || videoArr.length < 1) {
            return null;
        }
        return videoArr.length > 1 ? videoArr[1] : videoArr[0];
    }

    private static Video b(Video[] videoArr) {
        if (videoArr == null || videoArr.length < 2) {
            return null;
        }
        return videoArr[0];
    }

    private VideoPlaylist(Video video, Video video2, int i, Map<String, String> map, String str, DynamicAdInfo dynamicAdInfo) {
        super(map, i, str);
        this.d = video2;
        this.e = video;
        this.f = dynamicAdInfo;
    }

    public boolean a() {
        return this.a == 0 && l();
    }

    public AVMedia c() {
        return this.e;
    }

    public AVMedia k() {
        return this.d;
    }

    public String b() {
        if (this.c != null) {
            return (String) this.c.get("Network-Type");
        }
        return null;
    }

    public DynamicAdInfo i() {
        return this.f;
    }

    protected boolean l() {
        return (this.d == null && this.e == null) ? false : true;
    }

    public int describeContents() {
        return 0;
    }

    public AVMediaPlaylist a(DynamicAdInfo dynamicAdInfo, x<String> xVar) {
        Video a;
        if (dynamicAdInfo.a != null) {
            a = dynamicAdInfo.a.a((String) xVar.c(BuildConfig.VERSION_NAME));
        } else {
            a = null;
        }
        return (AVMediaPlaylist) new y(this, null).a(dynamicAdInfo).a(a).q();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.a(parcel, i);
        parcel.writeParcelable(this.d, i);
        parcel.writeParcelable(this.e, i);
        parcel.writeParcelable(this.f, i);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        VideoPlaylist videoPlaylist = (VideoPlaylist) obj;
        if (this.d != null) {
            if (!this.d.equals(videoPlaylist.d)) {
                return false;
            }
        } else if (videoPlaylist.d != null) {
            return false;
        }
        if (this.e != null) {
            if (!this.e.equals(videoPlaylist.e)) {
                return false;
            }
        } else if (videoPlaylist.e != null) {
            return false;
        }
        if (this.f != null) {
            z = this.f.equals(videoPlaylist.f);
        } else if (videoPlaylist.f != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = super.hashCode() * 31;
        if (this.d != null) {
            hashCode = this.d.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.e != null) {
            hashCode = this.e.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.f != null) {
            i = this.f.hashCode();
        }
        return hashCode + i;
    }
}
