package com.twitter.android.eventtimelines.page;

import android.content.res.Resources;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.j;
import com.twitter.library.client.at;
import com.twitter.library.client.au;

/* compiled from: Twttr */
public class e implements d {
    public at a(f fVar, Resources resources, long j) {
        h a = a(fVar, j);
        au auVar = new au(fVar.a.buildUpon().appendQueryParameter("q", fVar.b).build(), fVar.g);
        auVar.a(resources.getString(fVar.k));
        auVar.a(fVar.i);
        auVar.a(a);
        return auVar.a();
    }

    private h a(f fVar, long j) {
        return ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) ((j) new j().b(2131362672)).h(true)).a("event_header_available", true)).a("should_shim", false)).a("fragment_page_number", fVar.l)).a("fetch_type", 5)).a("search_type", fVar.f)).b("scribe_page", fVar.h)).b("scribe_section", fVar.i)).a("scribe_item", fVar.j)).b("data_lookup_id", fVar.e)).b("query_rewrite_id", fVar.d)).b("q_source", "typed_query")).b("query", fVar.b)).b("query_name", fVar.c)).a("search_id", j)).b();
    }
}
