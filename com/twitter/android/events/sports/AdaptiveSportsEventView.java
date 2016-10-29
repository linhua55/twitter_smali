package com.twitter.android.events.sports;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.TextView;
import bbu;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.SearchActivity;
import com.twitter.android.events.b;
import com.twitter.android.events.sports.cricket.EventAlarmBroadcastReceiver;
import com.twitter.android.util.bn;
import com.twitter.android.util.p;
import com.twitter.android.widget.SportsEventView;
import com.twitter.android.widget.TopicView;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.topic.g;
import defpackage.bcu;

/* compiled from: Twttr */
public class AdaptiveSportsEventView extends SportsEventView implements OnClickListener {
    private final Context g;
    private String h;
    private TextView i;
    private CheckBox j;
    private String k;
    private int l;
    private final p m;

    public AdaptiveSportsEventView(Context context) {
        this(context, null, 0);
    }

    public AdaptiveSportsEventView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdaptiveSportsEventView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = new p();
        this.g = context;
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.i = (TextView) findViewById(2131951848);
        this.j = (CheckBox) findViewById(2131951930);
        bn.a(this.a, 2);
        bn.a(this.i, 2);
        setOnClickListener(this);
    }

    public void a(String str, int i, String str2, String str3, String str4, String str5, String str6, int i2, long j, String str7, String str8, byte[] bArr, boolean z, boolean z2, Long l, String str9, String str10, String str11, String str12) {
        super.a(str, i, str2, str3, str4, str5, str6, i2, j, str7, str8, bArr, z, z2, l, str9, str10, str11, str12);
        this.k = str;
        this.h = str7;
        this.l = i;
        if ("SCHEDULED".equals(str12) && str5 != null && ((d.a("cricket_experience_tournament_remindme_enabled") && b.c(str)) || (d.a("soccer_experience_tournament_remindme_enabled") && b.d(str)))) {
            Intent intent = new Intent(this.g, EventAlarmBroadcastReceiver.class);
            intent.putExtra("key_event_alarm_type", "event_alarm_cricket").putExtra("query", str5).putExtra("terminal", true).putExtra("seed_hashtag", str5).putExtra("search_src_ref", "ref_src_notification");
            PendingIntent broadcast = PendingIntent.getBroadcast(this.g, str.hashCode(), intent, C.SAMPLE_FLAG_DECODE_ONLY);
            this.j.setVisibility(0);
            SharedPreferences sharedPreferences = this.g.getSharedPreferences("adaptive_sports", 0);
            long j2 = sharedPreferences.getLong(str, -1);
            this.j.setOnCheckedChangeListener(null);
            if (j2 == -1) {
                this.j.setChecked(false);
                this.j.setText(this.g.getResources().getString(2131363460));
            } else {
                this.j.setChecked(true);
                this.j.setText(this.g.getResources().getString(2131363464));
            }
            this.j.setOnCheckedChangeListener(new a(this, sharedPreferences, j, broadcast, str));
            return;
        }
        this.j.setVisibility(8);
    }

    protected void a(g gVar, Resources resources, String str, long j, String str2) {
        boolean z = true;
        switch (str2.hashCode()) {
            case -1669082995:
                if (str2.equals("SCHEDULED")) {
                    z = false;
                    break;
                }
                break;
            case -1031784143:
                if (str2.equals("CANCELLED")) {
                    z = true;
                    break;
                }
                break;
            case -604548089:
                if (str2.equals("IN_PROGRESS")) {
                    z = true;
                    break;
                }
                break;
            case 510149230:
                if (str2.equals("POSTPONED")) {
                    z = true;
                    break;
                }
                break;
            case 1383663147:
                if (str2.equals("COMPLETED")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case Util.TYPE_DASH /*0*/:
                if (j > 0) {
                    this.m.a(this.a, j, false);
                    ((AdaptiveTeamRowView) this.c).b();
                    ((AdaptiveTeamRowView) this.d).b();
                    this.a.setTextColor(resources.getColor(bcu.medium_gray));
                    break;
                }
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                TopicView.a(this.a, resources.getString(2131363378));
                ((AdaptiveTeamRowView) this.c).b();
                ((AdaptiveTeamRowView) this.d).b();
                this.a.setTextColor(resources.getColor(bcu.medium_gray));
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                TopicView.a(this.a, resources.getString(2131362043));
                ((AdaptiveTeamRowView) this.c).b();
                ((AdaptiveTeamRowView) this.d).b();
                this.a.setTextColor(resources.getColor(bcu.medium_gray));
                break;
            case Util.TYPE_OTHER /*3*/:
                ((AdaptiveTeamRowView) this.c).a();
                ((AdaptiveTeamRowView) this.d).a();
                this.a.setTextColor(resources.getColor(bcu.faded_blue));
                if (!b.c(str) && !b.e(str)) {
                    if (b.d(str)) {
                        TopicView.a(this.a, resources.getString(2131362922));
                        break;
                    }
                }
                TopicView.a(this.a, resources.getString(2131363348));
                break;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                TopicView.a(this.a, resources.getString(2131362282));
                ((AdaptiveTeamRowView) this.c).b();
                ((AdaptiveTeamRowView) this.d).b();
                this.a.setTextColor(resources.getColor(bcu.medium_gray));
                break;
        }
        TopicView.a(this.i, gVar.e, 1);
        if (b.d(str) || b.e(str)) {
            if ("IN_PROGRESS".equals(str2)) {
                this.i.setVisibility(0);
            } else {
                this.i.setVisibility(8);
            }
        }
        this.b.setVisibility(8);
    }

    public void onClick(View view) {
        this.g.startActivity(new Intent(this.g, SearchActivity.class).putExtra("query", this.h).putExtra("terminal", true).putExtra("search_button", true).putExtra("query_name", this.h));
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"search:games:" + b.a(this.k, this.l).toLowerCase() + "::click"}));
    }
}
