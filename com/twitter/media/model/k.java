package com.twitter.media.model;

import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class k extends com.twitter.util.serialization.k<MediaFile> {
    private k() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, MediaFile mediaFile) throws IOException {
        qVar.e(mediaFile.f.typeId);
        if (mediaFile instanceof AnimatedGifFile) {
            AnimatedGifFile.a.b(qVar, (AnimatedGifFile) mediaFile);
        } else if (mediaFile instanceof ImageFile) {
            ImageFile.a.b(qVar, (ImageFile) mediaFile);
        } else if (mediaFile instanceof SegmentedVideoFile) {
            SegmentedVideoFile.a.b(qVar, (SegmentedVideoFile) mediaFile);
        } else if (mediaFile instanceof VideoFile) {
            VideoFile.a.b(qVar, (VideoFile) mediaFile);
        } else if (mediaFile instanceof SvgFile) {
            SvgFile.a.b(qVar, (SvgFile) mediaFile);
        } else {
            throw new IOException("Invalid media type: " + mediaFile.getClass().getSimpleName());
        }
    }

    protected MediaFile a(p pVar, int i) throws IOException, ClassNotFoundException {
        MediaType a = MediaType.a(pVar.e());
        switch (j.a[a.ordinal()]) {
            case tv.periscope.android.library.p.View_android_focusable /*1*/:
                return (MediaFile) ImageFile.a.c(pVar);
            case tv.periscope.android.library.p.View_paddingStart /*2*/:
                return (MediaFile) VideoFile.a.c(pVar);
            case tv.periscope.android.library.p.View_paddingEnd /*3*/:
                return (MediaFile) SegmentedVideoFile.a.c(pVar);
            case tv.periscope.android.library.p.View_theme /*4*/:
                return (MediaFile) AnimatedGifFile.a.c(pVar);
            case tv.periscope.android.library.p.Toolbar_contentInsetStart /*5*/:
                return (MediaFile) SvgFile.a.c(pVar);
            default:
                throw new IOException("Unknown media type: " + a);
        }
    }
}
