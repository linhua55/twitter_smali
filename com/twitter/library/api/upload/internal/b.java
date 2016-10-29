package com.twitter.library.api.upload.internal;

import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.upload.d;
import com.twitter.media.model.MediaFile;
import com.twitter.media.util.MediaException;

/* compiled from: Twttr */
public class b extends AsyncOperation {
    private final d a;
    private Exception b;
    private MediaFile c;

    public b(d dVar) {
        super("MediaProcessOperation");
        this.a = dVar;
    }

    public Exception a() {
        return this.b;
    }

    public MediaFile b() {
        return this.c;
    }

    protected Object d() throws InterruptedException {
        this.c = this.a.d();
        if (this.c == null) {
            this.b = new MediaException("Error in MediaProcessor");
        }
        return null;
    }

    protected Object c() {
        return null;
    }
}
