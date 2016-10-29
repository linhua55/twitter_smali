package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.bay;
import defpackage.baz;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class oi extends o implements bay {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<Object> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("dismiss_info_timeline_id_index", "CREATE INDEX dismiss_info_timeline_id_index ON dismiss_info (\n\ttimeline_id\n);"), new e("dismiss_info_feedback_action_id_index", "CREATE INDEX dismiss_info_feedback_action_id_index ON dismiss_info (\n\tfeedback_action_id\n);")};
        d = new String[]{"timeline_id", "feedback_action_id"};
        b.add(baz.class);
    }

    @aoa
    public oi(f fVar) {
        super(fVar);
        this.e = new ol(this, this.e_);
    }

    public final String a() {
        return "dismiss_info";
    }

    public final String b() {
        return "CREATE TABLE dismiss_info (\n\ttimeline_id INTEGER,\n\tfeedback_action_id INTEGER,\n\tUNIQUE (timeline_id, feedback_action_id),\n\tFOREIGN KEY (timeline_id) REFERENCES timeline (_id),\n\tFOREIGN KEY (feedback_action_id) REFERENCES feedback_action (_id)\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<Object> e() {
        return this.e;
    }
}
