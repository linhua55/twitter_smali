package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.model.moments.aj;
import com.twitter.util.ab;
import defpackage.cgl;
import java.io.IOException;

/* compiled from: Twttr */
public class MomentScribeDetails implements Parcelable {
    public static final Creator<MomentScribeDetails> CREATOR;
    public final long a;
    public final long b;
    public final String c;
    public final Boolean d;
    public final Transition e;
    public final Metadata f;
    public final Engagement g;
    public final Dismiss h;
    public final long i;
    public final aj j;

    static {
        CREATOR = new i();
    }

    private MomentScribeDetails(j jVar) {
        this.a = jVar.a;
        this.b = jVar.b;
        this.c = jVar.c;
        this.d = jVar.d;
        this.e = jVar.e;
        this.f = jVar.f;
        this.g = jVar.g;
        this.h = jVar.h;
        this.i = jVar.i;
        this.j = jVar.j;
    }

    private MomentScribeDetails(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = parcel.readString();
        this.d = (Boolean) parcel.readSerializable();
        this.e = (Transition) parcel.readParcelable(Transition.class.getClassLoader());
        this.f = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.g = (Engagement) parcel.readParcelable(Engagement.class.getClassLoader());
        this.h = (Dismiss) parcel.readParcelable(Dismiss.class.getClassLoader());
        this.i = parcel.readLong();
        this.j = (aj) ab.a(parcel, aj.a);
    }

    static MomentScribeDetails a(long j, cgl cgl) {
        j jVar = new j();
        jVar.b(j);
        Object a = cgl.a("id");
        if (!TextUtils.isEmpty(a)) {
            jVar.a(Long.parseLong(a));
        }
        return (MomentScribeDetails) jVar.q();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeString(this.c);
        parcel.writeSerializable(this.d);
        parcel.writeParcelable(this.e, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeParcelable(this.g, i);
        parcel.writeParcelable(this.h, i);
        parcel.writeLong(this.i);
        ab.a(parcel, this.j, aj.a);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        if (this.g != null) {
            jsonGenerator.a("moment_engagement");
            this.g.a(jsonGenerator);
        }
        if (this.d != null) {
            jsonGenerator.a("is_moment_followed", this.d.booleanValue());
        }
        if (this.f != null) {
            jsonGenerator.a("moment_metadata");
            this.f.a(jsonGenerator);
        }
        if (a(this.a)) {
            jsonGenerator.a("moment_id", this.a);
        }
        if (this.e != null) {
            jsonGenerator.a("moment_transition");
            this.e.a(jsonGenerator);
        }
        if (a(this.b)) {
            jsonGenerator.a("tweet_id", this.b);
        }
        if (this.c != null) {
            jsonGenerator.a("guide_category_id", this.c);
        }
        if (this.h != null) {
            jsonGenerator.a("moment_dismiss");
            this.h.a(jsonGenerator);
        }
        if (a(this.i)) {
            jsonGenerator.a("impression_id", this.i);
        }
        if (this.j != null) {
            jsonGenerator.a("context_scribe_info");
            this.j.a(jsonGenerator);
        }
        jsonGenerator.d();
    }

    public static boolean a(long j) {
        return j != Long.MIN_VALUE;
    }
}
