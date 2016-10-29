package com.twitter.android;

import android.content.Intent;
import android.graphics.Bitmap;
import java.io.File;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class ax implements Callable<Intent> {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ boolean d;
    final /* synthetic */ Bitmap e;
    final /* synthetic */ File f;
    final /* synthetic */ av g;

    ax(av avVar, String str, String str2, String str3, boolean z, Bitmap bitmap, File file) {
        this.g = avVar;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
        this.e = bitmap;
        this.f = file;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Intent a() throws Exception {
        return av.a(this.g, this.a, this.b, this.c, this.d, this.e, this.f);
    }
}
