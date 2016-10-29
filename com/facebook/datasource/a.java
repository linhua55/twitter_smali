package com.facebook.datasource;

/* compiled from: Twttr */
class a implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ g b;
    final /* synthetic */ boolean c;
    final /* synthetic */ AbstractDataSource d;

    a(AbstractDataSource abstractDataSource, boolean z, g gVar, boolean z2) {
        this.d = abstractDataSource;
        this.a = z;
        this.b = gVar;
        this.c = z2;
    }

    public void run() {
        if (this.a) {
            this.b.b(this.d);
        } else if (this.c) {
            this.b.c(this.d);
        } else {
            this.b.a(this.d);
        }
    }
}
