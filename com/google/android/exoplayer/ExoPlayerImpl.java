package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent;
import com.google.android.exoplayer.ExoPlayer.Listener;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Twttr */
final class ExoPlayerImpl implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    private final Handler eventHandler;
    private final ExoPlayerImplInternal internalPlayer;
    private final CopyOnWriteArraySet<Listener> listeners;
    private int pendingPlayWhenReadyAcks;
    private boolean playWhenReady;
    private int playbackState;
    private final int[] selectedTrackIndices;
    private final MediaFormat[][] trackFormats;

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(int i, int i2, int i3) {
        Log.i(TAG, "Init 1.5.9");
        this.playWhenReady = false;
        this.playbackState = 1;
        this.listeners = new CopyOnWriteArraySet();
        this.trackFormats = new MediaFormat[i][];
        this.selectedTrackIndices = new int[i];
        this.eventHandler = new Handler() {
            public void handleMessage(Message message) {
                ExoPlayerImpl.this.handleEvent(message);
            }
        };
        this.internalPlayer = new ExoPlayerImplInternal(this.eventHandler, this.playWhenReady, this.selectedTrackIndices, i2, i3);
    }

    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public int getPlaybackState() {
        return this.playbackState;
    }

    public void prepare(TrackRenderer... trackRendererArr) {
        Arrays.fill(this.trackFormats, null);
        this.internalPlayer.prepare(trackRendererArr);
    }

    public int getTrackCount(int i) {
        return this.trackFormats[i] != null ? this.trackFormats[i].length : 0;
    }

    public MediaFormat getTrackFormat(int i, int i2) {
        return this.trackFormats[i][i2];
    }

    public void setSelectedTrack(int i, int i2) {
        if (this.selectedTrackIndices[i] != i2) {
            this.selectedTrackIndices[i] = i2;
            this.internalPlayer.setRendererSelectedTrack(i, i2);
        }
    }

    public int getSelectedTrack(int i) {
        return this.selectedTrackIndices[i];
    }

    public void setPlayWhenReady(boolean z) {
        if (this.playWhenReady != z) {
            this.playWhenReady = z;
            this.pendingPlayWhenReadyAcks++;
            this.internalPlayer.setPlayWhenReady(z);
            Iterator it = this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onPlayerStateChanged(z, this.playbackState);
            }
        }
    }

    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    public boolean isPlayWhenReadyCommitted() {
        return this.pendingPlayWhenReadyAcks == 0;
    }

    public void seekTo(long j) {
        this.internalPlayer.seekTo(j);
    }

    public void stop() {
        this.internalPlayer.stop();
    }

    public void release() {
        this.internalPlayer.release();
        this.eventHandler.removeCallbacksAndMessages(null);
    }

    public void sendMessage(ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        this.internalPlayer.sendMessage(exoPlayerComponent, i, obj);
    }

    public void blockingSendMessage(ExoPlayerComponent exoPlayerComponent, int i, Object obj) {
        this.internalPlayer.blockingSendMessage(exoPlayerComponent, i, obj);
    }

    public long getDuration() {
        return this.internalPlayer.getDuration();
    }

    public long getCurrentPosition() {
        return this.internalPlayer.getCurrentPosition();
    }

    public long getBufferedPosition() {
        return this.internalPlayer.getBufferedPosition();
    }

    public int getBufferedPercentage() {
        long j = 100;
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        if (bufferedPosition == -1 || duration == -1) {
            return 0;
        }
        if (duration != 0) {
            j = (100 * bufferedPosition) / duration;
        }
        return (int) j;
    }

    void handleEvent(Message message) {
        Iterator it;
        switch (message.what) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                System.arraycopy(message.obj, 0, this.trackFormats, 0, this.trackFormats.length);
                this.playbackState = message.arg1;
                it = this.listeners.iterator();
                while (it.hasNext()) {
                    ((Listener) it.next()).onPlayerStateChanged(this.playWhenReady, this.playbackState);
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.playbackState = message.arg1;
                it = this.listeners.iterator();
                while (it.hasNext()) {
                    ((Listener) it.next()).onPlayerStateChanged(this.playWhenReady, this.playbackState);
                }
            case Util.TYPE_OTHER /*3*/:
                this.pendingPlayWhenReadyAcks--;
                if (this.pendingPlayWhenReadyAcks == 0) {
                    it = this.listeners.iterator();
                    while (it.hasNext()) {
                        ((Listener) it.next()).onPlayWhenReadyCommitted();
                    }
                }
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
                Iterator it2 = this.listeners.iterator();
                while (it2.hasNext()) {
                    ((Listener) it2.next()).onPlayerError(exoPlaybackException);
                }
            case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                it = this.listeners.iterator();
                while (it.hasNext()) {
                    ((Listener) it.next()).onPlayerSeekComplete();
                }
            default:
        }
    }
}
