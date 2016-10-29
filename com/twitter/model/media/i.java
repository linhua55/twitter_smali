package com.twitter.model.media;

import android.net.Uri;
import com.twitter.media.model.VideoFile;
import com.twitter.model.av.n;
import com.twitter.util.serialization.OptionalFieldException;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class i extends k<EditableVideo> {
    static final i a;

    protected i() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new i();
    }

    protected void a(q qVar, EditableVideo editableVideo) throws IOException {
        VideoFile.a.b(qVar, editableVideo.k);
        qVar.b(editableVideo.h().a()).e(editableVideo.b).e(editableVideo.c).b(editableVideo.d().toString()).a(editableVideo.h(), MediaSource.a).a(editableVideo.k(), n.a);
    }

    protected EditableVideo a(p pVar, int i) throws IOException, ClassNotFoundException {
        Uri parse;
        Uri a;
        MediaSource mediaSource;
        VideoFile videoFile = (VideoFile) VideoFile.a.c(pVar);
        String p = pVar.p();
        int e = pVar.e();
        int e2 = pVar.e();
        try {
            String i2 = pVar.i();
            if (i2 != null) {
                parse = Uri.parse(i2);
            } else {
                parse = null;
            }
        } catch (IOException e3) {
            parse = null;
        }
        if (parse == null) {
            a = videoFile.a();
        } else {
            a = parse;
        }
        try {
            mediaSource = (MediaSource) MediaSource.a.a(pVar);
        } catch (IOException e4) {
            mediaSource = null;
        }
        if (mediaSource == null) {
            mediaSource = MediaSource.a(p);
        }
        EditableVideo editableVideo = new EditableVideo(videoFile, a, mediaSource);
        try {
            editableVideo.a((n) n.a.a(pVar));
        } catch (OptionalFieldException e5) {
        }
        editableVideo.b = e;
        editableVideo.c = e2;
        return editableVideo;
    }
}
