package tv.periscope.android.exoplayer.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.text.TextTrackRenderer;
import com.google.android.exoplayer.upstream.DefaultAllocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;

/* compiled from: Twttr */
public class b implements k {
    private final Context a;
    private final String b;
    private final Uri c;
    private final Extractor d;

    public b(Context context, String str, Uri uri, Extractor extractor) {
        this.a = context;
        this.b = str;
        this.c = uri;
        this.d = extractor;
    }

    @TargetApi(19)
    public void a(e eVar) {
        DefaultAllocator defaultAllocator = new DefaultAllocator(65536);
        Handler i = eVar.i();
        DefaultBandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter(i, null);
        DefaultUriDataSource defaultUriDataSource = new DefaultUriDataSource(this.a, defaultBandwidthMeter, new a(this.b, null, defaultBandwidthMeter, 8000, 8000, true, eVar.a()));
        ExtractorSampleSource extractorSampleSource = new ExtractorSampleSource(this.c, defaultUriDataSource, defaultAllocator, 16777216, new Extractor[]{this.d});
        MediaCodecVideoTrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(this.a, extractorSampleSource, MediaCodecSelector.DEFAULT, 1, 5000, i, eVar, 50);
        MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer = new MediaCodecAudioTrackRenderer(extractorSampleSource, MediaCodecSelector.DEFAULT, null, true, i, eVar, AudioCapabilities.getCapabilities(this.a), 3);
        TextTrackRenderer textTrackRenderer = new TextTrackRenderer(extractorSampleSource, eVar, i.getLooper(), new SubtitleParser[0]);
        TrackRenderer[] trackRendererArr = new TrackRenderer[4];
        trackRendererArr[0] = mediaCodecVideoTrackRenderer;
        trackRendererArr[1] = mediaCodecAudioTrackRenderer;
        trackRendererArr[2] = textTrackRenderer;
        eVar.a(trackRendererArr, defaultBandwidthMeter);
    }

    public void a() {
    }
}
