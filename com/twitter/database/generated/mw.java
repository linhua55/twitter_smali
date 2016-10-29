package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.bae;
import defpackage.baf;
import java.util.Collection;

/* compiled from: Twttr */
public final class mw extends q implements bae {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<baf> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "tokens_text", "tokens_weight", "tokens_type", "tokens_ref_id", "search_queries_query"};
    }

    @aoa
    public mw(f fVar) {
        super(fVar);
        this.d = new mz(this, this.e_);
    }

    public final String a() {
        return "tokens_topic_view";
    }

    public final String b() {
        return "CREATE VIEW tokens_topic_view\n\tAS SELECT\n\t\ttokens._id AS _id,\n\t\ttokens.text AS tokens_text,\n\t\ttokens.weight AS tokens_weight,\n\t\ttokens.type AS tokens_type,\n\t\ttokens.ref_id AS tokens_ref_id,\n\t\tsearch_queries.query AS search_queries_query\n\tFROM tokens\n\tLEFT OUTER JOIN search_queries AS search_queries ON tokens.ref_id=search_queries._id\n\tWHERE tokens.type=3;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<baf> d() {
        return this.d;
    }
}
