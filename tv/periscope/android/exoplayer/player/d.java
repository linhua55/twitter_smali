package tv.periscope.android.exoplayer.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.chunk.VideoFormatSelectorUtil;
import com.google.android.exoplayer.hls.DefaultHlsTrackSelector;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylistParser;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.hls.PtsTimestampAdjusterProvider;
import com.google.android.exoplayer.metadata.MetadataTrackRenderer;
import com.google.android.exoplayer.metadata.id3.Id3Parser;
import com.google.android.exoplayer.text.eia608.Eia608TrackRenderer;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.ManifestFetcher.ManifestCallback;
import java.io.IOException;

/* compiled from: Twttr */
final class d implements ManifestCallback<HlsPlaylist> {
    private final Context a;
    private final String b;
    private final String c;
    private final e d;
    private final ManifestFetcher<HlsPlaylist> e;
    private boolean f;

    @TargetApi(19)
    public /* synthetic */ void onSingleManifest(Object obj) {
        a((HlsPlaylist) obj);
    }

    public d(Context context, String str, String str2, e eVar) {
        this.a = context;
        this.b = str;
        this.c = str2;
        this.d = eVar;
        this.e = new ManifestFetcher(str2, new DefaultUriDataSource(context, null, new a(str, null, null, 8000, 8000, true, eVar.a())), new HlsPlaylistParser());
    }

    public void a() {
        this.e.singleLoad(this.d.i().getLooper(), this);
    }

    public void b() {
        this.f = true;
    }

    public void onSingleManifestError(IOException iOException) {
        if (!this.f) {
            this.d.a((Exception) iOException);
        }
    }

    @TargetApi(19)
    public void a(HlsPlaylist hlsPlaylist) {
        if (!this.f) {
            Handler i = this.d.i();
            DefaultLoadControl defaultLoadControl = new DefaultLoadControl(new DefaultAllocator(65536));
            DefaultBandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter();
            PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider = new PtsTimestampAdjusterProvider();
            if (hlsPlaylist instanceof HlsMasterPlaylist) {
                try {
                    if (VideoFormatSelectorUtil.selectVideoFormatsForDefaultDisplay(this.a, ((HlsMasterPlaylist) hlsPlaylist).variants, null, false).length == 0) {
                        this.d.a(new IllegalStateException("No variants selected."));
                        return;
                    }
                } catch (Exception e) {
                    this.d.a(e);
                    return;
                }
            }
            DataSource defaultUriDataSource = new DefaultUriDataSource(this.a, defaultBandwidthMeter, new a(this.b, null, defaultBandwidthMeter, 8000, 8000, true, this.d.a()));
            HlsChunkSource hlsChunkSource = new HlsChunkSource(true, r11, hlsPlaylist, DefaultHlsTrackSelector.newDefaultInstance(this.a), defaultBandwidthMeter, ptsTimestampAdjusterProvider, 1);
            HlsSampleSource hlsSampleSource = new HlsSampleSource(r6, defaultLoadControl, 16646144, i, this.d, 0);
            SampleSource sampleSource = hlsSampleSource;
            MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(this.a, sampleSource, MediaCodecSelector.DEFAULT, 1, 5000, i, this.d, 50);
            SampleSource sampleSource2 = hlsSampleSource;
            MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer = new MediaCodecAudioTrackRenderer(sampleSource2, MediaCodecSelector.DEFAULT, null, true, this.d.i(), this.d, AudioCapabilities.getCapabilities(this.a), 3);
            MetadataTrackRenderer metadataTrackRenderer = new MetadataTrackRenderer(hlsSampleSource, new Id3Parser(), this.d, i.getLooper());
            Eia608TrackRenderer eia608TrackRenderer = new Eia608TrackRenderer(hlsSampleSource, this.d, i.getLooper());
            this.d.a(new TrackRenderer[]{mediaCodecVideoTrackRenderer, mediaCodecAudioTrackRenderer, metadataTrackRenderer, eia608TrackRenderer}, defaultBandwidthMeter);
        }
    }
}
