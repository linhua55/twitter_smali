package com.twitter.library.av.playback;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.library.media.util.ac;
import com.twitter.model.av.Partner;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.ObjectUtils;
import defpackage.bpx;
import java.util.Map;

/* compiled from: Twttr */
public class TweetAVDataSource implements AVDataSource {
    public static final Creator<TweetAVDataSource> CREATOR;
    protected final Tweet b;
    private final String c;

    static {
        CREATOR = new ct();
    }

    public TweetAVDataSource(Tweet tweet) {
        this(tweet, null);
    }

    public TweetAVDataSource(Tweet tweet, String str) {
        this.b = tweet;
        this.c = str;
    }

    public TweetAVDataSource(Parcel parcel) {
        this.b = (Tweet) parcel.readParcelable(Tweet.class.getClassLoader());
        this.c = parcel.readString();
    }

    public String a() {
        return String.valueOf(this.b.t);
    }

    public Tweet b() {
        return this.b;
    }

    public ImageSpec l() {
        return be.o(this.b);
    }

    public boolean m() {
        return false;
    }

    public float n() {
        return be.p(this.b);
    }

    public int c() {
        return be.a(this.b);
    }

    public boolean d() {
        return ac.a(this.b);
    }

    public String e() {
        return this.c == null ? be.g(this.b) : this.c;
    }

    public bpx f() {
        return be.f(this.b);
    }

    public Map<String, String> g() {
        return be.l(this.b);
    }

    public Partner h() {
        return be.n(this.b);
    }

    public cv i() {
        return new cu(this.b);
    }

    public String j() {
        return be.q(this.b);
    }

    public boolean k() {
        return this.b.T();
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.c, this.b});
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TweetAVDataSource tweetAVDataSource = (TweetAVDataSource) obj;
        if (ObjectUtils.a(this.b, tweetAVDataSource.b) && ObjectUtils.a(this.c, tweetAVDataSource.c)) {
            return true;
        }
        return false;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.b, i);
        parcel.writeString(this.c);
    }
}
