package com.twitter.library.scribe.performance;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;

/* compiled from: Twttr */
public class MemoryPerformanceScribeLog extends PerformanceScribeLog {
    public static final Creator<MemoryPerformanceScribeLog> CREATOR;
    private final HashMap<String, Number> f;

    static {
        CREATOR = new a();
    }

    public MemoryPerformanceScribeLog(Parcel parcel) {
        super(parcel);
        this.f = parcel.readHashMap(HashMap.class.getClassLoader());
    }

    public MemoryPerformanceScribeLog(String str, long j, HashMap<String, Number> hashMap) {
        super(str, j);
        this.f = hashMap;
        this.e = 4;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeMap(this.f);
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        super.a(jsonGenerator);
        jsonGenerator.e("mem_metrics");
        for (String str : this.f.keySet()) {
            jsonGenerator.a(str, new BigDecimal(((Number) this.f.get(str)).toString()));
        }
        jsonGenerator.d();
    }
}
