package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.aup;
import defpackage.auq;
import java.util.Collection;

/* compiled from: Twttr */
public final class au extends q implements aup {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<auq> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "notifications_tab_type", "notifications_tab_data_type", "notifications_tab_data_id", "notifications_tab_sort_id", "notifications_tab_max_position", "notifications_tab_min_position", "notifications_tab_is_last", "notifications_tab_is_unread", "activities__id", "activities_type", "activities_event", "activities_created_at", "activities_hash", "activities_max_position", "activities_min_position", "activities_sources_size", "activities_source_type", "activities_sources", "activities_targets_size", "activities_target_type", "activities_targets", "activities_target_objects_size", "activities_target_object_type", "activities_target_objects", "activities_is_last", "activities_tag"};
    }

    @aoa
    public au(f fVar) {
        super(fVar);
        this.d = new ay(this, this.e_);
    }

    public final String a() {
        return "notifications_tab_view";
    }

    public final String b() {
        return "CREATE VIEW notifications_tab_view\n\tAS SELECT\n\t\tnotifications_tab._id AS _id,\n\t\tnotifications_tab.type AS notifications_tab_type,\n\t\tnotifications_tab.data_type AS notifications_tab_data_type,\n\t\tnotifications_tab.data_id AS notifications_tab_data_id,\n\t\tnotifications_tab.sort_id AS notifications_tab_sort_id,\n\t\tnotifications_tab.max_position AS notifications_tab_max_position,\n\t\tnotifications_tab.min_position AS notifications_tab_min_position,\n\t\tnotifications_tab.is_last AS notifications_tab_is_last,\n\t\tnotifications_tab.is_unread AS notifications_tab_is_unread,\n\t\tactivities._id AS activities__id,\n\t\tactivities.type AS activities_type,\n\t\tactivities.event AS activities_event,\n\t\tactivities.created_at AS activities_created_at,\n\t\tactivities.hash AS activities_hash,\n\t\tactivities.max_position AS activities_max_position,\n\t\tactivities.min_position AS activities_min_position,\n\t\tactivities.sources_size AS activities_sources_size,\n\t\tactivities.source_type AS activities_source_type,\n\t\tactivities.sources AS activities_sources,\n\t\tactivities.targets_size AS activities_targets_size,\n\t\tactivities.target_type AS activities_target_type,\n\t\tactivities.targets AS activities_targets,\n\t\tactivities.target_objects_size AS activities_target_objects_size,\n\t\tactivities.target_object_type AS activities_target_object_type,\n\t\tactivities.target_objects AS activities_target_objects,\n\t\tactivities.is_last AS activities_is_last,\n\t\tactivities.tag AS activities_tag\n\tFROM notifications_tab\n\tLEFT OUTER JOIN activities AS activities ON notifications_tab_data_type=0 AND notifications_tab_data_id=activities_max_position;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<auq> d() {
        return this.d;
    }
}
