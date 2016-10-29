package com.twitter.library.network;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.library.scribe.ScribeLog;
import defpackage.bce;
import defpackage.bch;
import java.io.IOException;

/* compiled from: Twttr */
public class SecurityScribeLog extends ScribeLog<SecurityScribeLog> {
    public static final Creator<SecurityScribeLog> CREATOR;
    private final int e;
    private final ServiceEvaluatorData[] f;
    private final int g;
    private final String h;
    private final long i;
    private final boolean j;
    private final int k;

    /* compiled from: Twttr */
    class ServiceEvaluatorData implements Parcelable {
        public static final Creator<ServiceEvaluatorData> CREATOR;
        private final String a;
        private final String b;
        private final ServiceMetricData[] c;

        static {
            CREATOR = new ai();
        }

        ServiceEvaluatorData(bce bce) {
            this.a = bce.c();
            this.b = bce.b();
            bch[] d = bce.d();
            this.c = new ServiceMetricData[d.length];
            for (int i = 0; i < d.length; i++) {
                this.c[i] = new ServiceMetricData(d[i]);
            }
        }

        protected ServiceEvaluatorData(Parcel parcel) {
            this.a = parcel.readString();
            this.b = parcel.readString();
            this.c = (ServiceMetricData[]) parcel.createTypedArray(ServiceMetricData.CREATOR);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeString(this.b);
            parcel.writeTypedArray(this.c, i);
        }
    }

    /* compiled from: Twttr */
    class ServiceMetricData implements Parcelable {
        public static final Creator<ServiceMetricData> CREATOR;
        final String a;
        final String b;

        static {
            CREATOR = new aj();
        }

        protected ServiceMetricData(Parcel parcel) {
            this.a = parcel.readString();
            this.b = parcel.readString();
        }

        ServiceMetricData(bch bch) {
            this.a = bch.c();
            this.b = bch.a();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeString(this.b);
        }
    }

    static {
        CREATOR = new ag();
    }

    private SecurityScribeLog(ah ahVar) {
        super(ahVar.b);
        this.g = ahVar.d;
        this.h = ahVar.e;
        this.f = new ServiceEvaluatorData[ahVar.c.size()];
        int i = 0;
        for (bce serviceEvaluatorData : ahVar.c) {
            int i2 = i + 1;
            this.f[i] = new ServiceEvaluatorData(serviceEvaluatorData);
            i = i2;
        }
        this.e = ahVar.a;
        this.i = ahVar.f;
        this.j = ahVar.g;
        this.k = ahVar.h;
        b(new String[]{"app", null, "features", null, "security_details"});
    }

    public SecurityScribeLog(Parcel parcel) {
        super(parcel);
        this.e = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readString();
        this.f = (ServiceEvaluatorData[]) parcel.createTypedArray(ServiceEvaluatorData.CREATOR);
        if (parcel.dataAvail() > 0) {
            this.i = parcel.readLong();
            this.j = parcel.readInt() != 0;
            this.k = parcel.readInt();
            return;
        }
        this.i = -1;
        this.j = false;
        this.k = -1;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.e);
        parcel.writeInt(this.g);
        parcel.writeString(this.h);
        parcel.writeTypedArray(this.f, i);
        parcel.writeLong(this.i);
        parcel.writeInt(this.j ? 1 : 0);
        parcel.writeInt(this.k);
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a("custom_json_payload", g());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String g() {
        /*
        r4 = this;
        r1 = new java.io.StringWriter;
        r1.<init>();
        r0 = 0;
        r2 = com.twitter.library.api.at.a;	 Catch:{ IOException -> 0x001a, all -> 0x001f }
        r0 = r2.a(r1);	 Catch:{ IOException -> 0x001a, all -> 0x001f }
        r4.b(r0);	 Catch:{ IOException -> 0x001a, all -> 0x0027 }
        r0.flush();	 Catch:{ IOException -> 0x001a, all -> 0x0027 }
        cvi.a(r0);
    L_0x0015:
        r0 = r1.toString();
        return r0;
    L_0x001a:
        r2 = move-exception;
        cvi.a(r0);
        goto L_0x0015;
    L_0x001f:
        r1 = move-exception;
        r3 = r1;
        r1 = r0;
        r0 = r3;
    L_0x0023:
        cvi.a(r1);
        throw r0;
    L_0x0027:
        r1 = move-exception;
        r3 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0023;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.network.SecurityScribeLog.g():java.lang.String");
    }

    private void b(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("play_services_available", this.e);
        jsonGenerator.a("play_services_version", this.g);
        jsonGenerator.a("play_services_package", this.h);
        jsonGenerator.a("provider_install_millis", this.i);
        jsonGenerator.a("provider_install_success", this.j);
        jsonGenerator.a("provider_install_error", this.k);
        jsonGenerator.d("providers");
        for (ServiceEvaluatorData serviceEvaluatorData : this.f) {
            jsonGenerator.c();
            jsonGenerator.a("name", serviceEvaluatorData.a);
            jsonGenerator.a("score", serviceEvaluatorData.b);
            jsonGenerator.d("metrics");
            for (ServiceMetricData serviceMetricData : serviceEvaluatorData.c) {
                jsonGenerator.c();
                jsonGenerator.a("metric", serviceMetricData.a);
                jsonGenerator.a("value", serviceMetricData.b);
                jsonGenerator.d();
            }
            jsonGenerator.b();
            jsonGenerator.d();
        }
        jsonGenerator.b();
        jsonGenerator.d();
    }

    public int describeContents() {
        return 0;
    }
}
