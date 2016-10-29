package com.twitter.app.common.util;

import android.os.Parcel;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class BaseStateSaver<T> extends StateSaver<T> {
    protected final byte[] a;

    protected BaseStateSaver(T t) {
        this.a = m.a(t, b(t));
    }

    protected BaseStateSaver(Parcel parcel) {
        this.a = new byte[parcel.readInt()];
        parcel.readByteArray(this.a);
    }

    public void a(T t) {
        m.a(this.a, b(t));
    }

    protected final n<T> b(T t) {
        return new k(this, t);
    }

    protected void a(q qVar, T t) throws IOException {
    }

    protected T a(p pVar, T t) throws IOException, ClassNotFoundException {
        return t;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a.length);
        parcel.writeByteArray(this.a);
    }
}
