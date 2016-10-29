package com.twitter.media.service.core;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.IBinder;
import android.os.Messenger;
import com.twitter.media.NativeCrashHandler;
import defpackage.cvi;
import java.io.File;

/* compiled from: Twttr */
public class MediaService extends Service {
    private static String a;
    private Messenger b;

    public void onCreate() {
        this.b = new Messenger(new b(getApplicationContext()));
        b();
    }

    private void b() {
        SharedPreferences sharedPreferences = getSharedPreferences("media_service_prefs", 0);
        Editor edit = sharedPreferences.edit();
        if (sharedPreferences.getBoolean("native_crash_handler_crashed", false)) {
            a = "Native crash handler crashed while being installed.";
            edit.putBoolean("native_crash_handler_crashed", false);
            edit.apply();
        }
        if (!sharedPreferences.getBoolean("native_crash_handler_disabled", false)) {
            edit.putBoolean("native_crash_handler_disabled", true);
            edit.putBoolean("native_crash_handler_crashed", true);
            edit.apply();
            NativeCrashHandler.a(new File(cvi.b((Context) this), "native_service_crash.log"), true, new a(this));
            edit.putBoolean("native_crash_handler_disabled", false);
            edit.putBoolean("native_crash_handler_crashed", false);
            edit.apply();
        }
    }

    public IBinder onBind(Intent intent) {
        return this.b.getBinder();
    }
}
