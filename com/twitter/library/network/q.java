package com.twitter.library.network;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer.util.MpegAudioHeader;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class q implements o {
    private final Uri a;
    private final Context b;

    public q(Context context, Uri uri) {
        this.a = uri;
        this.b = context;
    }

    public void a(OutputStream outputStream) throws IOException {
        Closeable openInputStream = this.b.getContentResolver().openInputStream(this.a);
        cvi.a(openInputStream, outputStream, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
        cvi.a(openInputStream);
    }

    public InputStream a() throws IOException {
        return this.b.getContentResolver().openInputStream(this.a);
    }
}
