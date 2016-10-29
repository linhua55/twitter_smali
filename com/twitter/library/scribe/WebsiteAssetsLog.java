package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class WebsiteAssetsLog implements Parcelable {
    public static final Creator<WebsiteAssetsLog> CREATOR;
    final String a;
    final String b;
    final String c;
    final String d;
    final long e;
    final String f;
    final ArrayList<WebsiteAsset> g;

    /* compiled from: Twttr */
    final class WebsiteAsset implements Parcelable {
        public static final Creator<WebsiteAsset> CREATOR;
        final String a;
        final long b;
        final long c;
        final String d;
        final boolean e;

        static {
            CREATOR = new ba();
        }

        WebsiteAsset(String str, long j, long j2, String str2, boolean z) {
            this.a = str;
            this.b = j;
            this.c = j2;
            this.d = str2;
            this.e = z;
        }

        WebsiteAsset(Parcel parcel) {
            boolean z = true;
            this.a = parcel.readString();
            this.b = parcel.readLong();
            this.c = parcel.readLong();
            this.d = parcel.readString();
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.e = z;
        }

        public void a(JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.c();
            jsonGenerator.a("asset_type", this.d);
            jsonGenerator.a("time_to_load", this.b);
            jsonGenerator.a("asset_size", this.c);
            jsonGenerator.a("asset_url", this.a);
            jsonGenerator.a("asset_prefetched", this.e);
            jsonGenerator.d();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeLong(this.b);
            parcel.writeLong(this.c);
            parcel.writeString(this.d);
            parcel.writeInt(this.e ? 1 : 0);
        }
    }

    static {
        CREATOR = new az();
    }

    public WebsiteAssetsLog(String str, String str2, String str3, String str4, long j, String str5) {
        this.g = new ArrayList();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = j;
        this.f = str5;
    }

    public WebsiteAssetsLog(Parcel parcel) {
        this.g = new ArrayList();
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readLong();
        this.f = parcel.readString();
        parcel.readTypedList(this.g, WebsiteAsset.CREATOR);
    }

    public void a(String str, long j, long j2, String str2, boolean z) {
        this.g.add(new WebsiteAsset(str, j, j2, str2, z));
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        if (this.a != null) {
            jsonGenerator.a("website_url", this.a);
        }
        if (this.b != null) {
            jsonGenerator.a("website_dest_url", this.b);
        }
        if (this.c != null) {
            jsonGenerator.a("website_assets", this.c);
        }
        if (this.f != null) {
            jsonGenerator.a("promoted_id", this.f);
        }
        if (this.d != null) {
            jsonGenerator.a("card_url", this.d);
        }
        if (this.e != 0) {
            jsonGenerator.a("card_id", this.e);
        }
        if (this.f != null) {
            jsonGenerator.a("promoted_id", this.f);
        }
        if (this.g != null && this.g.size() > 0) {
            jsonGenerator.d("items");
            Iterator it = this.g.iterator();
            while (it.hasNext()) {
                ((WebsiteAsset) it.next()).a(jsonGenerator);
            }
            jsonGenerator.b();
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeLong(this.e);
        parcel.writeString(this.f);
        parcel.writeTypedList(this.g);
    }
}
