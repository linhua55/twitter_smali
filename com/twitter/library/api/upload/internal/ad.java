package com.twitter.library.api.upload.internal;

import android.content.Context;
import android.net.Uri;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.upload.internal.BaseUploadRequest.BuilderInitException;
import com.twitter.library.service.ab;
import com.twitter.library.service.e;
import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
public class ad extends ab {
    private final long c;

    public ad(Context context, ab abVar, Uri uri, MediaType mediaType, long j) {
        super(context, "segmented_upload_status", abVar, uri, mediaType, true);
        this.c = j;
    }

    protected void a(e eVar) throws BuilderInitException {
        eVar.a(RequestMethod.a).a("command", "STATUS").a("media_id", this.c);
    }
}
