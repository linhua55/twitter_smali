package com.twitter.library.client;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.library.api.RateLimit;
import com.twitter.library.api.UserSettings;
import com.twitter.library.network.OAuth2Token;
import com.twitter.library.network.w;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class Session implements Parcelable {
    public static final Creator<Session> CREATOR;
    private LoginStatus a;
    private final String b;
    private boolean c;
    private String d;
    private OAuthToken e;
    private final OAuth2Token f;
    private TwitterUser g;
    private RateLimit h;
    private UserSettings i;
    private be j;

    /* compiled from: Twttr */
    public enum LoginStatus {
        LOGGED_OUT,
        LOGGING_IN,
        LOGGED_IN,
        LOGGING_OUT
    }

    static {
        CREATOR = new bd();
    }

    public Session() {
        this.b = aj.a(6);
        this.a = LoginStatus.LOGGED_OUT;
        this.f = new OAuth2Token("bearer_token", w.f);
    }

    public Session(Parcel parcel) {
        this.a = (LoginStatus) parcel.readSerializable();
        this.b = parcel.readString();
        this.d = parcel.readString();
        this.e = (OAuthToken) parcel.readParcelable(OAuthToken.class.getClassLoader());
        this.f = (OAuth2Token) parcel.readParcelable(OAuth2Token.class.getClassLoader());
        this.g = (TwitterUser) parcel.readParcelable(TwitterUser.class.getClassLoader());
    }

    public void a() {
        this.c = false;
        this.d = null;
        this.e = null;
        this.g = null;
        this.i = null;
        this.j = null;
    }

    public LoginStatus b() {
        return this.a;
    }

    public void a(LoginStatus loginStatus) {
        this.a = loginStatus;
    }

    public String c() {
        return this.b;
    }

    public boolean d() {
        return this.a.equals(LoginStatus.LOGGED_IN);
    }

    public String e() {
        return this.d;
    }

    public TwitterUser f() {
        return this.g;
    }

    public void a(TwitterUser twitterUser) {
        Object obj = (twitterUser == null || twitterUser.a(this.g)) ? null : 1;
        this.g = twitterUser;
        if (this.j != null && obj != null) {
            this.j.a();
        }
    }

    public long g() {
        return this.g != null ? this.g.c : 0;
    }

    public OAuthToken h() {
        return this.e;
    }

    public void a(String str) {
        this.d = str;
    }

    public void a(OAuthToken oAuthToken) {
        this.e = oAuthToken;
    }

    public boolean i() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void a(RateLimit rateLimit) {
        if (rateLimit != null) {
            this.h = rateLimit;
        }
    }

    public UserSettings j() {
        return this.i;
    }

    public void a(UserSettings userSettings) {
        if (userSettings != null) {
            this.i = userSettings;
        }
    }

    public void a(be beVar) {
        this.j = beVar;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.d);
        parcel.writeParcelable(this.e, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeParcelable(this.g, i);
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && getClass() == obj.getClass() && this.b.equals(((Session) obj).b));
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
