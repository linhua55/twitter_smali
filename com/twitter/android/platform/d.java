package com.twitter.android.platform;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.twitter.android.AuthenticatorActivity;
import com.twitter.android.LoginActivity;
import com.twitter.android.RemoveAccountActivity;
import com.twitter.library.util.b;
import defpackage.bek;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;

/* compiled from: Twttr */
public class d extends AbstractAccountAuthenticator {
    private final Context a;

    public d(Context context) {
        super(context);
        this.a = context;
    }

    public Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) throws NetworkErrorException {
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("intent", new Intent(this.a, LoginActivity.class).putExtra("add_account", true).putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse));
        return bundle2;
    }

    public Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
        throw new UnsupportedOperationException();
    }

    public Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) throws NetworkErrorException {
        Parcelable intent = new Intent(this.a, AuthenticatorActivity.class);
        intent.putExtra(UsernameError.USERNAME_ERROR_FIELD, account.name);
        intent.putExtra("confirm_credentials", true);
        intent.putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("intent", intent);
        return bundle2;
    }

    public Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) {
        Parcelable intent = new Intent(this.a, AuthenticatorActivity.class);
        intent.putExtra(UsernameError.USERNAME_ERROR_FIELD, account.name);
        intent.putExtra("auth_token_type", str);
        intent.putExtra("confirm_credentials", false);
        intent.putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("intent", intent);
        return bundle2;
    }

    public Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        Bundle bundle2;
        if (str.equals("com.twitter.android.oauth.token") || str.equals("com.twitter.android.oauth.token.secret")) {
            String peekAuthToken = AccountManager.get(this.a).peekAuthToken(account, str);
            if (peekAuthToken != null) {
                bundle2 = new Bundle();
                bundle2.putString("authAccount", account.name);
                bundle2.putString("accountType", b.a);
                bundle2.putString("authtoken", peekAuthToken);
                return bundle2;
            }
            Parcelable intent = new Intent(this.a, AuthenticatorActivity.class);
            intent.putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
            intent.putExtra(UsernameError.USERNAME_ERROR_FIELD, account.name);
            intent.putExtra("auth_token_type", str);
            bundle2 = new Bundle();
            bundle2.putParcelable("intent", intent);
            return bundle2;
        }
        bundle2 = new Bundle();
        bundle2.putString("errorMessage", "invalid authTokenType");
        return bundle2;
    }

    public String getAuthTokenLabel(String str) {
        return this.a.getString(2131361897);
    }

    public Bundle getAccountRemovalAllowed(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account) throws NetworkErrorException {
        if (bek.a(this.a, account.name)) {
            this.a.startActivity(new Intent(this.a, RemoveAccountActivity.class).putExtra("RemoveAccountActivity_account_name", account.name).putExtra("authenticator_response", accountAuthenticatorResponse).putExtra("from_system_settings", true).setFlags(268435456));
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("booleanResult", true);
        return bundle;
    }

    public Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) throws NetworkErrorException {
        Bundle bundle = new Bundle();
        bundle.putBoolean("booleanResult", false);
        return bundle;
    }
}
