package com.twitter.android.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.d;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class TopicView$TopicData implements Parcelable {
    public static final Creator<TopicView$TopicData> CREATOR;
    public String a;
    public int b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public int k;
    public long l;
    public byte[] m;

    static {
        CREATOR = new fe();
    }

    public TopicView$TopicData(TwitterTopic twitterTopic) {
        this(twitterTopic.bg_(), twitterTopic.d().b, twitterTopic.e(), twitterTopic.g(), twitterTopic.i(), twitterTopic.j(), twitterTopic.f(), twitterTopic.k(), twitterTopic.h(), (int) twitterTopic.m(), twitterTopic.n(), m.a(twitterTopic.a(twitterTopic.d().b), d.a), twitterTopic.l());
    }

    public TopicView$TopicData(String str, int i, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, long j, byte[] bArr, String str9) {
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = str8;
        this.k = i2;
        this.l = j;
        this.m = bArr;
        this.j = str9;
    }

    public TopicView$TopicData(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.k = parcel.readInt();
        this.l = parcel.readLong();
        this.j = parcel.readString();
        int readInt = parcel.readInt();
        if (readInt > 0) {
            this.m = new byte[readInt];
            parcel.readByteArray(this.m);
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeInt(this.k);
        parcel.writeLong(this.l);
        parcel.writeString(this.j);
        if (this.m != null) {
            parcel.writeInt(this.m.length);
            parcel.writeByteArray(this.m);
            return;
        }
        parcel.writeInt(-1);
    }
}
