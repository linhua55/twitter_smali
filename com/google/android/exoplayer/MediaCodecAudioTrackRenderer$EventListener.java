package com.google.android.exoplayer;

import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;

/* compiled from: Twttr */
public interface MediaCodecAudioTrackRenderer$EventListener extends MediaCodecTrackRenderer$EventListener {
    void onAudioTrackInitializationError(InitializationException initializationException);

    void onAudioTrackUnderrun(int i, long j, long j2);

    void onAudioTrackWriteError(WriteException writeException);
}
