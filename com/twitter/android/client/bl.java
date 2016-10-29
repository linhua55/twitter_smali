package com.twitter.android.client;

import android.os.Bundle;
import android.view.View;
import com.twitter.android.kr;
import com.twitter.library.scribe.TwitterScribeItem;

/* compiled from: Twttr */
public class bl implements kr<View, TwitterScribeItem> {
    final /* synthetic */ SearchSuggestionController a;

    public bl(SearchSuggestionController searchSuggestionController) {
        this.a = searchSuggestionController;
    }

    public void a(View view, TwitterScribeItem twitterScribeItem, Bundle bundle) {
        if (twitterScribeItem != null) {
            String c = SearchSuggestionController.c(this.a);
            if (SearchSuggestionController.d(this.a).a(twitterScribeItem.b, c)) {
                twitterScribeItem.w = c;
                twitterScribeItem.g = bundle.getInt("position") + 1;
                SearchSuggestionController.e(this.a).add(twitterScribeItem);
            }
        }
    }
}
