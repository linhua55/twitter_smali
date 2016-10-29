package com.twitter.internal.android.service;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Process;
import bbl;
import bbn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* compiled from: Twttr */
public class z implements ServiceConnection {
    private AsyncService a;
    private Context b;
    private final LinkedHashMap<String, AsyncOperation> c;
    private final HashMap<String, AsyncOperation> d;
    private final ArrayList<AsyncOperation> e;
    private final int[] f;
    private final c g;

    public z() {
        this.b = null;
        this.c = new LinkedHashMap();
        this.d = new HashMap();
        this.e = new ArrayList();
        this.f = new int[0];
        this.g = new aa(this);
    }

    public z(Context context) {
        this.b = null;
        this.c = new LinkedHashMap();
        this.d = new HashMap();
        this.e = new ArrayList();
        this.f = new int[0];
        this.g = new aa(this);
        this.b = context;
    }

    private bbl a(Context context, IBinder iBinder) {
        bbl bbl = new bbl();
        bbl.a("binderType", iBinder.getClass().getName());
        bbl.a("processName", "N/A");
        if (context != null) {
            long myPid = (long) Process.myPid();
            for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (((long) runningAppProcessInfo.pid) == myPid) {
                    bbl.a("processName", runningAppProcessInfo.processName);
                    break;
                }
            }
        }
        return bbl;
    }

    public boolean a() {
        return this.a != null;
    }

    public String a(AsyncOperation asyncOperation) {
        String str = asyncOperation.d;
        asyncOperation.a(this.g);
        synchronized (this.f) {
            if (this.a != null) {
                this.d.put(str, asyncOperation);
                this.a.a(asyncOperation);
            } else {
                this.c.put(str, asyncOperation);
            }
        }
        return str;
    }

    public void a(boolean z) {
        synchronized (this.f) {
            this.e.addAll(this.c.values());
            this.c.clear();
            this.e.addAll(this.d.values());
            this.d.clear();
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                ((AsyncOperation) it.next()).cancel(z);
            }
            this.e.clear();
        }
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f) {
            try {
                this.a = ((n) iBinder).a();
                this.d.putAll(this.c);
                for (AsyncOperation a : this.c.values()) {
                    this.a.a(a);
                }
                this.c.clear();
            } catch (Throwable e) {
                bbl a2 = a(this.b, iBinder);
                a2.a(e);
                bbn.a(a2);
            }
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f) {
            this.a = null;
        }
    }

    public boolean a(String str) {
        boolean containsKey;
        synchronized (this.f) {
            containsKey = this.d.containsKey(str);
        }
        return containsKey;
    }

    public void a(String str, boolean z) {
        synchronized (this.f) {
            AsyncOperation asyncOperation = (AsyncOperation) this.d.remove(str);
            if (asyncOperation != null) {
                asyncOperation.cancel(z);
            }
            this.c.remove(str);
        }
    }

    public void a(u uVar) {
        synchronized (this.f) {
            AsyncService asyncService = this.a;
        }
        if (asyncService != null) {
            asyncService.a(uVar);
        }
    }
}
