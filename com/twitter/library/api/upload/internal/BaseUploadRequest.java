package com.twitter.library.api.upload.internal;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.t;
import com.twitter.media.model.MediaType;
import java.net.URI;

/* compiled from: Twttr */
public abstract class BaseUploadRequest extends b<c> {
    protected final Uri a;
    protected final MediaType b;
    private e c;

    /* compiled from: Twttr */
    public class BuilderInitException extends Exception {
        private final int mErrorCode;

        public /* synthetic */ Throwable getCause() {
            return b();
        }

        public BuilderInitException(int i, Exception exception) {
            super(exception);
            this.mErrorCode = i;
        }

        public int a() {
            return this.mErrorCode;
        }

        public Exception b() {
            return (Exception) super.getCause();
        }
    }

    protected abstract void a(e eVar) throws BuilderInitException;

    protected BaseUploadRequest(Context context, String str, ab abVar, Uri uri, MediaType mediaType) {
        super(context, str, abVar);
        this.a = uri;
        this.b = mediaType;
        k kVar = new k();
        kVar.a(new t()).a(new l(context)).a(new f());
        a(kVar);
    }

    protected boolean b(aa aaVar) {
        e K = K();
        if (this.b == MediaType.d) {
            K.b("X-Media-Type", MimeTypes.VIDEO_MP4);
        } else if (this.b == MediaType.f) {
            K.b("X-Media-Type", MimeTypes.VIDEO_MP4);
            K.b("X-Media-Cropping", TtmlNode.CENTER);
        }
        K.b(URI.create(an.a(this.p).d).getHost());
        K.a("1.1");
        K.a("media", "upload");
        K.a(RequestMethod.b);
        try {
            a(K);
            this.c = K;
            return true;
        } catch (BuilderInitException e) {
            aaVar.a(e.a(), e.b());
            return false;
        }
    }

    protected final d a() {
        return this.c.a();
    }
}
