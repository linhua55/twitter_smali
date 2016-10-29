package com.twitter.android.metrics;

import android.app.IntentService;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import bbn;
import cfb;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.bf;
import com.twitter.library.scribe.performance.PerformanceScribeLog;
import cvi;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;

/* compiled from: Twttr */
public class MetricsLoggerService extends IntentService {
    private static final HashMap<String, Integer> a;
    private static String b;
    private BufferedOutputStream c;

    static {
        a = new HashMap();
        a.put("write", Integer.valueOf(1));
        a.put("begin", Integer.valueOf(2));
        a.put(TtmlNode.END, Integer.valueOf(3));
        b = "/sdcard/twitter-metrics";
    }

    public MetricsLoggerService() {
        super("MetricsLogger");
        if (bf.a != null) {
            b = "/sdcard/" + bf.a;
        }
    }

    public void onCreate() {
        super.onCreate();
        try {
            File file = new File(b);
            if (!file.exists()) {
                file.createNewFile();
            }
        } catch (IOException e) {
        }
    }

    protected void onHandleIntent(Intent intent) {
        Throwable th;
        Integer num = (Integer) a.get(intent.getAction());
        int intValue = num == null ? 0 : num.intValue();
        try {
            this.c = new BufferedOutputStream(new FileOutputStream(b, true));
            switch (intValue) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    Closeable closeable = null;
                    Closeable randomAccessFile;
                    try {
                        File file = new File(b);
                        randomAccessFile = new RandomAccessFile(file, "r");
                        try {
                            if (file.length() > 0) {
                                randomAccessFile.seek(file.length() - 1);
                                if (91 != randomAccessFile.readByte()) {
                                    this.c.write(",".getBytes());
                                }
                            }
                            cvi.a(randomAccessFile);
                        } catch (IOException e) {
                            cvi.a(randomAccessFile);
                            ((PerformanceScribeLog) intent.getParcelableExtra("log")).a(this.c);
                            cvi.a(this.c);
                        } catch (Throwable th2) {
                            Throwable th3 = th2;
                            closeable = randomAccessFile;
                            th = th3;
                            cvi.a(closeable);
                            throw th;
                        }
                    } catch (IOException e2) {
                        randomAccessFile = null;
                        cvi.a(randomAccessFile);
                        ((PerformanceScribeLog) intent.getParcelableExtra("log")).a(this.c);
                        cvi.a(this.c);
                    } catch (Throwable th4) {
                        th = th4;
                        cvi.a(closeable);
                        throw th;
                    }
                    ((PerformanceScribeLog) intent.getParcelableExtra("log")).a(this.c);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    try {
                        this.c.write("\n[".getBytes());
                        break;
                    } catch (IOException e3) {
                        break;
                    }
                case Util.TYPE_OTHER /*3*/:
                    try {
                        this.c.write("]".getBytes());
                        this.c.flush();
                    } catch (IOException e4) {
                    }
                    LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(new Intent("write_finished"));
                    break;
            }
            cvi.a(this.c);
        } catch (IOException e5) {
            cfb.e("MetricsLogger", "symlink '/sdcard' doesn't exist");
        }
    }

    public void onDestroy() {
        try {
            this.c.close();
        } catch (Throwable e) {
            bbn.a(e);
        }
        super.onDestroy();
    }
}
