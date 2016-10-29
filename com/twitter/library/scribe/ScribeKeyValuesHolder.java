package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public class ScribeKeyValuesHolder implements Parcelable {
    public static final Creator<ScribeKeyValuesHolder> CREATOR;
    private List<ScribeKeyValue> a;

    static {
        CREATOR = new ac();
    }

    public ScribeKeyValuesHolder(Parcel parcel) {
        this.a = new ArrayList();
        parcel.readList(this.a, ScribeKeyValue.class.getClassLoader());
    }

    public ScribeKeyValuesHolder(List<ScribeKeyValue> list) {
        this.a = new ArrayList();
        this.a = list;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.a);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.d("binding_values");
        for (ScribeKeyValue a : this.a) {
            a.a(jsonGenerator);
        }
        jsonGenerator.b();
        jsonGenerator.d();
    }

    public String toString() {
        String stringBuffer;
        Throwable th;
        Closeable a;
        try {
            Writer stringWriter = new StringWriter();
            a = new JsonFactory().a(stringWriter);
            try {
                a(a);
                a.flush();
                stringBuffer = stringWriter.getBuffer().toString();
                cvi.a(a);
            } catch (IOException e) {
                try {
                    stringBuffer = TtmlNode.ANONYMOUS_REGION_ID;
                    cvi.a(a);
                    return stringBuffer;
                } catch (Throwable th2) {
                    th = th2;
                    cvi.a(a);
                    throw th;
                }
            }
        } catch (IOException e2) {
            a = null;
            stringBuffer = TtmlNode.ANONYMOUS_REGION_ID;
            cvi.a(a);
            return stringBuffer;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            a = null;
            th = th4;
            cvi.a(a);
            throw th;
        }
        return stringBuffer;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((ScribeKeyValuesHolder) obj).a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.a.toArray());
    }
}
