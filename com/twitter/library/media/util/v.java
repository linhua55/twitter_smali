package com.twitter.library.media.util;

import android.content.Context;
import com.twitter.media.model.MediaFile;
import com.twitter.model.media.EditableMedia;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
final class v implements Callable<MediaFile> {
    final /* synthetic */ Context a;
    final /* synthetic */ EditableMedia b;

    v(Context context, EditableMedia editableMedia) {
        this.a = context;
        this.b = editableMedia;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public MediaFile a() throws Exception {
        return t.a(this.a, this.b);
    }
}
