package com.twitter.library.service;

import com.google.android.exoplayer.util.MpegAudioHeader;
import com.twitter.internal.network.i;
import com.twitter.internal.network.k;
import cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public class n implements i {
    private final File a;

    public n(File file) {
        this.a = file;
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        Closeable fileOutputStream = new FileOutputStream(this.a);
        try {
            cvi.a(inputStream, fileOutputStream, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
            fileOutputStream.flush();
        } catch (IOException e) {
        } finally {
            cvi.a(fileOutputStream);
        }
    }

    public void a(k kVar) {
    }
}
