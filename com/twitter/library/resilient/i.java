package com.twitter.library.resilient;

import bbu;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
class i extends AsyncOperation<Void, Void> {
    final /* synthetic */ h a;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    i(h hVar) {
        this.a = hVar;
        super(i.class.getName());
        a(ExecutionClass.c);
    }

    protected Void a() throws InterruptedException {
        List<d> d = h.a(this.a).d();
        Map hashMap = new HashMap();
        for (d dVar : d) {
            List list = (List) hashMap.get(Long.valueOf(dVar.d));
            if (list == null) {
                list = new ArrayList(5);
                hashMap.put(Long.valueOf(dVar.d), list);
            }
            list.add(dVar);
        }
        bg a = bg.a();
        for (Entry entry : hashMap.entrySet()) {
            String str;
            long longValue = ((Long) entry.getKey()).longValue();
            Session b = a.b(longValue);
            if (b.d()) {
                String str2 = "success";
                for (d dVar2 : (List) entry.getValue()) {
                    b a2 = this.a.a(b, dVar2);
                    if (a2 != null) {
                        if (a2.n()) {
                            str = "expired";
                            this.a.c(a2);
                        } else {
                            str = "resume";
                            a2.b(h.b(this.a));
                        }
                        bbu.a((TwitterScribeLog) new TwitterScribeLog(longValue).b(new String[]{"app:twitter_service:persistent_jobs:job", str}));
                    }
                }
                str = str2;
            } else {
                str = "failure";
            }
            bbu.a((TwitterScribeLog) new TwitterScribeLog(longValue).b(new String[]{"app:twitter_service:persistent_jobs:login", str}));
        }
        return null;
    }

    protected Void b() {
        return null;
    }
}
