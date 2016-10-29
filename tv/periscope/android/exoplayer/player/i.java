package tv.periscope.android.exoplayer.player;

import android.media.MediaCodec.CryptoException;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import java.io.IOException;

/* compiled from: Twttr */
public interface i {
    void a(int i, IOException iOException);

    void a(CryptoException cryptoException);

    void a(DecoderInitializationException decoderInitializationException);

    void a(InitializationException initializationException);

    void a(WriteException writeException);

    void b(int i, long j, long j2);

    void b(Exception exception);

    void c(Exception exception);
}
