package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

class f implements i {
    final /* synthetic */ FrameLayout a;
    final /* synthetic */ LayoutInflater b;
    final /* synthetic */ ViewGroup c;
    final /* synthetic */ Bundle d;
    final /* synthetic */ b e;

    f(b bVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.e = bVar;
        this.a = frameLayout;
        this.b = layoutInflater;
        this.c = viewGroup;
        this.d = bundle;
    }

    public int a() {
        return 2;
    }

    public void a(a aVar) {
        this.a.removeAllViews();
        this.a.addView(this.e.a.a(this.b, this.c, this.d));
    }
}
