package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.view.View;
import bli;
import com.twitter.android.SearchActivity;
import com.twitter.android.mx;
import com.twitter.android.widget.highlights.b;
import com.twitter.android.widget.highlights.p;
import com.twitter.app.common.base.u;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.util.aj;
import java.util.Map;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;

/* compiled from: Twttr */
public class aw extends bb {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String m;
    public final String n;
    public final int o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    private final int t;

    public aw(String str, long j, bli bli, boolean z, String str2, String str3, int i, String str4, String str5, String str6, String str7, String str8, int i2, Cursor cursor) {
        super(str, j, 8, bli, z, str2, str3, cursor);
        this.a = str4;
        this.b = str6;
        this.c = str5;
        this.d = str7;
        this.t = i;
        if (!str6.startsWith("http://")) {
            if (!str6.startsWith("https://")) {
                this.m = "twitter://search?q=" + this.b;
                this.r = true;
                this.n = str8;
                this.o = i2;
                this.p = aj.b((CharSequence) str8);
                this.q = aj.b((CharSequence) str5);
            }
        }
        this.m = str6;
        this.r = false;
        this.n = str8;
        this.o = i2;
        this.p = aj.b((CharSequence) str8);
        this.q = aj.b((CharSequence) str5);
    }

    public int a() {
        return this.t;
    }

    public at a(View view) {
        return new ax(view, this.t);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new av(new b(Orientation.BOTTOM_TOP, new p(resources)), map);
    }

    public Intent a(Context context) {
        return new u().d(true).a(context, SearchActivity.class).putExtra("query", this.b).putExtra("q_source", "timeline");
    }

    public String b() {
        switch (this.t) {
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return "TYPE_HASHTAG";
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return "TYPE_TREND";
            case ControlMessage.CONTROL_BAN /*8*/:
                return "TYPE_NEWS";
            default:
                return "TYPE_URL";
        }
    }
}
