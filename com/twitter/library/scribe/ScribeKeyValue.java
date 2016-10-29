package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.object.ObjectUtils;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

/* compiled from: Twttr */
public class ScribeKeyValue implements Parcelable {
    public static final Creator<ScribeKeyValue> CREATOR;
    private final String a;
    private final String b;

    static {
        CREATOR = new ab();
    }

    public ScribeKeyValue(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }

    public ScribeKeyValue(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("name", this.a);
        jsonGenerator.a("value", this.b);
        jsonGenerator.d();
    }

    public String toString() {
        Closeable a;
        String stringBuffer;
        Throwable th;
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
        ScribeKeyValue scribeKeyValue = (ScribeKeyValue) obj;
        if (ObjectUtils.a(this.a, scribeKeyValue.a) && ObjectUtils.a(this.b, scribeKeyValue.b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a, this.b});
    }
}
