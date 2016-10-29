package com.twitter.internal.android.service;

import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ AsyncOperation b;
    final /* synthetic */ i c;
    final /* synthetic */ AsyncService d;

    e(AsyncService asyncService, Runnable runnable, AsyncOperation asyncOperation, i iVar) {
        this.d = asyncService;
        this.a = runnable;
        this.b = asyncOperation;
        this.c = iVar;
    }

    public void run() {
        if (this.a != null) {
            int i = this.b.i();
            this.d.a(this.d.e.a(ExecutionClass.LOCAL_DISK), new f(this, i));
            return;
        }
        a(this.c);
    }

    private void a(i iVar) {
        iVar.b(new g(this, iVar));
        iVar.a();
    }
}
