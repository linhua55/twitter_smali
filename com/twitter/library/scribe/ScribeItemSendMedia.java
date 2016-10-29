package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import com.twitter.model.media.foundmedia.FoundMediaProvider;

/* compiled from: Twttr */
public class ScribeItemSendMedia extends MapScribeItem {
    public static final Creator<ScribeItemSendMedia> CREATOR;
    private static final String[] a;

    static {
        CREATOR = new x();
        a = new String[]{"type", "source", "provider"};
    }

    public ScribeItemSendMedia(EditableMedia editableMedia) {
        super(a.length);
        a(0, editableMedia.g().mimeType);
        MediaSource h = editableMedia.h();
        a(1, h.a());
        FoundMediaProvider c = h.c();
        if (c != null) {
            a(2, c.b);
        }
    }

    ScribeItemSendMedia(Parcel parcel) {
        super(parcel);
    }

    protected String a(int i) {
        return a[i];
    }
}
