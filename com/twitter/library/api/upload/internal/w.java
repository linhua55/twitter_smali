package com.twitter.library.api.upload.internal;

import android.content.Context;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.api.upload.internal.BaseUploadRequest.BuilderInitException;
import com.twitter.library.network.m;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.util.af;
import com.twitter.media.model.MediaFile;
import com.twitter.util.aj;
import cvi;
import java.io.IOException;
import java.util.Timer;
import org.apache.http.HttpEntity;

/* compiled from: Twttr */
public class w extends ab {
    volatile boolean c;
    private final int h;
    private final long i;
    private final String j;
    private final af k;
    private final long l;
    private Timer m;

    public w(Context context, ab abVar, MediaFile mediaFile, long j, af afVar, int i, long j2, String str, boolean z) {
        super(context, "segmented_upload_append", abVar, mediaFile, z);
        this.h = i;
        this.i = j2;
        this.j = str;
        this.k = afVar;
        this.l = j;
        a(ExecutionClass.b);
    }

    public boolean b(aa aaVar) {
        a(120000);
        return super.b(aaVar);
    }

    public void b(com.twitter.internal.android.service.ab<aa> abVar) {
        super.b(abVar);
        try {
            this.k.a();
        } catch (Exception e) {
            ((aa) abVar.b()).a(1008, e);
            cancel(true);
        }
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        if (this.c) {
            ((aa) abVar.b()).a(1009, new IOException());
        }
        this.m.cancel();
        cvi.a(this.k);
        super.a((com.twitter.internal.android.service.ab) abVar);
    }

    protected void a(e eVar) throws BuilderInitException {
        HttpEntity mVar = new m(this.p, null);
        try {
            mVar.a("media", aj.a(8), this.k, (int) this.i);
            mVar.a();
            eVar.a(mVar);
            if (this.g) {
                eVar.a("command", "APPEND").a("media_id", this.l).a("segment_index", (long) this.h).a("segment_md5", this.j);
            } else {
                eVar.b("X-SessionPhase", "APPEND").b("X-MediaId", Long.toString(this.l)).b("Content-MD5", this.j).b("X-SegmentIndex", Integer.toString(this.h)).b("X-TotalBytes", Long.toString(this.i));
            }
        } catch (Exception e) {
            throw new BuilderInitException(1008, e);
        }
    }

    protected c f() {
        return null;
    }

    private synchronized void a(long j) {
        if (this.m != null) {
            this.m.cancel();
        }
        this.m = new Timer();
        this.m.schedule(new x(this), j);
    }
}
