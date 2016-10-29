package com.twitter.android.timeline;

import cgu;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.cr;
import com.twitter.model.timeline.cs;
import defpackage.che;
import java.util.List;

/* compiled from: Twttr */
public class cd extends aw {
    public final cgu<bd> a;
    public final cgu<bb> b;
    public final cr c;

    public cd(ar arVar, long j, aj ajVar, cgu<bd> cgu_com_twitter_android_timeline_bd, cgu<bb> cgu_com_twitter_android_timeline_bb, cr crVar) {
        super(arVar, j, ajVar);
        this.a = cgu_com_twitter_android_timeline_bd;
        this.b = cgu_com_twitter_android_timeline_bb;
        if (crVar == null) {
            crVar = (cr) new cs().q();
        }
        this.c = crVar;
    }

    public cgu<aw> aV_() {
        return new che().a(this.a).a(this.b).a();
    }

    public void a(List<Long> list, List<Long> list2, List<Long> list3) {
        switch (this.c.b) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                list.addAll(this.c.h);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
                list2.addAll(this.c.i);
            default:
                throw new IllegalStateException("Incapable of collecting content ids for Who To Follow type: " + this.c.b);
        }
    }
}
