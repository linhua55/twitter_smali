package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.avz;
import defpackage.awa;
import java.util.Collection;

/* compiled from: Twttr */
public final class df extends q implements avz {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<awa> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"conversations__id", "conversations_conversation_id", "conversations_title", "conversations_avatar_url", "conversations_type", "conversations_sort_event_id", "conversations_last_readable_event_id", "conversations_last_read_event_id", "conversations_sort_timestamp", "conversations_is_muted", "conversations_min_event_id", "conversations_is_hidden", "conversations_has_more", "conversations_read_only", "_id", "is_unread"};
    }

    @aoa
    public df(f fVar) {
        super(fVar);
        this.d = new di(this, this.e_);
    }

    public final String a() {
        return "dm_inbox";
    }

    public final String b() {
        return "CREATE VIEW dm_inbox\n\tAS SELECT\n\t\tconversations._id AS conversations__id,\n\t\tconversations.conversation_id AS conversations_conversation_id,\n\t\tconversations.title AS conversations_title,\n\t\tconversations.avatar_url AS conversations_avatar_url,\n\t\tconversations.type AS conversations_type,\n\t\tconversations.sort_event_id AS conversations_sort_event_id,\n\t\tconversations.last_readable_event_id AS conversations_last_readable_event_id,\n\t\tconversations.last_read_event_id AS conversations_last_read_event_id,\n\t\tconversations.sort_timestamp AS conversations_sort_timestamp,\n\t\tconversations.is_muted AS conversations_is_muted,\n\t\tconversations.min_event_id AS conversations_min_event_id,\n\t\tconversations.is_hidden AS conversations_is_hidden,\n\t\tconversations.has_more AS conversations_has_more,\n\t\tconversations.read_only AS conversations_read_only,\n\t\tconversations._id AS _id,\n\t\tconversations.last_readable_event_id>conversations.last_read_event_id AS is_unread\n\tFROM conversation_participants\n\tLEFT OUTER JOIN conversations AS conversations ON conversations_conversation_id=conversation_participants.conversation_id AND conversations_is_hidden=0\n\tGROUP BY conversations.conversation_id;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<awa> d() {
        return this.d;
    }
}
