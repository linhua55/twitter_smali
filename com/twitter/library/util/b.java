package com.twitter.library.util;

import android.accounts.Account;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.ContentResolver;
import android.support.v7.recyclerview.BuildConfig;
import com.bluelinelabs.logansquare.LoganSquare;
import com.twitter.android.UserAccount;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.account.d;
import com.twitter.config.a;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.bg;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.core.JsonTwitterAccountUser;
import com.twitter.util.collection.MutableList;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.List;

/* compiled from: Twttr */
public class b {
    public static final String a;
    private static boolean b;

    static {
        a = a.a() + ".auth.login";
    }

    public static int a() {
        return b().b();
    }

    @Deprecated
    public static AccountManagerFuture<Boolean> a(String str) {
        com.twitter.app.common.account.a b = b(str);
        if (b != null) {
            return b.c();
        }
        return null;
    }

    public static boolean a(com.twitter.app.common.account.a aVar, String str) {
        return aVar != null && ContentResolver.getSyncAutomatically(aVar.a(), str);
    }

    public static void a(com.twitter.app.common.account.a aVar, String str, boolean z) {
        if (aVar != null && !b) {
            ContentResolver.setSyncAutomatically(aVar.a(), str, z);
        }
    }

    public static TwitterUser a(Account account) {
        return c(b().a(account));
    }

    public static void a(TwitterUser twitterUser) {
        com.twitter.app.common.account.a a = b().a(new UserIdentifier(twitterUser.c));
        if (a != null) {
            String a2 = a.a("account_user_info");
            String b = b(twitterUser);
            if (!b.equals(a2)) {
                a.a("account_user_info", b);
            }
        }
    }

    public static String b(TwitterUser twitterUser) {
        try {
            return LoganSquare.serialize(JsonTwitterAccountUser.a(twitterUser));
        } catch (IOException e) {
            return BuildConfig.VERSION_NAME;
        }
    }

    public static UserSettings a(com.twitter.app.common.account.a aVar) {
        String a = aVar.a("account_settings");
        if (a != null) {
            return UserSettings.a(a);
        }
        return null;
    }

    public static OAuthToken b(com.twitter.app.common.account.a aVar) {
        String c = aVar.c("com.twitter.android.oauth.token");
        String c2 = aVar.c("com.twitter.android.oauth.token.secret");
        if (c == null || c2 == null) {
            return null;
        }
        return new OAuthToken(c, c2);
    }

    public static OAuthToken a(Account account, boolean z) throws AuthenticatorException, OperationCanceledException, IOException {
        com.twitter.app.common.account.a a = b().a(account);
        String a2 = a.a("com.twitter.android.oauth.token", z);
        String a3 = a.a("com.twitter.android.oauth.token.secret", z);
        if (a2 == null || a3 == null) {
            return null;
        }
        return new OAuthToken(a2, a3);
    }

    public static TwitterUser c(com.twitter.app.common.account.a aVar) {
        if (aVar != null) {
            String a = aVar.a("account_user_info");
            if (a != null) {
                return c(a);
            }
        }
        return null;
    }

    @Deprecated
    public static com.twitter.app.common.account.a b(String str) {
        for (com.twitter.app.common.account.a aVar : b().c()) {
            if (aVar.d().equalsIgnoreCase(str)) {
                return aVar;
            }
        }
        return null;
    }

    public static com.twitter.app.common.account.a a(long j) {
        return b().a(new UserIdentifier(j));
    }

    public static com.twitter.app.common.account.a a(String str, OAuthToken oAuthToken) {
        TwitterUser c = c(str);
        if (c != null) {
            return a(c, oAuthToken);
        }
        return null;
    }

    private static com.twitter.app.common.account.a a(TwitterUser twitterUser, OAuthToken oAuthToken) {
        com.twitter.app.common.account.a a = b().a(new UserIdentifier(twitterUser.c), twitterUser.k);
        if (a == null) {
            return null;
        }
        a.a("account_user_info", b(twitterUser));
        a.b("com.twitter.android.oauth.token", oAuthToken.b);
        a.b("com.twitter.android.oauth.token.secret", oAuthToken.a);
        return a;
    }

    public static com.twitter.app.common.account.a b(com.twitter.app.common.account.a aVar, String str) {
        return b().a(aVar, str, new c());
    }

    public static void a(String str, TwitterUser twitterUser, UserSettings userSettings) {
        com.twitter.app.common.account.a b = b(str);
        if (b != null) {
            a(b, twitterUser, userSettings);
        }
    }

    public static void a(com.twitter.app.common.account.a aVar, TwitterUser twitterUser, UserSettings userSettings) {
        if (twitterUser != null) {
            aVar.a("account_user_info", b(twitterUser));
        }
        if (userSettings != null) {
            aVar.a("account_settings", userSettings.toString());
        }
    }

    public static UserAccount[] a(List<com.twitter.app.common.account.a> list) {
        int size = list.size();
        UserAccount[] userAccountArr = new UserAccount[size];
        for (int i = 0; i < size; i++) {
            userAccountArr[i] = new UserAccount(((com.twitter.app.common.account.a) list.get(i)).a(), c((com.twitter.app.common.account.a) list.get(i)));
        }
        return userAccountArr;
    }

    public static List<UserAccount> a(List<com.twitter.app.common.account.a> list, bg bgVar) {
        String e = bgVar.c().e();
        List<Long> d = bgVar.d();
        AbstractMap hashMap = new HashMap(d.size());
        List<UserAccount> a = MutableList.a();
        for (int i = 0; i < list.size(); i++) {
            com.twitter.app.common.account.a aVar = (com.twitter.app.common.account.a) list.get(i);
            if (!aVar.d().equals(e)) {
                UserAccount userAccount = new UserAccount(aVar.a(), c(aVar));
                if (userAccount.b != null) {
                    if (d.indexOf(Long.valueOf(userAccount.b.c)) != -1) {
                        hashMap.put(Long.valueOf(userAccount.b.c), userAccount);
                    } else {
                        a.add(userAccount);
                    }
                }
            }
        }
        for (Long longValue : d) {
            UserAccount userAccount2 = (UserAccount) hashMap.get(Long.valueOf(longValue.longValue()));
            if (userAccount2 != null) {
                a.add(0, userAccount2);
            }
        }
        return a;
    }

    private static TwitterUser c(String str) {
        try {
            JsonTwitterAccountUser jsonTwitterAccountUser = (JsonTwitterAccountUser) LoganSquare.parse(str, JsonTwitterAccountUser.class);
            if (jsonTwitterAccountUser != null) {
                return (TwitterUser) jsonTwitterAccountUser.b();
            }
        } catch (IOException e) {
        }
        return null;
    }

    private static d b() {
        return d.a();
    }
}
