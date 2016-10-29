package com.google.android.gms.internal;

class ih implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ id b;

    ih(id idVar, String str) {
        this.b = idVar;
        this.a = str;
    }

    public void run() {
        id.a(this.b).loadData(this.a, "text/html", Util.UTF_8);
    }
}
