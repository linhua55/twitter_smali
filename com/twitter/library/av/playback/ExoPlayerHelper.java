package com.twitter.library.av.playback;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer.EventListener;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.chunk.ChunkSampleSource;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.chunk.FormatEvaluator.FixedEvaluator;
import com.google.android.exoplayer.chunk.VideoFormatSelectorUtil;
import com.google.android.exoplayer.dash.DashChunkSource;
import com.google.android.exoplayer.dash.DefaultDashTrackSelector;
import com.google.android.exoplayer.dash.mpd.AdaptationSet;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;
import com.google.android.exoplayer.dash.mpd.Period;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.upstream.TransferListener;
import com.google.android.exoplayer.upstream.UdpDataSource;
import com.google.android.exoplayer.upstream.UriLoadable.Parser;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.ManifestFetcher.ManifestCallback;

/* compiled from: Twttr */
public class ExoPlayerHelper {

    /* compiled from: Twttr */
    public class BuildRendererException extends Exception {
        public BuildRendererException(String str) {
            super(str);
        }

        public BuildRendererException(String str, Throwable th) {
            super(str, th);
        }
    }

    public <T> void a(Context context, String str, String str2, Parser<T> parser, ManifestCallback<T> manifestCallback) {
        new ManifestFetcher(str2, new DefaultUriDataSource(context, str), parser).singleLoad(context.getMainLooper(), manifestCallback);
    }

    public TrackRenderer a(Context context, BandwidthMeter bandwidthMeter, String str, Handler handler, EventListener eventListener, Allocator allocator, MediaPresentationDescription mediaPresentationDescription) throws BuildRendererException {
        Period period = mediaPresentationDescription.getPeriod(0);
        int adaptationSetIndex = period.getAdaptationSetIndex(0);
        AdaptationSet adaptationSet = null;
        if (adaptationSetIndex != -1) {
            adaptationSet = (AdaptationSet) period.adaptationSets.get(adaptationSetIndex);
        }
        if (adaptationSet == null) {
            throw new BuildRendererException("No video or audio adaptation sets");
        }
        try {
            int[] selectVideoFormatsForDefaultDisplay = VideoFormatSelectorUtil.selectVideoFormatsForDefaultDisplay(context, adaptationSet.representations, null, false);
            if (selectVideoFormatsForDefaultDisplay == null || selectVideoFormatsForDefaultDisplay.length == 0) {
                throw new BuildRendererException("No video representation indices");
            }
            return new MediaCodecVideoTrackRenderer(context, new ChunkSampleSource(new DashChunkSource(mediaPresentationDescription, DefaultDashTrackSelector.newVideoInstance(context, true, false), a(context, bandwidthMeter, str), new AdaptiveEvaluator(bandwidthMeter)), new DefaultLoadControl(allocator), 1638400), MediaCodecSelector.DEFAULT, 1, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS, handler, eventListener, -1);
        } catch (Throwable e) {
            throw new BuildRendererException("Error selecting video formats", e);
        }
    }

    public DataSource a(Context context, TransferListener transferListener, String str) {
        return new DefaultUriDataSource(context, transferListener, new DefaultHttpDataSource(str, null, null, UdpDataSource.DEAFULT_SOCKET_TIMEOUT_MILLIS, UdpDataSource.DEAFULT_SOCKET_TIMEOUT_MILLIS, true));
    }

    public TrackRenderer a(Context context, BandwidthMeter bandwidthMeter, String str, Handler handler, MediaCodecAudioTrackRenderer.EventListener eventListener, Allocator allocator, MediaPresentationDescription mediaPresentationDescription) {
        return new MediaCodecAudioTrackRenderer(new ChunkSampleSource(new DashChunkSource(mediaPresentationDescription, DefaultDashTrackSelector.newAudioInstance(), new DefaultUriDataSource(context, (TransferListener) bandwidthMeter, str), new FixedEvaluator()), new DefaultLoadControl(allocator), 327680), MediaCodecSelector.DEFAULT, handler, eventListener);
    }
}
