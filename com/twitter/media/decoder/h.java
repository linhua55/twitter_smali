package com.twitter.media.decoder;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import bbn;
import com.caverock.androidsvg.SVG;
import com.twitter.media.util.a;
import com.twitter.util.math.Size;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public class h extends ImageDecoder {
    protected Size a(FileInputStream fileInputStream) throws IOException {
        return this.a.a();
    }

    protected Bitmap b(FileInputStream fileInputStream) throws IOException {
        Bitmap a = a.a(this.a.a(), this.b);
        try {
            SVG.a((InputStream) fileInputStream).a(new Canvas(a));
            return a;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    b c(boolean z) {
        if (z) {
            return new b(this.a.a());
        }
        return super.c(false);
    }
}
