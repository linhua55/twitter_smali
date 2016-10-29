package com.twitter.android.moments.ui.animation;

import cyw;
import java.io.File;
import rx.o;

/* compiled from: Twttr */
class j implements cyw<File, o<File>> {
    final /* synthetic */ String a;
    final /* synthetic */ i b;

    j(i iVar, String str) {
        this.b = iVar;
        this.a = str;
    }

    public o<File> a(File file) {
        if (file.exists()) {
            return o.c();
        }
        return this.b.a(this.b.c, this.a, file);
    }
}
