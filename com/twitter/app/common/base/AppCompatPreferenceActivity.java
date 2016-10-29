package com.twitter.app.common.base;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.support.annotation.LayoutRes;
import android.support.v7.app.AppCompatDelegate;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

/* compiled from: Twttr */
public abstract class AppCompatPreferenceActivity extends PreferenceActivity implements b {
    private AppCompatDelegate a;

    protected void onCreate(Bundle bundle) {
        c().installViewFactory();
        c().onCreate(bundle);
        super.onCreate(bundle);
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        c().onPostCreate(bundle);
    }

    public MenuInflater getMenuInflater() {
        return c().getMenuInflater();
    }

    public void setContentView(@LayoutRes int i) {
        c().setContentView(i);
    }

    public void setContentView(View view) {
        c().setContentView(view);
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        c().setContentView(view, layoutParams);
    }

    public void addContentView(View view, LayoutParams layoutParams) {
        c().addContentView(view, layoutParams);
    }

    protected void onPostResume() {
        super.onPostResume();
        c().onPostResume();
    }

    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        c().setTitle(charSequence);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c().onConfigurationChanged(configuration);
    }

    protected void onStop() {
        super.onStop();
        c().onStop();
    }

    protected void onDestroy() {
        super.onDestroy();
        c().onDestroy();
    }

    public void invalidateOptionsMenu() {
        c().invalidateOptionsMenu();
    }

    private AppCompatDelegate c() {
        if (this.a == null) {
            this.a = AppCompatDelegate.create((Activity) this, null);
        }
        return this.a;
    }

    public AppCompatDelegate H() {
        return c();
    }
}
