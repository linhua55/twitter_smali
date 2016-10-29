package com.twitter.android.events.sports;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: Twttr */
class a implements OnCheckedChangeListener {
    final /* synthetic */ SharedPreferences a;
    final /* synthetic */ long b;
    final /* synthetic */ PendingIntent c;
    final /* synthetic */ String d;
    final /* synthetic */ AdaptiveSportsEventView e;

    a(AdaptiveSportsEventView adaptiveSportsEventView, SharedPreferences sharedPreferences, long j, PendingIntent pendingIntent, String str) {
        this.e = adaptiveSportsEventView;
        this.a = sharedPreferences;
        this.b = j;
        this.c = pendingIntent;
        this.d = str;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        AlarmManager alarmManager = (AlarmManager) this.e.g.getSystemService("alarm");
        Editor edit = this.a.edit();
        if (z) {
            this.e.j.setText(this.e.g.getResources().getString(2131363464));
            alarmManager.set(0, this.b, this.c);
            edit.putLong(this.d, this.b);
        } else {
            this.e.j.setText(this.e.g.getResources().getString(2131363460));
            edit.remove(this.d);
            alarmManager.cancel(this.c);
        }
        edit.apply();
    }
}
