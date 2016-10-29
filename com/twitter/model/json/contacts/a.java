package com.twitter.model.json.contacts;

import com.twitter.model.core.TwitterUser;
import ctc;

/* compiled from: Twttr */
class a implements ctc<JsonContactMatch, TwitterUser> {
    final /* synthetic */ JsonUploadAndMatchContactsResponse a;

    a(JsonUploadAndMatchContactsResponse jsonUploadAndMatchContactsResponse) {
        this.a = jsonUploadAndMatchContactsResponse;
    }

    public TwitterUser a(JsonContactMatch jsonContactMatch) {
        return jsonContactMatch.a;
    }
}
