package com.google.android.gms.internal;

import android.content.Context;
import java.io.File;
import java.util.concurrent.Callable;

class rd implements Callable<File> {
    final /* synthetic */ Context a;
    final /* synthetic */ rc b;

    rd(rc rcVar, Context context) {
        this.b = rcVar;
        this.a = context;
    }

    public File a() {
        return this.a.getCacheDir();
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}
