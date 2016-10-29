package com.twitter.android.profilecompletionmodule.addbio;

import android.os.Parcelable;
import com.twitter.android.profilecompletionmodule.a;
import com.twitter.android.profilecompletionmodule.ad;
import com.twitter.android.twitterflows.d;
import com.twitter.util.object.e;
import defpackage.chd;

/* compiled from: Twttr */
public class b extends a<a, AddBioState, AddBioScreen> implements h {
    protected final f b;
    protected String c;

    public /* synthetic */ Parcelable c() {
        return t();
    }

    public b(a aVar, AddBioState addBioState) {
        a(aVar);
        if (addBioState == null) {
            this.c = aVar.a;
        } else {
            this.c = e.b(addBioState.a);
        }
        Iterable iterable = aVar.b;
        if (iterable.isEmpty()) {
            this.b = null;
        } else {
            this.b = new f(this, new chd(iterable));
        }
    }

    public String aF_() {
        return "presenter_add_bio";
    }

    public AddBioState t() {
        return new AddBioState(this.c);
    }

    protected void u() {
        if (((a) b()).a.equals(this.c) || ((AddBioScreen) d()).a()) {
            l();
        } else {
            k();
        }
    }

    protected void b(String str) {
        this.c = str;
        u();
    }

    protected void m() {
        super.m();
        ((AddBioScreen) d()).setBioText(this.c);
        b(this.c);
        ((AddBioScreen) d()).setPillsAdapter(this.b);
    }

    protected String n() {
        return "bio_screen";
    }

    protected d o() {
        return new ad();
    }

    protected d p() {
        return new ad();
    }

    public void r() {
        this.c = ((a) b()).a;
        f().a(null);
        ((AddBioScreen) d()).setBioText(this.c);
        super.r();
    }

    public void s() {
        f().a(this.c);
        super.s();
    }

    public void c(String str) {
        String str2;
        a("bio", "add", str);
        AddBioScreen addBioScreen = (AddBioScreen) d();
        int bioSelection = addBioScreen.getBioSelection();
        if (bioSelection > 0) {
            str2 = this.c.substring(0, bioSelection).trim() + " ";
        } else {
            str2 = TtmlNode.ANONYMOUS_REGION_ID;
        }
        String str3 = str2 + str + (" " + this.c.substring(bioSelection).trim());
        addBioScreen.setBioText(str3);
        addBioScreen.setBioCursor((str2.length() + str.length()) + 1);
        b(str3);
    }
}
