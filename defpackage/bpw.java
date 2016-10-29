package defpackage;

import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecProfileLevel;
import android.media.MediaCodecList;
import android.support.annotation.VisibleForTesting;
import android.support.annotation.WorkerThread;
import com.google.android.exoplayer.util.MimeTypes;
import java.util.concurrent.CountDownLatch;

@VisibleForTesting
/* compiled from: Twttr */
/* renamed from: bpw */
public final class bpw implements Runnable {
    volatile boolean a;
    volatile boolean b;
    private CountDownLatch c;

    public bpw(CountDownLatch countDownLatch) {
        this.a = false;
        this.b = false;
        this.c = countDownLatch;
    }

    @WorkerThread
    public void run() {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            a(MediaCodecList.getCodecInfoAt(i));
        }
        this.c.countDown();
    }

    @VisibleForTesting
    public void a(MediaCodecInfo mediaCodecInfo) {
        if (!mediaCodecInfo.isEncoder()) {
            try {
                for (CodecProfileLevel codecProfileLevel : mediaCodecInfo.getCapabilitiesForType(MimeTypes.VIDEO_H264).profileLevels) {
                    if (codecProfileLevel.profile == 2) {
                        this.a = true;
                    }
                    if (codecProfileLevel.profile == 8) {
                        this.b = true;
                    }
                }
            } catch (IllegalArgumentException e) {
            }
        }
    }
}
