package tv.periscope.android.exoplayer.player;

import android.media.MediaCodec.CryptoException;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer.CodecCounters;
import com.google.android.exoplayer.DummyTrackRenderer;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.ExoPlayer.Listener;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer.EventListener;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.TimeRange;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import com.google.android.exoplayer.chunk.ChunkSampleSource;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.dash.DashChunkSource;
import com.google.android.exoplayer.drm.StreamingDrmSessionManager;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.metadata.MetadataTrackRenderer.MetadataRenderer;
import com.google.android.exoplayer.metadata.id3.Id3Frame;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.TextRenderer;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.util.DebugTextViewHelper.Provider;
import com.google.android.exoplayer.util.PlayerControl;
import defpackage.ddk;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
public class e implements Listener, EventListener, MediaCodecVideoTrackRenderer.EventListener, ChunkSampleSource.EventListener, DashChunkSource.EventListener, StreamingDrmSessionManager.EventListener, HlsSampleSource.EventListener, MetadataRenderer<List<Id3Frame>>, TextRenderer, BandwidthMeter.EventListener, Provider {
    private final k a;
    private final ddk b;
    private final ExoPlayer c;
    private final PlayerControl d;
    private final Handler e;
    private final CopyOnWriteArrayList<j> f;
    private int g;
    private int h;
    private boolean i;
    private Surface j;
    private TrackRenderer k;
    private TrackRenderer l;
    private CodecCounters m;
    private Format n;
    private BandwidthMeter o;
    private f p;
    private g q;
    private i r;
    private h s;

    public /* synthetic */ void onMetadata(Object obj) {
        a((List) obj);
    }

    public e(k kVar) {
        this(kVar, new ddk());
    }

    public e(k kVar, ddk ddk) {
        this.a = kVar;
        this.b = ddk;
        this.c = Factory.newInstance(4, 1000, 5000);
        this.c.addListener(this);
        this.d = new PlayerControl(this.c);
        this.e = new Handler();
        this.f = new CopyOnWriteArrayList();
        this.h = 1;
        this.g = 1;
        this.c.setSelectedTrack(2, -1);
    }

    ddk a() {
        return this.b;
    }

    public ExoPlayer b() {
        return this.c;
    }

    public void a(j jVar) {
        this.f.add(jVar);
    }

    public void b(j jVar) {
        this.f.remove(jVar);
    }

    public void a(i iVar) {
        this.r = iVar;
    }

    public void a(h hVar) {
        this.s = hVar;
    }

    public void a(f fVar) {
        this.p = fVar;
    }

    public void a(g gVar) {
        this.q = gVar;
    }

    public void a(Surface surface) {
        this.j = surface;
        b(false);
    }

    public int a(int i) {
        return this.c.getSelectedTrack(i);
    }

    public void c() {
        if (this.g == 3) {
            this.c.stop();
        }
        this.a.a();
        this.n = null;
        this.k = null;
        this.l = null;
        this.g = 2;
        j();
        this.a.a(this);
    }

    public void d() {
        this.c.stop();
    }

    void a(TrackRenderer[] trackRendererArr, BandwidthMeter bandwidthMeter) {
        for (int i = 0; i < 4; i++) {
            if (trackRendererArr[i] == null) {
                trackRendererArr[i] = new DummyTrackRenderer();
            }
        }
        this.k = trackRendererArr[0];
        this.l = trackRendererArr[1];
        CodecCounters codecCounters = this.k instanceof MediaCodecTrackRenderer ? ((MediaCodecTrackRenderer) this.k).codecCounters : trackRendererArr[1] instanceof MediaCodecTrackRenderer ? ((MediaCodecTrackRenderer) trackRendererArr[1]).codecCounters : null;
        this.m = codecCounters;
        this.o = bandwidthMeter;
        b(false);
        this.c.prepare(trackRendererArr);
        this.g = 3;
    }

    void a(Exception exception) {
        if (this.r != null) {
            this.r.b(exception);
        }
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((j) it.next()).a(exception);
        }
        this.g = 1;
        j();
    }

    public void a(boolean z) {
        this.c.setPlayWhenReady(z);
    }

    public void a(long j) {
        this.c.seekTo(j);
    }

    public void e() {
        this.a.a();
        this.g = 1;
        this.j = null;
        this.c.release();
    }

    public int f() {
        if (this.g == 2) {
            return 2;
        }
        int playbackState = this.c.getPlaybackState();
        if (this.g == 3 && playbackState == 1) {
            return 2;
        }
        return playbackState;
    }

    public Format getFormat() {
        return this.n;
    }

    public BandwidthMeter getBandwidthMeter() {
        return this.o;
    }

    public CodecCounters getCodecCounters() {
        return this.m;
    }

    public long getCurrentPosition() {
        return this.c.getCurrentPosition();
    }

    public long g() {
        return this.c.getDuration();
    }

    public boolean h() {
        return this.c.getPlayWhenReady();
    }

    Handler i() {
        return this.e;
    }

    public void onPlayerStateChanged(boolean z, int i) {
        j();
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        this.g = 1;
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((j) it.next()).a(exoPlaybackException);
        }
    }

    public void onPlayerSeekComplete() {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((j) it.next()).c();
        }
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((j) it.next()).a(i, i2, i3, f);
        }
    }

    public void onDroppedFrames(int i, long j) {
        if (this.s != null) {
            this.s.a(i, j);
        }
    }

    public void onBandwidthSample(int i, long j, long j2) {
        if (this.s != null) {
            this.s.a(i, j, j2);
        }
    }

    public void onDownstreamFormatChanged(int i, Format format, int i2, long j) {
        if (this.s != null) {
            if (i == 0) {
                this.n = format;
                this.s.a(format, i2, j);
            } else if (i == 1) {
                this.s.b(format, i2, j);
            }
        }
    }

    public void onDrmKeysLoaded() {
    }

    public void onDrmSessionManagerError(Exception exception) {
        if (this.r != null) {
            this.r.c(exception);
        }
    }

    public void onDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
        if (this.r != null) {
            this.r.a(decoderInitializationException);
        }
    }

    public void onAudioTrackInitializationError(InitializationException initializationException) {
        if (this.r != null) {
            this.r.a(initializationException);
        }
    }

    public void onAudioTrackWriteError(WriteException writeException) {
        if (this.r != null) {
            this.r.a(writeException);
        }
    }

    public void onAudioTrackUnderrun(int i, long j, long j2) {
        if (this.r != null) {
            this.r.b(i, j, j2);
        }
    }

    public void onCryptoError(CryptoException cryptoException) {
        if (this.r != null) {
            this.r.a(cryptoException);
        }
    }

    public void onDecoderInitialized(String str, long j, long j2) {
        if (this.s != null) {
            this.s.a(str, j, j2);
        }
    }

    public void onLoadError(int i, IOException iOException) {
        if (this.r != null) {
            this.r.a(i, iOException);
        }
    }

    public void onCues(List<Cue> list) {
        if (this.p != null && a(2) != -1) {
            this.p.b(list);
        }
    }

    public void a(List<Id3Frame> list) {
        if (this.q != null && a(3) != -1) {
            this.q.a(list);
        }
    }

    public void onAvailableRangeChanged(int i, TimeRange timeRange) {
        if (this.s != null) {
            this.s.a(i, timeRange);
        }
    }

    public void onPlayWhenReadyCommitted() {
    }

    public void onDrawnToSurface(Surface surface) {
        if (this.s != null) {
            this.s.a(surface);
        }
    }

    public void onLoadStarted(int i, long j, int i2, int i3, Format format, long j2, long j3) {
        if (this.s != null) {
            this.s.a(i, j, i2, i3, format, j2, j3);
        }
    }

    public void onLoadCompleted(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5) {
        if (this.s != null) {
            this.s.a(i, j, i2, i3, format, j2, j3, j4, j5);
        }
    }

    public void onLoadCanceled(int i, long j) {
    }

    public void onUpstreamDiscarded(int i, long j, long j2) {
    }

    private void j() {
        boolean playWhenReady = this.c.getPlayWhenReady();
        int f = f();
        if (this.i != playWhenReady || this.h != f) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(playWhenReady, f);
            }
            this.i = playWhenReady;
            this.h = f;
        }
    }

    private void b(boolean z) {
        if (this.k != null) {
            if (z) {
                this.c.blockingSendMessage(this.k, 1, this.j);
            } else {
                this.c.sendMessage(this.k, 1, this.j);
            }
        }
    }

    public void a(float f) {
        if (this.l != null) {
            this.c.sendMessage(this.l, 1, Float.valueOf(f));
        }
    }
}
