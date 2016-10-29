package com.twitter.android;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class UserAccount implements Parcelable {
    public static final Creator<UserAccount> CREATOR;
    public final Account a;
    public final TwitterUser b;

    static {
        CREATOR = new wu();
    }

    public UserAccount(Account account, TwitterUser twitterUser) {
        this.a = account;
        this.b = twitterUser;
    }

    public UserAccount(Parcel parcel) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.a = (Account) parcel.readParcelable(classLoader);
        this.b = (TwitterUser) parcel.readParcelable(classLoader);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, 0);
        parcel.writeParcelable(this.b, 0);
    }
}
