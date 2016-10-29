package com.twitter.android.util;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.AsyncTask;
import com.google.android.exoplayer.util.MimeTypes;
import defpackage.bdb;

/* compiled from: Twttr */
public class ad {
    private static ad a;
    private final AudioManager b;
    private SoundPool c;
    private int[] d;
    private int e;

    private ad(Context context) {
        this.b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.e = 0;
    }

    public static synchronized ad a(Context context) {
        ad adVar;
        synchronized (ad.class) {
            Context applicationContext = context.getApplicationContext();
            if (a == null) {
                a = new ad(applicationContext);
            }
            adVar = a;
            if (adVar.e == 0) {
                adVar.b(applicationContext);
            }
            adVar.e++;
        }
        return adVar;
    }

    private void b(Context context) {
        this.d = new int[]{r0.load(context, bdb.psst1, 1), r0.load(context, bdb.psst2, 1), r0.load(context, bdb.pop, 1), new SoundPool(2, 5, 0).load(context, bdb.tick, 1)};
        this.c = r0;
    }

    public void a() {
        if (this.e > 0) {
            this.e--;
        }
        if (this.e == 0 && this.c != null) {
            for (int unload : this.d) {
                this.c.unload(unload);
            }
            a(this.c);
            this.c = null;
            this.d = null;
        }
    }

    public int a(int i) {
        if (this.c == null) {
            return 0;
        }
        if (this.b == null || !this.b.isMusicActive()) {
            return this.c.play(this.d[i], 1.0f, 1.0f, 0, 0, 1.0f);
        }
        return 0;
    }

    private static void a(SoundPool soundPool) {
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new ae(soundPool));
    }
}
