package defpackage;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;

/* compiled from: Twttr */
/* renamed from: dck */
public class dck {
    public boolean a(Context context, OnAudioFocusChangeListener onAudioFocusChangeListener) {
        int requestAudioFocus = ((AudioManager) context.getSystemService("audio")).requestAudioFocus(onAudioFocusChangeListener, 3, 1);
        if (requestAudioFocus == 1) {
            return true;
        }
        ddj.e("AudioHelper", "Audio focus request unsuccessful, response code " + requestAudioFocus, null);
        return false;
    }

    public void b(Context context, OnAudioFocusChangeListener onAudioFocusChangeListener) {
        ((AudioManager) context.getSystemService("audio")).abandonAudioFocus(onAudioFocusChangeListener);
    }
}
