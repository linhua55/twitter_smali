package com.twitter.android.moments.ui.maker.navigation;

import android.app.Activity;
import android.view.ViewGroup;
import java.util.ArrayDeque;
import java.util.Deque;

/* compiled from: Twttr */
public class l implements t {
    private final o a;
    private final Activity b;
    private final ViewGroup c;
    private final Deque<u> d;
    private final y e;
    private final k f;
    private boolean g;

    public l(Activity activity, ViewGroup viewGroup, k kVar, o oVar, y yVar) {
        this.b = activity;
        this.c = viewGroup;
        this.f = kVar;
        this.a = oVar;
        this.d = new ArrayDeque();
        this.e = yVar;
    }

    public void a(NavigationKey navigationKey) {
        if (!this.g) {
            u a = this.a.a(this, navigationKey, this.f);
            u uVar = (u) this.d.peek();
            z c = uVar != null ? uVar.c() : z.a;
            this.c.addView(a.a());
            this.d.push(a);
            this.g = true;
            this.e.a(v.a().a(uVar).b(a).a(c).d()).b(new m(this));
        }
    }

    public boolean a() {
        if (this.d.size() <= 1) {
            return false;
        }
        if (!this.g) {
            u uVar = (u) this.d.pop();
            u uVar2 = (u) this.d.peek();
            z c = uVar.c();
            this.g = true;
            this.e.a(v.a().a(uVar).b(uVar2).a(c).d()).b(new n(this, uVar));
        }
        return true;
    }
}
