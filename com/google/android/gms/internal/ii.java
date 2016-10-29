package com.google.android.gms.internal;

class ii implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ id b;

    ii(id idVar, String str) {
        this.b = idVar;
        this.a = str;
    }

    public void run() {
        id.a(this.b).loadUrl(this.a);
    }
}
