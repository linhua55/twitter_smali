package com.twitter.media.model;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

/* compiled from: Twttr */
class q extends k<SegmentedVideoFile> {
    private q() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(com.twitter.util.serialization.q qVar, SegmentedVideoFile segmentedVideoFile) throws IOException {
        Writer stringWriter = new StringWriter(4096);
        segmentedVideoFile.a(stringWriter);
        stringWriter.close();
        qVar.b(segmentedVideoFile.d.getPath()).b(stringWriter.toString());
    }

    protected SegmentedVideoFile a(p pVar, int i) throws IOException, ClassNotFoundException {
        File file = new File(e.a(pVar.i()));
        String p = pVar.p();
        SegmentedVideoFile a = SegmentedVideoFile.a(file, new StringReader(p));
        if (a != null) {
            return a;
        }
        throw new IOException("Invalid segment video file info: " + p);
    }
}
