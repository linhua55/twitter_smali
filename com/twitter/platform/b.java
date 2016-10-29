package com.twitter.platform;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
class b implements FilenameFilter {
    final /* synthetic */ long a;
    final /* synthetic */ a b;

    b(a aVar, long j) {
        this.b = aVar;
        this.a = j;
    }

    public boolean accept(File file, String str) {
        return str.startsWith(a.d(this.a));
    }
}
