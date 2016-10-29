package com.twitter.library.api;

import android.content.Context;
import android.os.Bundle;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class ac extends b<as> {
    protected /* synthetic */ c f() {
        return b();
    }

    public ac(Context context, Session session) {
        this(context, new ab(session));
    }

    public ac(Context context, ab abVar) {
        super(context, ac.class.getName(), abVar);
    }

    protected d a() {
        int M = M();
        Bundle bundle = this.o;
        long j = bundle.getLong("user_id");
        int i = bundle.getInt("prompt_id");
        e a = K().a(RequestMethod.b).a("prompts", "record_event").a("user_id", String.valueOf(j)).a("prompt_id", String.valueOf(i));
        switch (M) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a.a("action", "acted_on");
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                a.a("action", "dismissed");
                break;
            case Util.TYPE_OTHER /*3*/:
                a.a("action", "shown");
                break;
            default:
                throw new IllegalArgumentException("Invalid action " + M);
        }
        return a.a();
    }

    protected as b() {
        return null;
    }
}
