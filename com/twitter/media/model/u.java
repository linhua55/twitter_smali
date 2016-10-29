package com.twitter.media.model;

import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.File;
import java.io.IOException;

/* compiled from: Twttr */
class u extends k<VideoFile> {
    private u() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, VideoFile videoFile) throws IOException {
        qVar.b(videoFile.d.getPath()).e(videoFile.g).e(videoFile.e.a()).e(videoFile.e.b());
    }

    protected VideoFile a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new VideoFile(new File(e.a(pVar.i())), pVar.e(), Size.a(pVar.e(), pVar.e()));
    }
}
