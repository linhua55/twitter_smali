package com.twitter.library.api.upload.internal;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.upload.internal.BaseUploadRequest.BuilderInitException;
import com.twitter.library.service.ab;
import com.twitter.library.service.e;
import com.twitter.media.model.MediaFile;

/* compiled from: Twttr */
public class y extends ab {
    private final long c;

    public y(Context context, ab abVar, MediaFile mediaFile, long j, boolean z) {
        super(context, "segmented_upload_finalize", abVar, mediaFile, z);
        this.c = j;
    }

    protected void a(e eVar) throws BuilderInitException {
        eVar.a(RequestMethod.b);
        if (this.g) {
            eVar.a("command", "FINALIZE").a("media_id", this.c).a("allow_async", true);
        } else {
            eVar.b("X-SessionPhase", "FINALIZE").b("X-MediaId", Long.toString(this.c)).a(RequestMethod.b);
        }
    }
}
