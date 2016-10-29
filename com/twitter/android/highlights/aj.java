package com.twitter.android.highlights;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bli;
import com.twitter.android.mx;
import com.twitter.library.provider.ce;
import com.twitter.library.util.InvalidDataException;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.cp;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.search.TwitterUserMetadata;
import com.twitter.util.collection.x;
import com.twitter.util.serialization.m;
import defpackage.bbn;
import defpackage.ccc;
import defpackage.cdb;
import defpackage.cni;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class aj extends PagerAdapter {
    private final Context a;
    private final LayoutInflater b;
    private final ak c;
    private final am d;
    private final List<as> e;
    private final Map<Object, String> f;
    private Map<String, Integer> g;
    private Map<String, Integer> h;
    private int i;
    private int j;
    private final int k;
    private final String l;
    private final String m;
    private String n;
    private as o;

    public aj(Context context, am amVar, ak akVar, String str, String str2, int i) {
        this.e = new ArrayList();
        this.f = new HashMap();
        this.g = null;
        this.h = null;
        this.i = 0;
        this.a = context;
        this.d = amVar;
        this.c = akVar;
        this.b = LayoutInflater.from(context);
        this.k = i;
        this.l = str;
        this.m = str2;
    }

    public int a() {
        return this.i;
    }

    public int b() {
        return this.j;
    }

    private boolean a(int i, int i2) {
        boolean z = false;
        this.e.clear();
        this.i = i;
        this.j = i2;
        switch (i2) {
            case mx.AppCompatTheme_buttonStyle /*100*/:
                if (i != 0 && i != 2) {
                    if (i != 1) {
                        this.o = null;
                        break;
                    }
                    this.o = a(true, 0);
                    break;
                }
                this.o = new r(this.n, this.k, 1);
                break;
                break;
            case mx.AppCompatTheme_buttonStyleSmall /*101*/:
                if (i != 0 && i != 2) {
                    if (i != 1) {
                        this.o = null;
                        break;
                    }
                    this.o = a(true, 3);
                    break;
                }
                this.o = new r(this.n, this.k, 1);
                break;
                break;
            case mx.AppCompatTheme_checkboxStyle /*102*/:
                if (i != 1) {
                    if (i != 2) {
                        this.o = null;
                        break;
                    }
                    this.o = a(false, 0);
                    z = true;
                    break;
                }
                this.o = a(true, 4);
                z = true;
                break;
            case mx.AppCompatTheme_checkedTextViewStyle /*103*/:
                if (this.k == 1) {
                    this.o = new b(1);
                    break;
                }
                break;
            case mx.AppCompatTheme_editTextStyle /*104*/:
                if (this.k == 1) {
                    this.o = new b(0);
                    z = true;
                    break;
                }
                break;
            default:
                throw new IllegalArgumentException("Method argument 'event' should be one of the StoriesPagerAdapter.EVENT_* constants.");
        }
        if (this.o != null) {
            this.e.add(this.o);
        }
        return z;
    }

    public void a(Cursor cursor, int i, int i2) {
        boolean z = true;
        if (i2 != mx.AppCompatTheme_buttonStyleSmall || this.e.size() <= 1 || !c()) {
            boolean a = a(i, i2);
            if (this.e.isEmpty() && (cursor == null || cursor.isClosed())) {
                this.h = null;
                this.g = null;
            }
            if (this.o == null || a) {
                b(cursor);
            }
            if (this.o != null && this.o.a() == 12) {
                b bVar = (b) this.o;
                if (this.e.size() <= 1) {
                    z = false;
                }
                bVar.b = z;
            }
            notifyDataSetChanged();
        }
    }

    public boolean c() {
        return getCount() > 0 && ((as) this.e.get(getCount() - 1)).a() == 13;
    }

    public int getCount() {
        return this.e.size();
    }

    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    public int getItemPosition(Object obj) {
        int i = -2;
        String str = (String) this.f.get(obj);
        if (str == null || this.g == null) {
            return -2;
        }
        int intValue;
        if (this.g.containsKey(str)) {
            intValue = ((Integer) this.g.get(str)).intValue();
        } else {
            intValue = -2;
        }
        if (this.h == null || intValue == -2) {
            return intValue;
        }
        if (this.h.containsKey(str)) {
            i = ((Integer) this.h.get(str)).intValue();
        }
        if (i == intValue) {
            return -1;
        }
        return intValue;
    }

    public void notifyDataSetChanged() {
        this.h = this.g;
        Map hashMap = new HashMap(this.e.size());
        int i = 0;
        for (as asVar : this.e) {
            int i2 = i + 1;
            hashMap.put(asVar.e, Integer.valueOf(i));
            i = i2;
        }
        this.g = hashMap;
        super.notifyDataSetChanged();
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        as a = a(i);
        if (a == null) {
            return null;
        }
        View a2 = this.d.a(a, this.a, this.b, this.c);
        at atVar = (at) a2.getTag();
        atVar.F = i;
        this.d.a(a, atVar, this.a, this.c, this.l, this.m, false);
        viewGroup.addView(a2);
        this.f.put(a2, a.e);
        return a2;
    }

    public void a(Object obj, int i) {
        if (obj instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) obj;
            as a = a(i);
            if (a != null) {
                View findViewById = viewGroup.findViewById(2131951667);
                if (findViewById == null) {
                    throw new IllegalStateException("No story container???");
                }
                at atVar = (at) findViewById.getTag();
                if (atVar == null) {
                    throw new IllegalStateException("No holder in tag");
                }
                atVar.F = i;
                this.d.a(a, atVar, this.a, this.c, this.l, this.m, true);
                this.f.put(findViewById, a.e);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Item not expected type!");
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        ((at) view.getTag()).F = RtlSpacingHelper.UNDEFINED;
        viewGroup.removeView(view);
        this.f.remove(view);
    }

    public as a(int i) {
        if (i < 0 || i >= this.e.size()) {
            return null;
        }
        return (as) this.e.get(i);
    }

    private m a(boolean z, int i) {
        if (this.o == null || this.o.a() != 10) {
            this.o = new m(z);
        }
        m mVar = (m) this.o;
        mVar.a(i);
        return mVar;
    }

    private void b(Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            int i = 0;
            while (!cursor.isAfterLast()) {
                as a = a(cursor, this.a);
                if (a != null) {
                    a.j = i;
                    this.e.add(a);
                    i++;
                }
            }
        }
    }

    private static int b(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return 0;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 1;
            case WireMessage.WIRE_AUTH /*3*/:
                return 4;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 2;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return 3;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return 5;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return 6;
            case ControlMessage.CONTROL_BAN /*8*/:
                return 9;
            case mx.TwitterEditText_messageSize /*9*/:
                return 7;
            case mx.TwitterEditText_messageStyle /*10*/:
                return 8;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return 14;
            default:
                return -1;
        }
    }

    public static TwitterUser a(Cursor cursor) {
        boolean z = true;
        long j = cursor.getLong(cdb.b);
        String string = cursor.getString(cdb.c);
        if (j == 0 || com.twitter.util.aj.a((CharSequence) string)) {
            return null;
        }
        int i = cursor.getInt(cdb.h);
        cp d = new cp().a(j).f(string).a(cursor.getString(cdb.d)).b(cursor.getString(cdb.f)).h(cursor.getString(cdb.g)).j(cursor.getInt(cdb.h)).d(cursor.getString(cdb.i)).a((bg) m.a(cursor.getBlob(cdb.j), bg.b)).g(cursor.getString(cdb.k)).e(cursor.getString(cdb.l)).b((bg) m.a(cursor.getBlob(cdb.m), bg.b)).i(cursor.getInt(cdb.n)).c(cursor.getInt(cdb.o)).b(cursor.getLong(cdb.p)).a((cni) m.a(cursor.getBlob(cdb.q), cni.a)).c((i & 2) != 0).b((i & 1) != 0).d((i & 4) != 0);
        if ((i & 8) == 0) {
            z = false;
        }
        return (TwitterUser) d.e(z).a(new TwitterUserMetadata(null, null, cursor.getString(cdb.F), false, null)).e(cursor.getInt(cdb.G)).b(cursor.getInt(cdb.H)).a((x) m.a(cursor.getBlob(cdb.I), x.a(TwitterPlace.a))).q();
    }

    private static as a(Cursor cursor, Context context) {
        int i = cursor.getInt(cdb.C);
        while (i != 1) {
            if (!cursor.moveToNext()) {
                return null;
            }
            i = cursor.getInt(cdb.C);
        }
        int b = b(cursor.getInt(cdb.t));
        if (b == -1) {
            cursor.moveToNext();
            return null;
        }
        int i2;
        int i3;
        bli bli;
        Tweet tweet;
        String string = cursor.getString(cdb.r);
        long j = cursor.getLong(cdb.s);
        int i4 = cursor.getInt(cdb.u);
        int i5 = cursor.getInt(cdb.v);
        String string2 = cursor.getString(cdb.A);
        String string3 = cursor.getString(cdb.B);
        boolean z = cursor.getInt(cdb.D) == 1;
        String string4 = cursor.getString(cdb.w);
        String string5 = cursor.getString(cdb.x);
        String string6 = cursor.getString(cdb.y);
        CharSequence string7 = cursor.getString(cdb.z);
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        List arrayList3 = new ArrayList();
        int i6 = -1;
        i = -1;
        while (cursor.moveToNext()) {
            int i7 = cursor.getInt(cdb.C);
            TwitterUser a;
            switch (i7) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    a = a(cursor);
                    if (a == null) {
                        bbn.a(new InvalidDataException("Failed reading highlights proof user from DB"));
                        break;
                    }
                    arrayList.add(a);
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    a = a(cursor);
                    if (a == null) {
                        bbn.a(new InvalidDataException("Failed reading highlights story user from DB"));
                        break;
                    }
                    arrayList2.add(a);
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (b != 6 && b != 7 && b != 8 && b != 9) {
                        arrayList3.add(ccc.a.a(cursor));
                        break;
                    }
                    i = cursor.getPosition();
                    if (i6 == -1) {
                        i6 = i;
                        break;
                    }
                    break;
            }
            if (i7 == 1) {
                i2 = i;
                i3 = i6;
                bli = new bli(i4, i5, arrayList);
                switch (b) {
                    case mx.View_android_theme /*0*/:
                        if (!arrayList3.isEmpty()) {
                            return new bp(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0), false);
                        }
                        bbn.a(new InvalidDataException("Tweet story should have at least 1 tweet."));
                        return null;
                    case WireMessage.WIRE_CHAT /*1*/:
                        if (!arrayList3.isEmpty()) {
                            return new bj(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0));
                        }
                        bbn.a(new InvalidDataException("Media tweet story should have at least 1 tweet."));
                        return null;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        if (arrayList3.size() >= 2) {
                            return new bm(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0), (Tweet) arrayList3.get(1));
                        }
                        bbn.a(new InvalidDataException("In reply to story should have at least 2 tweets"));
                        return null;
                    case WireMessage.WIRE_AUTH /*3*/:
                        if (arrayList3.isEmpty() && com.twitter.util.aj.b(string7)) {
                            return new az(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0), string7);
                        }
                        bbn.a(new InvalidDataException("Summary tweet story should have at least 1 tweet & fallback header."));
                        return null;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                    case mx.TwitterEditText_maxCharacterCount /*11*/:
                        if (!arrayList3.isEmpty()) {
                            return new u(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0));
                        }
                        bbn.a(new InvalidDataException("Player tweet story should have at least 1 tweet."));
                        return null;
                    case mx.UserView_actionButtonPaddingRight /*5*/:
                        if (arrayList2.isEmpty()) {
                            if (arrayList3.isEmpty()) {
                                tweet = (Tweet) arrayList3.get(0);
                            } else {
                                tweet = null;
                            }
                            return new e(string, j, bli, z, string2, string3, (TwitterUser) arrayList2.get(0), tweet);
                        }
                        bbn.a(new InvalidDataException("Follows story should have at least 1 user."));
                        return null;
                    case mx.UserView_actionButtonPaddingBottom /*6*/:
                    case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                    case ControlMessage.CONTROL_BAN /*8*/:
                    case mx.TwitterEditText_messageSize /*9*/:
                        if (i3 == -1 && i2 >= i3) {
                            return a(cursor, context, b, string, j, string2, string3, z, string4, string5, string6, string7, i3, i2, bli);
                        }
                        bbn.a(new InvalidDataException("Tweet list story should have at least 1 tweet."));
                        return null;
                    case mx.TwitterButton_labelMargin /*14*/:
                        if (!arrayList2.isEmpty()) {
                            return new x(string, j, bli, z, string2, string3, (TwitterUser) arrayList2.get(0), null);
                        }
                        bbn.a(new InvalidDataException("Follows story should have at least 1 user."));
                        return null;
                    default:
                        return null;
                }
            }
        }
        i2 = i;
        i3 = i6;
        bli = new bli(i4, i5, arrayList);
        switch (b) {
            case mx.View_android_theme /*0*/:
                if (!arrayList3.isEmpty()) {
                    return new bp(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0), false);
                }
                bbn.a(new InvalidDataException("Tweet story should have at least 1 tweet."));
                return null;
            case WireMessage.WIRE_CHAT /*1*/:
                if (!arrayList3.isEmpty()) {
                    return new bj(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0));
                }
                bbn.a(new InvalidDataException("Media tweet story should have at least 1 tweet."));
                return null;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (arrayList3.size() >= 2) {
                    return new bm(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0), (Tweet) arrayList3.get(1));
                }
                bbn.a(new InvalidDataException("In reply to story should have at least 2 tweets"));
                return null;
            case WireMessage.WIRE_AUTH /*3*/:
                if (arrayList3.isEmpty()) {
                    break;
                }
                bbn.a(new InvalidDataException("Summary tweet story should have at least 1 tweet & fallback header."));
                return null;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                if (!arrayList3.isEmpty()) {
                    return new u(string, j, bli, z, string2, string3, (Tweet) arrayList3.get(0));
                }
                bbn.a(new InvalidDataException("Player tweet story should have at least 1 tweet."));
                return null;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (arrayList2.isEmpty()) {
                    bbn.a(new InvalidDataException("Follows story should have at least 1 user."));
                    return null;
                }
                if (arrayList3.isEmpty()) {
                    tweet = null;
                } else {
                    tweet = (Tweet) arrayList3.get(0);
                }
                return new e(string, j, bli, z, string2, string3, (TwitterUser) arrayList2.get(0), tweet);
            case mx.UserView_actionButtonPaddingBottom /*6*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case ControlMessage.CONTROL_BAN /*8*/:
            case mx.TwitterEditText_messageSize /*9*/:
                if (i3 == -1) {
                    break;
                }
                bbn.a(new InvalidDataException("Tweet list story should have at least 1 tweet."));
                return null;
            case mx.TwitterButton_labelMargin /*14*/:
                if (!arrayList2.isEmpty()) {
                    return new x(string, j, bli, z, string2, string3, (TwitterUser) arrayList2.get(0), null);
                }
                bbn.a(new InvalidDataException("Follows story should have at least 1 user."));
                return null;
            default:
                return null;
        }
    }

    private static as a(Cursor cursor, Context context, int i, String str, long j, String str2, String str3, boolean z, String str4, String str5, String str6, String str7, int i2, int i3, bli bli) {
        String string;
        int i4;
        switch (i) {
            case mx.UserView_actionButtonPaddingBottom /*6*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                string = context.getString(2131362781);
                i4 = 2130838892;
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                string = context.getString(2131362780);
                i4 = 2130838892;
                break;
            default:
                String host = Uri.parse(str6).getHost();
                if (host.startsWith("www.")) {
                    host = host.substring(4);
                }
                i4 = 2130838893;
                string = host;
                break;
        }
        return new aw(str, j, bli, z, str2, str3, i, str4, str5, str6, string, str7, i4, new ce(cursor, i2, i3));
    }
}
