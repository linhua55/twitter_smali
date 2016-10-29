package tv.periscope.android.exoplayer.player;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import java.util.Collections;
import tv.periscope.android.video.rtmp.n;

/* compiled from: Twttr */
public class l extends q {
    private boolean f;
    private int g;
    private int h;

    public l(int i, int i2, String str, int i3, int i4) {
        super(i, "audio/mp4a-latm", i2, str);
        this.f = false;
        this.g = i3;
        this.h = i4;
    }

    public static byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public long readDiscontinuity(int i) {
        return Long.MIN_VALUE;
    }

    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        Object a = a(this.b);
        if (this.f) {
            byte[] bArr;
            n a2;
            int i2;
            do {
                a2 = a();
                if (a2 == null) {
                    return -2;
                }
                bArr = a2.e().a;
                i2 = a2.e().b;
            } while (bArr[1] != 1);
            i2 -= 2;
            if (sampleHolder.data.capacity() < i2) {
                sampleHolder.ensureSpaceForWrite(i2);
            }
            sampleHolder.data.put(bArr, 2, i2);
            sampleHolder.size = i2;
            sampleHolder.timeUs = a2.d() * 1000;
            sampleHolder.flags = 1;
            this.e.a(a2);
            return -3;
        }
        mediaFormatHolder.format = MediaFormat.createAudioFormat(String.valueOf(this.c), "audio/mp4a-latm", this.d, -1, -1, this.g, this.h, Collections.singletonList(a), null);
        this.f = true;
        return -4;
    }
}
