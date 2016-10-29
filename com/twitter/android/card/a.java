package com.twitter.android.card;

import android.content.Intent;
import byy;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import defpackage.cgl;
import defpackage.cni;
import java.util.ArrayList;

/* compiled from: Twttr */
public interface a {
    void a(long j, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation);

    void a(Intent intent);

    void a(Session session, Tweet tweet, String str);

    void a(TwitterScribeAssociation twitterScribeAssociation, Tweet tweet, String str);

    void a(Tweet tweet, TwitterScribeAssociation twitterScribeAssociation);

    void a(String str);

    void a(String str, long j, cgl cgl, cni cni);

    void a(String str, Tweet tweet);

    void a(String str, String str2);

    void a(String str, String str2, String str3, boolean z, boolean z2, Tweet tweet);

    void a(ArrayList<ImageSpec> arrayList, int i, TwitterScribeAssociation twitterScribeAssociation);

    boolean a(byy byy, String str);

    boolean b(String str);

    boolean b(String str, String str2);

    void c(String str);

    boolean c(String str, String str2);

    boolean d(String str);
}
