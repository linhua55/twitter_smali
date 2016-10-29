package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.baz;
import defpackage.bba;
import defpackage.bbb;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class or extends o implements bba {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<bbb> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[0];
        d = new String[]{"_id", "feedback_type", "prompt", "confirmation"};
        b.add(baz.class);
    }

    @aoa
    public or(f fVar) {
        super(fVar);
        this.e = new ou(this, this.e_);
    }

    public final String a() {
        return "feedback_action";
    }

    public final String b() {
        return "CREATE TABLE feedback_action (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\tfeedback_type TEXT,\n\tprompt TEXT,\n\tconfirmation TEXT,\n\tUNIQUE (feedback_type, prompt, confirmation)\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<bbb> e() {
        return this.e;
    }
}
