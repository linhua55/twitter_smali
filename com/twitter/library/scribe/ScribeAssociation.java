package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class ScribeAssociation<T extends ScribeAssociation<T>> implements Parcelable {
    private int a;
    private String b;
    private int c;
    private String d;
    private String e;
    private String f;

    protected ScribeAssociation() {
    }

    protected ScribeAssociation(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.e(String.valueOf(this.a));
        if (this.b != null) {
            jsonGenerator.a("association_id", this.b);
        }
        if (this.c != -1) {
            jsonGenerator.a("association_type", this.c);
        }
        if (this.d != null) {
            jsonGenerator.e("association_namespace");
            jsonGenerator.a("page", this.d);
            if (this.e != null) {
                jsonGenerator.a("section", this.e);
            }
            if (this.f != null) {
                jsonGenerator.a("component", this.f);
            }
            jsonGenerator.d();
        }
        jsonGenerator.d();
    }

    public String a() {
        return this.d;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.f;
    }

    public T a(int i) {
        this.a = i;
        return this;
    }

    public int d() {
        return this.a;
    }

    public T a(String str) {
        this.b = str;
        return this;
    }

    public T a(long j) {
        this.b = String.valueOf(j);
        return this;
    }

    public String e() {
        return this.b;
    }

    public T b(int i) {
        this.c = i;
        return this;
    }

    public T b(String str) {
        this.d = str;
        return this;
    }

    public T c(String str) {
        this.e = str;
        return this;
    }

    public T d(String str) {
        this.f = str;
        return this;
    }
}
