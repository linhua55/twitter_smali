package com.twitter.media.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.support.v4.util.SimpleArrayMap;
import com.twitter.util.collection.MutableList;
import com.twitter.util.h;
import java.util.List;

/* compiled from: Twttr */
class l {
    final MediaScannerConnection a;
    final List<o> b;
    final Context c;
    final Handler d;
    final SimpleArrayMap<String, p> e;

    l(Context context) {
        this.d = new Handler(Looper.getMainLooper());
        this.e = new SimpleArrayMap();
        this.c = context;
        this.b = MutableList.a();
        this.a = new MediaScannerConnection(context, new m(this));
        this.a.connect();
    }

    public void a(String str, String str2, p pVar) {
        h.c();
        if (pVar != null) {
            synchronized (this.e) {
                this.e.put(str, pVar);
            }
        }
        if (this.a.isConnected()) {
            this.a.scanFile(str, str2);
            return;
        }
        synchronized (this.b) {
            this.b.add(new o(str, str2));
        }
    }

    public boolean a() {
        boolean equals;
        h.c();
        ContentResolver contentResolver = this.c.getContentResolver();
        Cursor query;
        try {
            query = contentResolver.query(MediaStore.getMediaScannerUri(), new String[]{"volume"}, null, null, null);
            if (query == null) {
                return false;
            }
            if (query.getCount() == 1) {
                query.moveToFirst();
                equals = "external".equals(query.getString(0));
            } else {
                equals = false;
            }
            try {
                query.close();
                return equals;
            } catch (Exception e) {
                return equals;
            }
        } catch (Exception e2) {
            return false;
        } catch (Throwable th) {
            query.close();
        }
    }

    public synchronized boolean b() {
        boolean z = false;
        synchronized (this) {
            h.c();
            int i = 0;
            do {
                if (!a()) {
                    z = true;
                    break;
                }
                try {
                    Thread.sleep(250, 0);
                    i++;
                } catch (Exception e) {
                }
            } while (i != 3);
        }
        return z;
    }
}
