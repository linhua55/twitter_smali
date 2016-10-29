package com.twitter.model.media;

import android.net.Uri;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.model.av.n;
import com.twitter.util.serialization.OptionalFieldException;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class g extends k<EditableSegmentedVideo> {
    static final g a;

    protected g() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new g();
    }

    protected void a(q qVar, EditableSegmentedVideo editableSegmentedVideo) throws IOException {
        SegmentedVideoFile.a.b(qVar, editableSegmentedVideo.k);
        qVar.b(editableSegmentedVideo.h().a()).b(editableSegmentedVideo.d().toString());
        MediaSource.a.b(qVar, editableSegmentedVideo.h());
        n.a.b(qVar, editableSegmentedVideo.k());
    }

    protected EditableSegmentedVideo a(p pVar, int i) throws IOException, ClassNotFoundException {
        Uri parse;
        Uri a;
        MediaSource mediaSource;
        SegmentedVideoFile segmentedVideoFile = (SegmentedVideoFile) SegmentedVideoFile.a.c(pVar);
        String p = pVar.p();
        try {
            String i2 = pVar.i();
            if (i2 != null) {
                parse = Uri.parse(i2);
            } else {
                parse = null;
            }
        } catch (IOException e) {
            parse = null;
        }
        if (parse == null) {
            a = segmentedVideoFile.a();
        } else {
            a = parse;
        }
        try {
            mediaSource = (MediaSource) MediaSource.a.a(pVar);
        } catch (IOException e2) {
            mediaSource = null;
        }
        if (mediaSource == null) {
            mediaSource = MediaSource.a(p);
        }
        EditableSegmentedVideo editableSegmentedVideo = new EditableSegmentedVideo(segmentedVideoFile, a, mediaSource);
        try {
            editableSegmentedVideo.a((n) n.a.a(pVar));
        } catch (OptionalFieldException e3) {
        }
        return editableSegmentedVideo;
    }
}
