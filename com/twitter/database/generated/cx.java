package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.avv;
import defpackage.avw;
import java.util.Collection;

/* compiled from: Twttr */
public final class cx extends q implements avv {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<avw> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "conversation_entries_entry_id", "conversation_entries_sort_entry_id", "conversation_entries_conversation_id", "conversation_entries_user_id", "conversation_entries_created", "conversation_entries_entry_type", "conversation_entries_data", "conversation_entries_request_id", "users_username", "users_name", "users_image_url", "is_unread"};
    }

    @aoa
    public cx(f fVar) {
        super(fVar);
        this.d = new da(this, this.e_);
    }

    public final String a() {
        return "conversation";
    }

    public final String b() {
        return "CREATE VIEW conversation\n\tAS SELECT\n\t\tconversation_entries._id AS _id,\n\t\tconversation_entries.entry_id AS conversation_entries_entry_id,\n\t\tconversation_entries.sort_entry_id AS conversation_entries_sort_entry_id,\n\t\tconversation_entries.conversation_id AS conversation_entries_conversation_id,\n\t\tconversation_entries.user_id AS conversation_entries_user_id,\n\t\tconversation_entries.created AS conversation_entries_created,\n\t\tconversation_entries.entry_type AS conversation_entries_entry_type,\n\t\tconversation_entries.data AS conversation_entries_data,\n\t\tconversation_entries.request_id AS conversation_entries_request_id,\n\t\tusers.username AS users_username,\n\t\tusers.name AS users_name,\n\t\tusers.image_url AS users_image_url,\n\t\tconversation_entries.entry_id>conversations.last_read_event_id AS is_unread\n\tFROM conversation_entries\n\tLEFT OUTER JOIN users AS users ON conversation_entries_user_id=users.user_id\n\tLEFT OUTER JOIN conversations AS conversations ON conversation_entries_conversation_id=conversations.conversation_id;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<avw> d() {
        return this.d;
    }
}
