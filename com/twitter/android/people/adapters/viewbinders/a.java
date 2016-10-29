package com.twitter.android.people.adapters.viewbinders;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.FollowFlowController;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.j;
import com.twitter.android.people.bb;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class a extends g<j> {
    private final WeakReference<Activity> a;
    private final FollowFlowController b;
    private final d c;
    private final bb d;

    public a(Activity activity, FollowFlowController followFlowController, d dVar, bb bbVar) {
        this.c = dVar;
        this.a = new WeakReference(activity);
        this.b = followFlowController;
        this.d = bbVar;
    }

    public boolean a(i iVar) {
        return iVar instanceof j;
    }

    public View a(j jVar, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2130968618, viewGroup, false);
        e eVar = new e(inflate);
        inflate.setTag(eVar);
        eVar.b.setEndView(eVar.a);
        eVar.a.setOnClickListener(new b(this, jVar));
        eVar.b.setOnPromptClickListener(new c(this, jVar));
        return inflate;
    }

    public void a(View view, j jVar) {
        e eVar = (e) view.getTag();
        if (jVar.a) {
            eVar.a.setVisibility(0);
            eVar.a.setText(jVar.b.c.c);
            eVar.b.setVisibility(8);
            return;
        }
        eVar.a.setVisibility(4);
        eVar.b.setVisibility(0);
        eVar.b.setDismissVisibility(0);
        a(eVar.b, jVar);
    }

    private void b(j jVar) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            this.d.a(jVar);
            this.b.h().c(activity);
        }
    }

    public boolean a(j jVar) {
        return jVar.a;
    }
}
