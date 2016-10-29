package com.twitter.android.moments.ui.animation;

import com.twitter.util.h;
import cyw;
import java.io.File;

/* compiled from: Twttr */
class b implements cyw<File, Boolean> {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public Boolean a(File file) {
        h.c();
        return Boolean.valueOf(file.exists());
    }
}
