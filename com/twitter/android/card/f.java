package com.twitter.android.card;

import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;
import defpackage.cmb;

/* compiled from: Twttr */
public interface f {
    TwitterScribeAssociation a();

    void a(long j);

    void a(cmb cmb);

    void a(PromotedEvent promotedEvent);

    void a(PromotedEvent promotedEvent, NativeCardUserAction nativeCardUserAction);

    void a(TwitterScribeAssociation twitterScribeAssociation);

    void a(Tweet tweet);

    void a(String str);

    void a(String str, String str2);

    void a(String str, String str2, NativeCardUserAction nativeCardUserAction);

    void a(String str, String str2, Tweet tweet);

    Tweet b();

    void b(TwitterScribeAssociation twitterScribeAssociation);

    void b(String str);

    void b(String str, String str2);

    void b(String str, String str2, NativeCardUserAction nativeCardUserAction);

    void c(String str, String str2);

    void c(String str, String str2, NativeCardUserAction nativeCardUserAction);

    void d(String str, String str2);

    void d(String str, String str2, NativeCardUserAction nativeCardUserAction);

    void e(String str, String str2, NativeCardUserAction nativeCardUserAction);
}
