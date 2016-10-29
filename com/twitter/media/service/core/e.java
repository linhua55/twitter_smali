package com.twitter.media.service.core;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class e implements ServiceConnection {
    final /* synthetic */ MediaServiceClient a;
    private Messenger b;
    private final SparseArray<g> c;

    private e(MediaServiceClient mediaServiceClient) {
        this.a = mediaServiceClient;
        this.c = new SparseArray();
    }

    public void a() {
        this.a.b.bindService(new Intent(this.a.b, MediaService.class), this, 1);
    }

    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.b = new Messenger(iBinder);
        if (this.c.size() > 0) {
            for (int i = 0; i < this.c.size(); i++) {
                c((g) this.c.valueAt(i));
            }
            this.c.clear();
        }
        this.a.a();
    }

    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            this.b = null;
            synchronized (this.a.c) {
                List list;
                if (this.a.c.isEmpty()) {
                    list = null;
                } else {
                    list = new ArrayList(this.a.c.values());
                    this.a.c.clear();
                }
            }
        }
        if (r0 != null) {
            for (g a : r0) {
                MediaServiceClient.b(a, null);
            }
        }
        a();
    }

    private void c(g gVar) {
        synchronized (this.a.c) {
            this.a.c.put(Integer.valueOf(gVar.a), gVar);
        }
        Message obtain = Message.obtain(null, gVar.b, gVar.a, 0, null);
        obtain.setData(gVar.c);
        obtain.replyTo = this.a.c();
        try {
            this.b.send(obtain);
        } catch (Exception e) {
            synchronized (this.a.c) {
            }
            this.a.c.remove(Integer.valueOf(gVar.a));
            MediaServiceClient.b(gVar, null);
        }
    }

    public synchronized void a(g gVar) {
        if (this.b != null) {
            c(gVar);
        } else {
            this.c.put(gVar.a, gVar);
        }
    }

    public synchronized void b(g gVar) {
        this.c.remove(gVar.a);
    }
}
