package com.twitter.android.util;

import android.content.Context;
import android.os.Bundle;
import bdl;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.client.c;
import com.twitter.android.timeline.aw;
import com.twitter.model.timeline.s;
import defpackage.aow;
import java.util.HashMap;

/* compiled from: Twttr */
public class a implements ay {
    private HashMap<Long, s> a;
    private HashMap<Integer, s> b;
    private final Context c;
    private final aow d;
    private final bdl<aw> e;

    public a(Context context, aow aow, bdl<aw> bdl_com_twitter_android_timeline_aw) {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = context;
        this.d = aow;
        this.e = bdl_com_twitter_android_timeline_aw;
    }

    public s a(long j) {
        return (s) this.a.get(Long.valueOf(j));
    }

    public void b(long j) {
        s sVar = (s) this.a.remove(Long.valueOf(j));
        if (sVar != null) {
            this.b.remove(Integer.valueOf(sVar.c));
        }
    }

    public void a() {
        this.a.clear();
        this.b.clear();
    }

    public void a(long j, int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                c.a(this.c).b(((s) this.a.get(Long.valueOf(j))).c);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                c.a(this.c).c(((s) this.a.get(Long.valueOf(j))).c);
                break;
        }
        b(j);
    }

    public void a(s sVar) {
        if (sVar.o > 0) {
            b(sVar);
        } else if (this.d != null) {
            new b(this.c, this, this.d).execute(new s[]{sVar});
        }
    }

    public void b(s sVar) {
        if (sVar.o > 0) {
            s sVar2 = (s) this.a.get(Long.valueOf(sVar.o));
            if (sVar2 == null) {
                sVar2 = (s) this.b.remove(Integer.valueOf(sVar.c));
                if (sVar2 != null) {
                    this.a.remove(Long.valueOf(sVar2.o));
                }
                sVar.a(false);
                this.a.put(Long.valueOf(sVar.o), sVar);
                this.b.put(Integer.valueOf(sVar.c), sVar);
                this.e.notifyDataSetChanged();
            } else if (sVar2.c == sVar.c) {
                sVar.a(false);
            }
        }
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        if (this.a != null) {
            bundle.putSerializable("state_action_prompts", this.a);
        }
        if (this.b != null) {
            bundle.putSerializable("state_action_prompt_ids", this.b);
        }
        return bundle;
    }

    public void a(Bundle bundle) {
        HashMap hashMap = (HashMap) bundle.getSerializable("state_action_prompts");
        if (hashMap != null) {
            this.a = hashMap;
        }
        hashMap = (HashMap) bundle.getSerializable("state_action_prompt_ids");
        if (hashMap != null) {
            this.b = hashMap;
        }
    }
}
