package defpackage;

import android.media.MediaCodec.CryptoException;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.TimeRange;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.util.VerboseLogUtil;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
import tv.periscope.android.exoplayer.player.h;
import tv.periscope.android.exoplayer.player.i;
import tv.periscope.android.exoplayer.player.j;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: dbz */
public class dbz implements h, i, j {
    private static final NumberFormat a;
    private long b;
    private long[] c;

    static {
        a = NumberFormat.getInstance(Locale.US);
        a.setMinimumFractionDigits(2);
        a.setMaximumFractionDigits(2);
    }

    public dbz() {
        this.c = new long[4];
    }

    public void a() {
        this.b = SystemClock.elapsedRealtime();
        dcv.c("EventLogger", "start [0]");
    }

    public void a(boolean z, int i) {
        dcv.c("EventLogger", "state [" + b() + ", " + z + ", " + a(i) + "]");
    }

    public void a(Exception exception) {
        dcv.b("EventLogger", "playerFailed [" + b() + "]", exception);
    }

    public void a(int i, int i2, int i3, float f) {
        dcv.c("EventLogger", "videoSizeChanged [" + i + ", " + i2 + ", " + f + "]");
    }

    public void c() {
        dcv.c("EventLogger", "playerSeekComplete");
    }

    public void a(int i, long j, long j2) {
        dcv.c("EventLogger", "bandwidth [" + b() + ", " + j + ", " + a((long) i) + ", " + j2 + "]");
    }

    public void a(int i, long j) {
        dcv.c("EventLogger", "droppedFrames [" + b() + ", " + i + "]");
    }

    public void a(int i, long j, int i2, int i3, Format format, long j2, long j3) {
        this.c[i] = SystemClock.elapsedRealtime();
        if (VerboseLogUtil.isTagEnabled("EventLogger")) {
            dcv.a("EventLogger", "loadStart [" + b() + ", " + i + ", " + i2 + ", " + j2 + ", " + j3 + "]");
        }
    }

    public void a(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5) {
        if (VerboseLogUtil.isTagEnabled("EventLogger")) {
            dcv.a("EventLogger", "loadEnd [" + b() + ", " + i + ", " + (SystemClock.elapsedRealtime() - this.c[i]) + "]");
        }
    }

    public void a(Format format, int i, long j) {
        dcv.c("EventLogger", "videoFormat [" + b() + ", " + format.id + ", " + Integer.toString(i) + "]");
    }

    public void b(Format format, int i, long j) {
        dcv.c("EventLogger", "audioFormat [" + b() + ", " + format.id + ", " + Integer.toString(i) + "]");
    }

    public void a(int i, IOException iOException) {
        a("loadError", (Exception) iOException);
    }

    public void b(Exception exception) {
        a("rendererInitError", exception);
    }

    public void c(Exception exception) {
        a("drmSessionManagerError", exception);
    }

    public void a(DecoderInitializationException decoderInitializationException) {
        a("decoderInitializationError", (Exception) decoderInitializationException);
    }

    public void a(InitializationException initializationException) {
        a("audioTrackInitializationError", (Exception) initializationException);
    }

    public void a(WriteException writeException) {
        a("audioTrackWriteError", (Exception) writeException);
    }

    public void b(int i, long j, long j2) {
        dcv.b("EventLogger", "onAudioTrackUnderrun " + i + ", " + j + ", " + j2);
    }

    public void a(CryptoException cryptoException) {
        a("cryptoError", (Exception) cryptoException);
    }

    public void a(String str, long j, long j2) {
        dcv.c("EventLogger", "decoderInitialized [" + b() + "]");
    }

    public void a(int i, TimeRange timeRange) {
        dcv.c("EventLogger", "availableRangeChanged " + timeRange + " , sourceId " + i);
    }

    public void a(Surface surface) {
    }

    private void a(String str, Exception exception) {
        dcv.b("EventLogger", "internalError [" + b() + ", " + str + "]", exception);
    }

    private String a(int i) {
        switch (i) {
            case p.View_android_focusable /*1*/:
                return "I";
            case p.View_paddingStart /*2*/:
                return "P";
            case p.View_paddingEnd /*3*/:
                return "B";
            case p.View_theme /*4*/:
                return "R";
            case p.Toolbar_contentInsetStart /*5*/:
                return "E";
            default:
                return "?";
        }
    }

    private String b() {
        return a(SystemClock.elapsedRealtime() - this.b);
    }

    private String a(long j) {
        return a.format((double) (((float) j) / 1000.0f));
    }
}
