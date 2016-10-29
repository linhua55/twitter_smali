package com.twitter.media.request;

import android.content.Context;
import aob;
import com.twitter.util.object.b;
import java.io.File;

/* compiled from: Twttr */
public interface ImageRequester {
    public static final ImageRequester a;

    @aob
    /* compiled from: Twttr */
    public interface Factory extends b<Context, ImageRequester> {
    }

    a a();

    void a(String str);

    boolean a(a aVar);

    File b(a aVar);

    void b(boolean z);

    boolean b();

    boolean c();

    static {
        a = new e();
    }
}
