package com.twitter.library.media.manager;

import android.content.Context;
import com.twitter.media.model.MediaFile;
import com.twitter.media.request.g;
import java.io.File;

/* compiled from: Twttr */
public class b extends g<d> {
    public final MediaFile a;

    b(c cVar) {
        super(cVar);
        this.a = cVar.a;
    }

    public File a(Context context) {
        return this.a != null ? this.a.d : super.a(context);
    }
}
