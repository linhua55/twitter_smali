package com.twitter.media.model;

import android.content.Context;
import android.net.Uri;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
final class h implements Callable<T> {
    final /* synthetic */ Context a;
    final /* synthetic */ Uri b;
    final /* synthetic */ MediaType c;

    h(Context context, Uri uri, MediaType mediaType) {
        this.a = context;
        this.b = uri;
        this.c = mediaType;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public T a() throws Exception {
        return MediaFile.a(this.a, this.b, this.c);
    }
}
