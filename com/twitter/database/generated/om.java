package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.baz;
import java.util.Collection;

/* compiled from: Twttr */
public final class om extends q implements baz {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<Object> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"dismiss_info_timeline_id", "dismiss_info_feedback_action_id", "feedback_action__id", "feedback_action_feedback_type", "feedback_action_prompt", "feedback_action_confirmation"};
    }

    @aoa
    public om(f fVar) {
        super(fVar);
        this.d = new oq(this, this.e_);
    }

    public final String a() {
        return "dismiss_info_view";
    }

    public final String b() {
        return "CREATE VIEW dismiss_info_view\n\tAS SELECT\n\t\tdismiss_info.timeline_id AS dismiss_info_timeline_id,\n\t\tdismiss_info.feedback_action_id AS dismiss_info_feedback_action_id,\n\t\tfeedback_action._id AS feedback_action__id,\n\t\tfeedback_action.feedback_type AS feedback_action_feedback_type,\n\t\tfeedback_action.prompt AS feedback_action_prompt,\n\t\tfeedback_action.confirmation AS feedback_action_confirmation\n\tFROM dismiss_info\n\tINNER JOIN feedback_action AS feedback_action ON dismiss_info_feedback_action_id=feedback_action__id;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<Object> d() {
        return this.d;
    }
}
