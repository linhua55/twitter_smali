package com.facebook.common.references;

import defpackage.bo;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: Twttr */
final class b implements d<Closeable> {
    b() {
    }

    public void a(Closeable closeable) {
        try {
            bo.a(closeable, true);
        } catch (IOException e) {
        }
    }
}
