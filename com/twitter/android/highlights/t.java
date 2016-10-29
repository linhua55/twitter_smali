package com.twitter.android.highlights;

import android.content.Context;
import android.view.LayoutInflater;
import bqk;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.av;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.scribe.TwitterScribeAssociation;
import java.util.Map;

/* compiled from: Twttr */
public class t extends bo {
    private final Map<String, AVPlayerAttachment> a;
    private final ai b;
    private final TwitterScribeAssociation c;

    public t(Map<String, AVPlayerAttachment> map) {
        this.a = map;
        this.b = ai.a();
        this.c = (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b("highlights")).c("storystream");
    }

    public int a(int i) {
        if (i == 11) {
            return 2130968909;
        }
        return 2130968904;
    }

    public int b(int i) {
        if (i == 11) {
            return 2131362793;
        }
        return super.b(i);
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        super.a(atVar, layoutInflater, akVar);
        v vVar = (v) atVar;
        vVar.b.setOnClickListener(akVar);
        vVar.c.setOnClickListener(akVar);
        vVar.d.setOnClickListener(akVar);
        vVar.a.setOnMediaClickListener(akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        super.a(asVar, atVar, context, akVar, str, str2, z);
        u uVar = (u) asVar;
        v vVar = (v) atVar;
        if (uVar.a(context, b.a().b())) {
            AVPlayerAttachment aVPlayerAttachment = (AVPlayerAttachment) this.a.get(uVar.e);
            if (aVPlayerAttachment == null) {
                aVPlayerAttachment = new ar(this.b).a(new av().a(uVar.b)).a(this.c).a(context).a(bqk.c).b(false).a();
                this.a.put(uVar.e, aVPlayerAttachment);
            }
            uVar.a(context, vVar, aVPlayerAttachment);
        } else {
            uVar.a(vVar);
        }
        uVar.a(vVar, z);
    }
}
