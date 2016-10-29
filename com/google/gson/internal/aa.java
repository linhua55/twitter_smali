package com.google.gson.internal;

import com.google.gson.n;
import com.google.gson.stream.c;
import java.io.IOException;
import java.io.Writer;
import pr;

/* compiled from: Twttr */
public final class aa {
    public static void a(n nVar, c cVar) throws IOException {
        pr.P.write(cVar, nVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new ac(null);
    }
}
