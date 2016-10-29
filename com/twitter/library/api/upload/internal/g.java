package com.twitter.library.api.upload.internal;

import android.content.Context;
import com.twitter.library.api.as;
import com.twitter.library.api.upload.internal.BaseUploadRequest.BuilderInitException;
import com.twitter.library.network.m;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.media.model.MediaFile;
import com.twitter.util.aj;
import org.apache.http.HttpEntity;

/* compiled from: Twttr */
public class g extends BaseUploadRequest {
    private final as c;
    private long g;

    protected /* synthetic */ c f() {
        return e();
    }

    public g(Context context, String str, ab abVar, MediaFile mediaFile) {
        super(context, str, abVar, mediaFile.a(), mediaFile.f);
        this.c = as.a(55);
        this.g = -1;
    }

    public long b() {
        return this.g;
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        super.a(abVar);
        if (((aa) abVar.b()).b()) {
            Long l = (Long) this.c.b();
            if (l != null) {
                this.g = l.longValue();
            }
        }
    }

    protected void a(e eVar) throws BuilderInitException {
        HttpEntity mVar = new m(this.p, null);
        try {
            mVar.a("media", aj.a(8), this.a);
            mVar.a();
            eVar.a(mVar);
        } catch (Exception e) {
            throw new BuilderInitException(1008, e);
        }
    }

    protected as e() {
        return this.c;
    }
}
