package com.twitter.android.av.revenue;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.Tweet;
import defpackage.caw;
import defpackage.cmb;
import defpackage.cmc;

/* compiled from: Twttr */
public class VideoConversationCardData implements Parcelable {
    public static final Creator<VideoConversationCardData> CREATOR;
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final long i;
    public final Tweet j;

    static {
        CREATOR = new h();
    }

    public static VideoConversationCardData a(cmb cmb, long j, Tweet tweet) {
        String str;
        String a = caw.a("cta_one", cmb);
        String a2 = caw.a("cta_one_tweet", cmb);
        String a3 = caw.a("cta_two", cmb);
        String a4 = caw.a("cta_two_tweet", cmb);
        String a5 = caw.a("card_url", cmb);
        String a6 = caw.a("canvas_text", cmb);
        String a7 = caw.a("title", cmb);
        cmc a8 = cmc.a("player_image", cmb);
        if (a8 != null) {
            str = a8.a;
        } else {
            str = null;
        }
        return new i(null).a(a).b(a2).c(a3).d(a4).e(a5).f(a6).g(a7).h(str).a(j).a(tweet).a();
    }

    public VideoConversationCardData(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readLong();
        this.j = (Tweet) parcel.readParcelable(Tweet.class.getClassLoader());
    }

    private VideoConversationCardData(i iVar) {
        this.a = i.a(iVar);
        this.b = i.b(iVar);
        this.c = i.c(iVar);
        this.d = i.d(iVar);
        this.e = i.e(iVar);
        this.f = i.f(iVar);
        this.g = i.g(iVar);
        this.h = i.h(iVar);
        this.i = i.i(iVar);
        this.j = i.j(iVar);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeLong(this.i);
        parcel.writeParcelable(this.j, i);
    }
}
