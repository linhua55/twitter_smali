package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.bbc;
import defpackage.bbd;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class ov extends o implements bbc {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<bbd> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("prompts_p_id_index", "CREATE INDEX prompts_p_id_index ON prompts (\n\tp_id\n);")};
        d = new String[]{"_id", "p_id", "p_format", "p_template", "p_header_text", "p_body_text", "p_primary_action_text", "p_secondary_action_text", "p_primary_action_url", "p_secondary_action_url", "p_primary_action_dismiss", "p_secondary_action_dismiss", "p_icon", "p_background_image_url", "p_persistence", "p_entities", "p_header_entities", "p_status_id", "p_insertion_index", "p_trigger", "p_dismissible"};
        b.add(bbg.class);
    }

    @aoa
    public ov(f fVar) {
        super(fVar);
        this.e = new oy(this, this.e_);
    }

    public final String a() {
        return "prompts";
    }

    public final String b() {
        return "CREATE TABLE prompts (\n\t_id INTEGER PRIMARY KEY,\n\tp_id INTEGER,\n\tp_format TEXT,\n\tp_template TEXT,\n\tp_header_text TEXT,\n\tp_body_text TEXT,\n\tp_primary_action_text TEXT,\n\tp_secondary_action_text TEXT,\n\tp_primary_action_url TEXT,\n\tp_secondary_action_url TEXT,\n\tp_primary_action_dismiss INTEGER,\n\tp_secondary_action_dismiss INTEGER,\n\tp_icon TEXT,\n\tp_background_image_url TEXT,\n\tp_persistence TEXT,\n\tp_entities BLOB /*NULLABLE*/,\n\tp_header_entities BLOB /*NULLABLE*/,\n\tp_status_id INTEGER,\n\tp_insertion_index INTEGER,\n\tp_trigger TEXT,\n\tp_dismissible INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<bbd> e() {
        return this.e;
    }
}
