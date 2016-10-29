package com.facebook.datasource;

/* compiled from: Twttr */
class b implements Runnable {
    final /* synthetic */ g a;
    final /* synthetic */ AbstractDataSource b;

    b(AbstractDataSource abstractDataSource, g gVar) {
        this.b = abstractDataSource;
        this.a = gVar;
    }

    public void run() {
        this.a.d(this.b);
    }
}
