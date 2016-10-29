package com.twitter.internal.android.service;

import android.os.Process;

/* compiled from: Twttr */
class t extends w {
    final /* synthetic */ Runnable a;
    final /* synthetic */ r b;

    t(r rVar, int i, Runnable runnable) {
        this.b = rVar;
        this.a = runnable;
        super(i);
    }

    public void run() {
        int myTid = Process.myTid();
        int threadPriority = Process.getThreadPriority(myTid);
        Process.setThreadPriority(myTid, 19);
        try {
            this.a.run();
        } finally {
            Process.setThreadPriority(myTid, threadPriority);
            this.b.a();
        }
    }
}
