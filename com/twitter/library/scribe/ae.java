package com.twitter.library.scribe;

import android.os.Parcel;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.aj;
import java.io.IOException;

/* compiled from: Twttr */
public class ae {
    public final int a;
    public final String b;
    public final String c;
    public final long d;
    public final int e;
    public final boolean f;

    public ae(int i, String str, String str2, long j, int i2, boolean z) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = i2;
        this.f = z;
    }

    public ae(Parcel parcel) {
        boolean z = true;
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readLong();
        this.e = parcel.readInt();
        if (parcel.readByte() != (byte) 1) {
            z = false;
        }
        this.f = z;
    }

    public void a(Parcel parcel) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeLong(this.d);
        parcel.writeInt(this.e);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("photo_count");
        jsonGenerator.b(this.a);
        if (aj.b(this.b)) {
            jsonGenerator.a("content_id");
            jsonGenerator.b(this.b);
        }
        if (aj.b(this.c)) {
            jsonGenerator.a("playlist_url");
            jsonGenerator.b(this.c);
        }
        if (this.d > 0) {
            jsonGenerator.a("publisher_id");
            jsonGenerator.a(this.d);
        }
        if (this.e > 0) {
            jsonGenerator.a("media_type");
            jsonGenerator.b(this.e);
        }
        jsonGenerator.a("dynamic_ads");
        jsonGenerator.a(this.f);
        jsonGenerator.d();
    }
}
