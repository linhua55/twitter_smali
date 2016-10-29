package com.twitter.android;

import android.app.Activity;
import com.twitter.util.concurrent.n;
import csv;
import java.io.File;

/* compiled from: Twttr */
class aw implements n<File> {
    final /* synthetic */ Activity a;
    final /* synthetic */ av b;

    aw(av avVar, Activity activity) {
        this.b = avVar;
        this.a = activity;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public File a() {
        return csv.a(this.a);
    }
}
