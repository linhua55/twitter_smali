package com.twitter.library.av.playback;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer.EventListener;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescriptionParser;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.upstream.UdpDataSource;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
public class o extends a {
    private final ExoPlayerHelper b;

    o(ExoPlayerHelper exoPlayerHelper, Handler handler, w wVar, ExoPlayer exoPlayer) {
        super(handler, wVar, exoPlayer);
        this.b = exoPlayerHelper;
    }

    public o(ExoPlayerHelper exoPlayerHelper, Handler handler, w wVar) {
        this(exoPlayerHelper, handler, wVar, Factory.newInstance(2, a(), UdpDataSource.DEFAULT_MAX_PACKET_SIZE));
    }

    void a(Context context, String str, AVMedia aVMedia) {
        this.b.a(context, str, aVMedia.a(), new MediaPresentationDescriptionParser(), new p(this, context, str));
    }

    void a(Context context, String str, MediaPresentationDescription mediaPresentationDescription) {
        Handler o = o();
        BandwidthMeter defaultBandwidthMeter = new DefaultBandwidthMeter(o, null);
        Allocator iVar = new i(8192, 201);
        i iVar2 = new i(8192, 41);
        iVar.a(this);
        iVar2.a(this);
        try {
            TrackRenderer a = this.b.a(context, defaultBandwidthMeter, str, o, (EventListener) this, iVar, mediaPresentationDescription);
            TrackRenderer a2 = this.b.a(context, defaultBandwidthMeter, str, o, (MediaCodecAudioTrackRenderer.EventListener) this, (Allocator) iVar2, mediaPresentationDescription);
            a(a);
            b(a2);
        } catch (Exception e) {
            a(true, e);
        }
        h();
    }

    public void onPlayerSeekComplete() {
    }
}
