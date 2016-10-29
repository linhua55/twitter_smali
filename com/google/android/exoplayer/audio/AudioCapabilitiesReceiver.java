package com.google.android.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;

/* compiled from: Twttr */
public final class AudioCapabilitiesReceiver {
    AudioCapabilities audioCapabilities;
    private final Context context;
    private final Listener listener;
    private final BroadcastReceiver receiver;

    /* compiled from: Twttr */
    final class HdmiAudioPlugBroadcastReceiver extends BroadcastReceiver {
        private HdmiAudioPlugBroadcastReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                AudioCapabilities capabilities = AudioCapabilities.getCapabilities(intent);
                if (!capabilities.equals(AudioCapabilitiesReceiver.this.audioCapabilities)) {
                    AudioCapabilitiesReceiver.this.audioCapabilities = capabilities;
                    AudioCapabilitiesReceiver.this.listener.onAudioCapabilitiesChanged(capabilities);
                }
            }
        }
    }

    /* compiled from: Twttr */
    public interface Listener {
        void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities);
    }

    public AudioCapabilitiesReceiver(Context context, Listener listener) {
        BroadcastReceiver hdmiAudioPlugBroadcastReceiver;
        this.context = (Context) Assertions.checkNotNull(context);
        this.listener = (Listener) Assertions.checkNotNull(listener);
        if (Util.SDK_INT >= 21) {
            hdmiAudioPlugBroadcastReceiver = new HdmiAudioPlugBroadcastReceiver();
        } else {
            hdmiAudioPlugBroadcastReceiver = null;
        }
        this.receiver = hdmiAudioPlugBroadcastReceiver;
    }

    public AudioCapabilities register() {
        this.audioCapabilities = AudioCapabilities.getCapabilities(this.receiver == null ? null : this.context.registerReceiver(this.receiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
        return this.audioCapabilities;
    }

    public void unregister() {
        if (this.receiver != null) {
            this.context.unregisterReceiver(this.receiver);
        }
    }
}
