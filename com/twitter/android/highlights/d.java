package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.twitter.android.profiles.i;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.view.m;

/* compiled from: Twttr */
public class d implements ar {
    public int a(int i) {
        return 2130968903;
    }

    public int b(int i) {
        return 2131362789;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        f fVar = (f) atVar;
        fVar.a.setOnClickListener(akVar);
        fVar.b.setOnClickListener(akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        Resources resources = context.getResources();
        e eVar = (e) asVar;
        f fVar = (f) atVar;
        fVar.c.setText(eVar.a.c());
        fVar.d.setText(resources.getString(2131364279, new Object[]{eVar.a.k}));
        if (eVar.a.n) {
            fVar.e.setVisibility(0);
        } else {
            fVar.e.setVisibility(8);
        }
        if (eVar.d) {
            fVar.f.setText(eVar.a(context, (m) akVar));
            fVar.f.setVisibility(0);
        } else {
            fVar.f.setVisibility(8);
        }
        fVar.g.setText(eVar.b(context, akVar));
        fVar.A.setTag(new aq(context, eVar.a, fVar.A, StoryScribeItem.a(eVar), str, str2));
        fVar.a.setTag(eVar.a);
        fVar.a.a(UserImageRequest.a(eVar.a.e));
        if (eVar.c) {
            fVar.b.a(i.a(eVar.a.G));
        } else {
            fVar.b.a(null);
        }
    }
}
