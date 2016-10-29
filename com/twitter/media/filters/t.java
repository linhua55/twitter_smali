package com.twitter.media.filters;

import android.util.Log;
import java.io.Writer;

/* compiled from: Twttr */
class t extends Writer {
    private StringBuilder a;

    t() {
        this.a = new StringBuilder();
    }

    public void close() {
        a();
    }

    public void flush() {
        a();
    }

    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.a.append(c);
            }
        }
    }

    private void a() {
        if (this.a.length() > 0) {
            Log.v("GLSurfaceView", this.a.toString());
            this.a.delete(0, this.a.length());
        }
    }
}
