package com.twitter.library.av.playback;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer.EventListener;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.extractor.mp4.Mp4Extractor;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DefaultUriDataSource;
import com.google.android.exoplayer.upstream.UdpDataSource;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
public class u extends a {
    u(Handler handler, w wVar, ExoPlayer exoPlayer) {
        super(handler, wVar, exoPlayer);
    }

    public u(Handler handler, w wVar) {
        this(handler, wVar, Factory.newInstance(2, a(), UdpDataSource.DEFAULT_MAX_PACKET_SIZE));
    }

    void a(Context context, String str, AVMedia aVMedia) {
        Uri parse = Uri.parse(this.g.a());
        Allocator iVar = new i(8192, 201);
        iVar.a(this);
        SampleSource extractorSampleSource = new ExtractorSampleSource(parse, new DefaultUriDataSource(context, null, str), iVar, 1638400, new Mp4Extractor());
        TrackRenderer mediaCodecVideoTrackRenderer = new MediaCodecVideoTrackRenderer(context, extractorSampleSource, MediaCodecSelector.DEFAULT, 1, 0, o(), this, 0);
        b(new MediaCodecAudioTrackRenderer(extractorSampleSource, MediaCodecSelector.DEFAULT, o(), (EventListener) this));
        a(mediaCodecVideoTrackRenderer);
        h();
    }

    public void onPlayerSeekComplete() {
    }
}
