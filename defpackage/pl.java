package defpackage;

import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: pl */
abstract class pl {
    final String g;
    final boolean h;
    final boolean i;

    abstract void a(a aVar, Object obj) throws IOException, IllegalAccessException;

    abstract void a(c cVar, Object obj) throws IOException, IllegalAccessException;

    abstract boolean a(Object obj) throws IOException, IllegalAccessException;

    protected pl(String str, boolean z, boolean z2) {
        this.g = str;
        this.h = z;
        this.i = z2;
    }
}
