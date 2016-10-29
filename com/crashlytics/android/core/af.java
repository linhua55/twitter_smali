package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: Twttr */
class af implements FilenameFilter {
    final /* synthetic */ String a;
    final /* synthetic */ aa b;

    af(aa aaVar, String str) {
        this.b = aaVar;
        this.a = str;
    }

    public boolean accept(File file, String str) {
        return str.startsWith(this.a);
    }
}
