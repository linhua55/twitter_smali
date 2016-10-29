package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public abstract class ScribeSection implements Parcelable {
    private final String a;
    private final SparseArray<Object> b;

    protected abstract String a(int i);

    protected ScribeSection(String str, int i) {
        this.a = str;
        this.b = new SparseArray(i);
    }

    protected ScribeSection(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readSparseArray(ScribeSection.class.getClassLoader());
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        String a = a();
        if (a == null) {
            b(jsonGenerator);
            return;
        }
        jsonGenerator.a(a);
        jsonGenerator.c();
        b(jsonGenerator);
        jsonGenerator.d();
    }

    protected String a() {
        return this.a;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeSparseArray(this.b);
    }

    public int describeContents() {
        return 0;
    }

    protected void a(int i, Object obj) {
        this.b.put(i, obj);
    }

    private void b(JsonGenerator jsonGenerator) throws IOException {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            int keyAt = this.b.keyAt(i);
            Object valueAt = this.b.valueAt(i);
            if (valueAt != null) {
                jsonGenerator.a(a(keyAt));
                a(jsonGenerator, valueAt);
            }
        }
    }

    private void a(JsonGenerator jsonGenerator, Object obj) throws IOException {
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                jsonGenerator.b(number.intValue());
            } else if (number instanceof Long) {
                jsonGenerator.a(number.longValue());
            } else {
                jsonGenerator.a(number.doubleValue());
            }
        } else if (obj instanceof String) {
            jsonGenerator.b((String) obj);
        } else if (obj instanceof Boolean) {
            jsonGenerator.a(((Boolean) obj).booleanValue());
        } else if (obj instanceof ScribeSection) {
            jsonGenerator.c();
            ((ScribeSection) obj).b(jsonGenerator);
            jsonGenerator.d();
        } else if (obj instanceof ArrayList) {
            jsonGenerator.a();
            Iterator it = ((ArrayList) obj).iterator();
            while (it.hasNext()) {
                a(jsonGenerator, it.next());
            }
            jsonGenerator.b();
        } else {
            j.a(false, "unsupported scribe value type " + obj.getClass());
        }
    }
}
