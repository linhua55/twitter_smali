package com.twitter.library.av.playback;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.chunk.VideoFormatSelectorUtil;
import com.google.android.exoplayer.hls.DefaultHlsTrackSelector;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.hls.HlsPlaylistParser;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.hls.PtsTimestampAdjusterProvider;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.UdpDataSource;
import com.twitter.config.d;
import com.twitter.model.av.AVMedia;
import defpackage.bdc;

/* compiled from: Twttr */
public class q extends a {
    private final ExoPlayerHelper b;

    public q(ExoPlayerHelper exoPlayerHelper, w wVar, Handler handler) {
        this(exoPlayerHelper, wVar, Factory.newInstance(2, a(), UdpDataSource.DEFAULT_MAX_PACKET_SIZE), handler);
    }

    public q(ExoPlayerHelper exoPlayerHelper, w wVar, ExoPlayer exoPlayer, Handler handler) {
        super(handler, wVar, exoPlayer);
        this.b = exoPlayerHelper;
    }

    void a(Context context, String str, AVMedia aVMedia) {
        if (p()) {
            Context applicationContext = context.getApplicationContext();
            this.b.a(applicationContext, str, this.h, new HlsPlaylistParser(), new r(this, applicationContext, str));
            return;
        }
        a(true, new RuntimeException(context.getString(bdc.av_playback_forbidden_device)));
    }

    boolean p() {
        return d.a("android_media_playback_use_hls_exoplayer", false);
    }

    void a(Context context, String str, HlsPlaylist hlsPlaylist) {
        if (hlsPlaylist instanceof HlsMasterPlaylist) {
            try {
                if (VideoFormatSelectorUtil.selectVideoFormatsForDefaultDisplay(context, ((HlsMasterPlaylist) hlsPlaylist).variants, null, false).length == 0) {
                    a(true, new IllegalStateException("No variants selected."));
                    return;
                }
            } catch (Exception e) {
                a(true, e);
                return;
            }
        }
        Handler o = o();
        Object defaultBandwidthMeter = new DefaultBandwidthMeter(o, null);
        Allocator iVar = new i(8192, 201);
        i iVar2 = new i(8192, 41);
        iVar.a(this);
        iVar2.a(this);
        HlsPlaylist hlsPlaylist2 = hlsPlaylist;
        HlsChunkSource hlsChunkSource = new HlsChunkSource(true, this.b.a(context, defaultBandwidthMeter, str), hlsPlaylist2, DefaultHlsTrackSelector.newDefaultInstance(context), defaultBandwidthMeter, new PtsTimestampAdjusterProvider(), 1);
        HlsSampleSource hlsSampleSource = new HlsSampleSource(r2, new DefaultLoadControl(iVar), 1638400, o, new s(this), 0);
        TrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(context, hlsSampleSource, MediaCodecSelector.DEFAULT, 1, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS, o, new t(this), -1);
        b(new MediaCodecAudioTrackRenderer(hlsSampleSource, MediaCodecSelector.DEFAULT, null, true, o, this));
        a(mediaCodecVideoTrackRenderer);
        h();
    }

    public void onPlayerSeekComplete() {
    }
}
