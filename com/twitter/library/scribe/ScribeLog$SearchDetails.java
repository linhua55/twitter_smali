package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: Twttr */
public class ScribeLog$SearchDetails implements Parcelable {
    public static final Creator<ScribeLog$SearchDetails> CREATOR;
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;

    static {
        CREATOR = new ad();
    }

    public ScribeLog$SearchDetails(String str, String str2, String str3, boolean z, boolean z2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
        this.e = z2;
    }

    public ScribeLog$SearchDetails(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.e = z2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        if (this.d) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (!this.e) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.e("search_details");
        jsonGenerator.a("query", this.a);
        jsonGenerator.a("result_filter", this.b);
        jsonGenerator.a("social_filter", this.d ? "following" : "all");
        if (this.c != null) {
            jsonGenerator.a("module_type", this.c);
        }
        if (this.e) {
            jsonGenerator.a("near", "me");
        }
        jsonGenerator.d();
    }
}
