package com.twitter.android.client;

import android.content.DialogInterface;
import com.twitter.app.common.base.m;
import com.twitter.library.api.search.e;
import com.twitter.library.client.az;

/* compiled from: Twttr */
class bd implements m {
    public String a;
    final /* synthetic */ SearchSuggestionController b;

    bd(SearchSuggestionController searchSuggestionController, String str) {
        this.b = searchSuggestionController;
        this.a = str;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 1 && i2 == -1) {
            e eVar = (e) new e(SearchSuggestionController.b(this.b), SearchSuggestionController.f(this.b).c()).d(2);
            eVar.c = this.a;
            az.a(SearchSuggestionController.b(this.b)).a(eVar);
            this.b.a();
        }
    }
}
