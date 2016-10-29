package com.twitter.android.people;

import com.twitter.android.client.SearchSuggestionController;
import com.twitter.app.common.di.InjectionScope;

/* compiled from: Twttr */
public class be implements bd {
    private SearchSuggestionController a;

    public void a(SearchSuggestionController searchSuggestionController) {
        this.a = searchSuggestionController;
        this.a.b(1);
        this.a.a("people");
        this.a.c(2131363564);
    }

    public void a() {
        this.a.d();
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.VIEW) {
            this.a = null;
        }
    }
}
