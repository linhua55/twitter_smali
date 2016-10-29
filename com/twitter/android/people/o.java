package com.twitter.android.people;

import com.twitter.database.lru.LruPolicy;
import com.twitter.database.lru.LruPolicy.Type;
import com.twitter.database.lru.ab;
import com.twitter.database.lru.ac;
import com.twitter.database.lru.l;
import com.twitter.model.people.ag;
import defpackage.auk;

/* compiled from: Twttr */
public class o {
    static ac<String, ag> a(auk auk) {
        return auk.a(l.a().a("ModuleCache").a(ag.a).a(new ab(new LruPolicy(Type.ENTRY_COUNT, 10), 0)).b());
    }
}
