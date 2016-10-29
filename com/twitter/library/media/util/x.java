package com.twitter.library.media.util;

import android.content.Context;
import bxl;
import cff;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.model.media.EditableVideo;
import com.twitter.util.collection.CollectionUtils;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class x {
    public static b a(Context context, EditableMedia editableMedia) {
        switch (y.a[editableMedia.g().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return a(context, (EditableImage) editableMedia);
            case WireMessage.WIRE_CONTROL /*2*/:
                return a((EditableVideo) editableMedia);
            case WireMessage.WIRE_AUTH /*3*/:
                return a((EditableSegmentedVideo) editableMedia);
            default:
                return a.a(editableMedia.k);
        }
    }

    private static b a(Context context, EditableImage editableImage) {
        b a = a.a(editableImage.k).a(editableImage.f).a(editableImage.e);
        boolean z = (editableImage.h == null || editableImage.h.isEmpty()) ? false : true;
        b a2 = a.a(z);
        if (editableImage.c != 0 || editableImage.b) {
            a2.a(new cff(context, editableImage.c, editableImage.b, editableImage.d));
        }
        if (!CollectionUtils.b(editableImage.h)) {
            a2.a(new bxl(editableImage));
        }
        return a2;
    }

    private static b a(EditableVideo editableVideo) {
        return a.a(editableVideo.k).b(editableVideo.b);
    }

    private static b a(EditableSegmentedVideo editableSegmentedVideo) {
        return a.a((MediaFile) ((SegmentedVideoFile) editableSegmentedVideo.k).h.get(((Integer) ((SegmentedVideoFile) editableSegmentedVideo.k).i.get(0)).intValue()));
    }
}
