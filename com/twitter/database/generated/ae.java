package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.database.schema.k;
import com.twitter.database.schema.l;
import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public final class ae extends q implements k {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<l> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "activity_states_account_name", "activity_states_tweet", "activity_states_mention", "activity_states_unread_interactions", "activity_states_message", "activity_states_discover", "account_settings__id", "account_settings_account_name", "account_settings_notif_id", "account_settings_push_flags", "account_settings_vibrate", "account_settings_ringtone", "account_settings_interval", "account_settings_light"};
    }

    @aoa
    public ae(f fVar) {
        super(fVar);
        this.d = new ah(this, this.e_);
    }

    public final String a() {
        return "states_settings";
    }

    public final String b() {
        return "CREATE VIEW states_settings\n\tAS SELECT\n\t\tactivity_states._id AS _id,\n\t\tactivity_states.account_name AS activity_states_account_name,\n\t\tactivity_states.tweet AS activity_states_tweet,\n\t\tactivity_states.mention AS activity_states_mention,\n\t\tactivity_states.unread_interactions AS activity_states_unread_interactions,\n\t\tactivity_states.message AS activity_states_message,\n\t\tactivity_states.discover AS activity_states_discover,\n\t\taccount_settings._id AS account_settings__id,\n\t\taccount_settings.account_name AS account_settings_account_name,\n\t\taccount_settings.notif_id AS account_settings_notif_id,\n\t\taccount_settings.push_flags AS account_settings_push_flags,\n\t\taccount_settings.vibrate AS account_settings_vibrate,\n\t\taccount_settings.ringtone AS account_settings_ringtone,\n\t\taccount_settings.interval AS account_settings_interval,\n\t\taccount_settings.light AS account_settings_light\n\tFROM activity_states\n\tLEFT OUTER JOIN account_settings AS account_settings ON activity_states_account_name = account_settings_account_name;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<l> d() {
        return this.d;
    }
}
