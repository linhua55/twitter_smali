package com.twitter.library.media.util;

import android.support.v4.util.LongSparseArray;
import com.twitter.media.model.MediaFile;
import com.twitter.util.m;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class af {
    public static final long a;
    private static af b;
    private final LongSparseArray<ag> c;

    public af() {
        this.c = new LongSparseArray();
    }

    static {
        a = TimeUnit.SECONDS.toMillis(10);
        b = null;
    }

    public static af a() {
        if (b == null) {
            b = new af();
        }
        return b;
    }

    public static String a(long j, String str) {
        MediaFile a = a().a(j);
        return a != null ? a.a().toString() : str;
    }

    public void a(long j, MediaFile mediaFile) {
        this.c.put(j, new ag(mediaFile));
    }

    public MediaFile a(long j) {
        ag agVar = (ag) this.c.get(j);
        if (agVar != null) {
            if (agVar.b >= m.b()) {
                return agVar.a;
            }
            b(j);
        }
        return null;
    }

    public void b(long j) {
        ag agVar = (ag) this.c.get(j);
        if (agVar != null) {
            MediaFile mediaFile = agVar.a;
            this.c.remove(j);
            mediaFile.c();
        }
    }
}
