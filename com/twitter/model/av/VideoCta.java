package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.q;
import com.twitter.util.serialization.n;
import java.util.Map;

/* compiled from: Twttr */
public class VideoCta implements Parcelable, a {
    public static final Creator<VideoCta> CREATOR;
    public static final n<VideoCta> a;
    public static final String b;
    private final VideoCtaType c;
    private final Map<String, String> d;

    static {
        a = new w();
        CREATOR = new v();
        b = VideoCta.class.getName() + ".APP_NAME";
    }

    public VideoCta(VideoCtaType videoCtaType, Map<String, String> map) {
        this.c = videoCtaType;
        this.d = map;
    }

    public VideoCta(String str, Map<String, String> map) {
        this.c = VideoCtaType.a(str);
        this.d = map;
    }

    public VideoCta(Parcel parcel) {
        this.c = VideoCtaType.valueOf(parcel.readString());
        this.d = q.a(parcel);
    }

    public VideoCtaType a() {
        return this.c;
    }

    public String b() {
        return this.d != null ? (String) this.d.get("url") : null;
    }

    public String c() {
        return this.d != null ? (String) this.d.get("id") : null;
    }

    public String d() {
        return this.d != null ? (String) this.d.get(b) : null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VideoCta videoCta = (VideoCta) obj;
        if (ObjectUtils.a(this.d, videoCta.d) && ObjectUtils.a(this.c, videoCta.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.b(this.c) * 31) + ObjectUtils.b(this.d);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c.name());
        q.a(parcel, this.d);
    }
}
