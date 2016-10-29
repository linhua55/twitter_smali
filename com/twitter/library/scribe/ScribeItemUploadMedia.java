package com.twitter.library.scribe;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
public class ScribeItemUploadMedia extends MapScribeItem {
    public static final Creator<ScribeItemUploadMedia> CREATOR;
    private static final String[] a;

    static {
        CREATOR = new aa();
        a = new String[]{"type", "length", "uri", "usage"};
    }

    public ScribeItemUploadMedia() {
        super(a.length);
    }

    ScribeItemUploadMedia(Parcel parcel) {
        super(parcel);
    }

    protected String a(int i) {
        return a[i];
    }

    public ScribeItemUploadMedia a(MediaType mediaType) {
        a(0, mediaType.mimeType);
        return this;
    }

    public ScribeItemUploadMedia a(long j) {
        a(1, Long.valueOf(j));
        return this;
    }

    public ScribeItemUploadMedia a(Uri uri) {
        a(2, uri.toString());
        return this;
    }

    public ScribeItemUploadMedia a(MediaUsage mediaUsage) {
        a(3, mediaUsage.scribeName);
        return this;
    }
}
