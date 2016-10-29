package com.twitter.android.av.revenue;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import byy;
import defpackage.caw;
import defpackage.cmb;
import defpackage.cmc;

/* compiled from: Twttr */
public class VideoAppCardData implements Parcelable {
    public static final Creator<VideoAppCardData> CREATOR;
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;

    static {
        CREATOR = new a();
    }

    public static VideoAppCardData a(cmb cmb) {
        String str;
        String str2 = null;
        String a = caw.a("app_category", cmb);
        cmc a2 = cmc.a("app_icon", cmb);
        String a3 = caw.a("app_star_rating", cmb);
        String a4 = caw.a("app_num_ratings", cmb);
        String a5 = caw.a("title", cmb);
        String a6 = caw.a("app_id", cmb);
        byy a7 = byy.a("app_url", "app_url_resolved", cmb);
        String a8 = caw.a("card_url", cmb);
        cmc a9 = cmc.a("player_image", cmb);
        if (a9 != null) {
            str = a9.a;
        } else {
            str = null;
        }
        String a10 = caw.a("cta_key", cmb);
        b c = new b(null).b(a5).d(a3).e(a4).f(a6).c(a);
        if (a2 != null) {
            a = a2.a;
        } else {
            a = null;
        }
        b h = c.h(a);
        if (a7 != null) {
            str2 = a7.b();
        }
        return h.g(str2).a(str).i(a8).j(a10).a();
    }

    public VideoAppCardData(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
    }

    private VideoAppCardData(b bVar) {
        this.a = b.a(bVar);
        this.b = b.b(bVar);
        this.c = b.c(bVar);
        this.d = b.d(bVar);
        this.e = b.e(bVar);
        this.f = b.f(bVar);
        this.g = b.g(bVar);
        this.h = b.h(bVar);
        this.i = b.i(bVar);
        this.j = b.j(bVar);
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
        parcel.writeString(this.i);
        parcel.writeString(this.j);
    }
}
