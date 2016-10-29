package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class SuggestedPeopleRequest extends PsRequest {
    @op(a = "languages")
    public String[] languages;
    @op(a = "signup")
    public boolean signup;
    @op(a = "twitter_consumer")
    public String twitterSessionKey;
    @op(a = "twitter_secret")
    public String twitterSessionSecret;
}
