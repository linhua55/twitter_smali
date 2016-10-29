package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import com.google.android.exoplayer.util.MpegAudioHeader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

class br {
    ByteArrayOutputStream a;
    Base64OutputStream b;

    public br() {
        this.a = new ByteArrayOutputStream(MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
        this.b = new Base64OutputStream(this.a, 10);
    }

    public void a(byte[] bArr) throws IOException {
        this.b.write(bArr);
    }

    public String toString() {
        String byteArrayOutputStream;
        try {
            this.b.close();
        } catch (Throwable e) {
            qd.b("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.a.close();
            byteArrayOutputStream = this.a.toString();
        } catch (Throwable e2) {
            qd.b("HashManager: Unable to convert to Base64.", e2);
            byteArrayOutputStream = TtmlNode.ANONYMOUS_REGION_ID;
        } finally {
            this.a = null;
            this.b = null;
        }
        return byteArrayOutputStream;
    }
}
