package com.twitter.android.widget;

import android.app.Dialog;
import android.os.AsyncTask;
import bdj;
import com.twitter.library.api.al;
import com.twitter.util.aj;

/* compiled from: Twttr */
class fw extends AsyncTask<String, Void, Boolean> {
    final /* synthetic */ TwitterAccessPreference a;

    private fw(TwitterAccessPreference twitterAccessPreference) {
        this.a = twitterAccessPreference;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    protected void onPreExecute() {
        this.a.f.setVisibility(8);
        this.a.b.setVisibility(8);
        this.a.e.setVisibility(0);
    }

    protected Boolean a(String... strArr) {
        boolean z = false;
        Object obj = strArr[0];
        if (aj.a(obj)) {
            return Boolean.valueOf(false);
        }
        al a = TwitterAccessPreference.a(this.a.getContext().getString(2131364332) + "&carrier=" + obj);
        if (a != null) {
            bdj.a(this.a.getContext()).a(a, this.a.g);
        }
        if (a != null) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    protected void a(Boolean bool) {
        if (bool.booleanValue()) {
            this.a.g.edit().putString("twitter_access_carrier", this.a.c.getText().toString()).apply();
            this.a.b("TwitterAccess set for " + this.a.c.getText());
            Dialog dialog = this.a.getDialog();
            if (dialog != null) {
                dialog.dismiss();
            }
        } else {
            this.a.b("Invalid carrier for TwitterAccess.");
            this.a.e.setVisibility(8);
            this.a.f.setVisibility(0);
            this.a.b.setVisibility(0);
        }
        this.a.setSummary(this.a.a(this.a.g));
    }
}
