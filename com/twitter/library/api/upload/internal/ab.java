package com.twitter.library.api.upload.internal;

import android.content.Context;
import android.net.Uri;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import defpackage.cjp;

/* compiled from: Twttr */
public abstract class ab extends BaseUploadRequest {
    private ac c;
    protected final boolean g;
    private cjp h;

    protected ab(Context context, String str, com.twitter.library.service.ab abVar, Uri uri, MediaType mediaType, boolean z) {
        super(context, str, abVar, uri, mediaType);
        this.g = z;
    }

    protected ab(Context context, String str, com.twitter.library.service.ab abVar, MediaFile mediaFile, boolean z) {
        this(context, str, abVar, mediaFile.a(), mediaFile.f, z);
    }

    protected c f() {
        return v.a(cjp.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        if (cVar != null) {
            this.h = (cjp) ((t) cVar).b();
        }
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        if (this.c != null) {
            this.c.a(this.h, abVar);
        }
    }

    public void a(ac acVar) {
        this.c = acVar;
    }
}
