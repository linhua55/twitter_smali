package com.twitter.library.scribe;

import android.os.Parcel;
import android.util.SparseArray;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.j;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public abstract class MapScribeItem extends ScribeItem {
    private final SparseArray<Object> a;

    protected abstract String a(int i);

    protected MapScribeItem(int i) {
        this.a = new SparseArray(i);
    }

    protected MapScribeItem(Parcel parcel) {
        this.a = parcel.readSparseArray(ScribeSection.class.getClassLoader());
    }

    public final void a(JsonGenerator jsonGenerator) throws IOException {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            int keyAt = this.a.keyAt(i);
            Object valueAt = this.a.valueAt(i);
            if (valueAt != null) {
                jsonGenerator.a(a(keyAt));
                a(jsonGenerator, valueAt);
            }
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSparseArray(this.a);
    }

    protected void a(int i, Object obj) {
        this.a.put(i, obj);
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
        } else if (obj instanceof ScribeItem) {
            ((ScribeItem) obj).b(jsonGenerator);
        } else if (obj instanceof List) {
            jsonGenerator.a();
            for (Object a : (List) obj) {
                a(jsonGenerator, a);
            }
            jsonGenerator.b();
        } else {
            j.a(false, "unsupported scribe value type " + obj.getClass());
        }
    }
}
