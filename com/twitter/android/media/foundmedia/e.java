package com.twitter.android.media.foundmedia;

import android.content.Context;
import android.preference.PreferenceManager;
import android.support.annotation.UiThread;
import bdj;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.av.p;
import com.twitter.android.av.u;
import com.twitter.library.network.forecaster.b;
import com.twitter.util.telephony.TelephonyUtil;

@UiThread
/* compiled from: Twttr */
public class e {
    private static e a;
    private final Context b;
    private boolean c;

    public static e a(Context context) {
        if (a == null) {
            a = new e(context);
        }
        return a;
    }

    private e(Context context) {
        this.b = context.getApplicationContext();
        this.c = PreferenceManager.getDefaultSharedPreferences(this.b).getBoolean("auto_play_gifs", false);
    }

    public boolean a() {
        return this.c;
    }

    public boolean b() {
        if (!p.a() || bdj.a(this.b).b()) {
            return false;
        }
        String string = PreferenceManager.getDefaultSharedPreferences(this.b).getString("video_autoplay", u.a(b.a()));
        boolean z = true;
        switch (string.hashCode()) {
            case 104712844:
                if (string.equals("never")) {
                    z = false;
                    break;
                }
                break;
            case 349272948:
                if (string.equals("wifi_and_mobile")) {
                    z = true;
                    break;
                }
                break;
            case 1401048726:
                if (string.equals("wifi_only")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case Util.TYPE_DASH /*0*/:
                return false;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return TelephonyUtil.i().c();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return true;
            default:
                return false;
        }
    }

    public void a(boolean z) {
        this.c = z;
        PreferenceManager.getDefaultSharedPreferences(this.b).edit().putBoolean("auto_play_gifs", z).apply();
    }
}
