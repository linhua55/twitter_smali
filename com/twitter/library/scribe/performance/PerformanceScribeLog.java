package com.twitter.library.scribe.performance;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import aru;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.util.aq;
import defpackage.arg;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
public class PerformanceScribeLog extends ScribeLog<PerformanceScribeLog> {
    public static final Creator<PerformanceScribeLog> CREATOR;
    int e;
    private final String f;
    private String g;
    private long h;
    private long i;

    static {
        CREATOR = new b();
    }

    public PerformanceScribeLog(String str, long j) {
        super(j);
        h("perftown");
        this.f = str;
    }

    public PerformanceScribeLog(Parcel parcel) {
        super(parcel);
        h("perftown");
        this.f = parcel.readString();
        this.e = parcel.readInt();
        this.h = parcel.readLong();
        this.g = parcel.readString();
        this.i = parcel.readLong();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f);
        parcel.writeInt(this.e);
        parcel.writeLong(this.h);
        parcel.writeString(this.g);
        parcel.writeLong(this.i);
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        b(jsonGenerator);
        jsonGenerator.a("product", d());
        jsonGenerator.a("duration_ms", this.h);
        jsonGenerator.a("description", this.f);
        if (this.g != null) {
            jsonGenerator.a(TtmlNode.TAG_METADATA, this.g);
        }
        jsonGenerator.a("profiler_type", this.e);
        if (this.e == 2 || this.e == 3) {
            jsonGenerator.a("event_value", this.i);
        }
    }

    private void b(JsonGenerator jsonGenerator) throws IOException {
        arg d = aru.b().d();
        jsonGenerator.e("device_info");
        if (d.a != 0) {
            jsonGenerator.a("cpu_cores", d.a);
        }
        jsonGenerator.a("available_heap", d.b);
        jsonGenerator.a("display_info", d.c);
        jsonGenerator.d();
    }

    public int describeContents() {
        return 0;
    }

    public PerformanceScribeLog d(long j) {
        this.e = 0;
        this.h = j;
        return this;
    }

    public PerformanceScribeLog a(long j, long j2) {
        this.e = 2;
        this.h = j;
        this.i = j2;
        return this;
    }

    public PerformanceScribeLog b(long j, long j2) {
        this.e = 3;
        this.h = j;
        this.i = j2;
        return this;
    }

    public PerformanceScribeLog n(String str) {
        this.g = str;
        return this;
    }

    public PerformanceScribeLog a(Map<String, ?> map) {
        this.g = aq.a(map);
        return this;
    }
}
