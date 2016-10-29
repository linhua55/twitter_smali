package com.twitter.library.media.manager;

import android.content.Context;
import com.twitter.internal.android.service.d;
import com.twitter.internal.network.i;
import com.twitter.library.network.j;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import cvi;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public class k extends x implements i {
    private final String a;
    private final MediaType b;
    private final d c;
    private MediaFile g;

    public k(Context context, String str, MediaType mediaType) {
        super(context, "AnimatedGifDownloadRequest");
        this.c = new d();
        this.a = str;
        this.b = mediaType;
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        File a = cvi.a(inputStream, this.b.extension);
        this.g = a != null ? MediaFile.a(a, MediaType.c) : null;
    }

    public void a(com.twitter.internal.network.k kVar) {
    }

    protected void a_(aa aaVar) {
        aaVar.a(new j(this.p, this.a).a(this).a(this.c).e(true).a(45000).a().c());
    }

    public MediaFile a() {
        return this.g;
    }
}
