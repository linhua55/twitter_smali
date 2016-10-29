package defpackage;

import android.database.Cursor;
import cgu;
import com.twitter.util.object.ObjectUtils;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cgq */
public class cgq<T extends Cursor> extends cgu<T> implements cgs {
    private final T a;

    public /* synthetic */ Object a(int i) {
        return b(i);
    }

    public cgq(T t) {
        this.a = t;
    }

    public int aU_() {
        return this.a != null ? this.a.getCount() : 0;
    }

    public T b(int i) {
        if (i >= aU_() || this.a == null) {
            return null;
        }
        this.a.moveToPosition(i);
        return this.a;
    }

    public void close() throws IOException {
        if (this.a != null) {
            this.a.close();
        }
    }

    public T a() {
        return this.a;
    }

    public int hashCode() {
        return this.a == null ? 0 : this.a.hashCode();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof cgq) && ObjectUtils.a(((cgq) obj).a(), a()));
    }
}
