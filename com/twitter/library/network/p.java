package com.twitter.library.network;

import com.google.android.exoplayer.util.MpegAudioHeader;
import com.twitter.library.util.af;
import cvi;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class p implements o {
    private final af a;

    p(af afVar) {
        this.a = afVar;
    }

    public void a(OutputStream outputStream) throws IOException {
        this.a.a();
        cvi.a(this.a, outputStream, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
    }

    public InputStream a() throws IOException {
        this.a.a();
        return this.a;
    }
}
