package com.twitter.android.moments.viewmodels;

import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
public class s extends f<MomentGuideSection> {
    public String a;
    public MomentGuideSectionType b;
    public List<MomentModule> c;
    public String d;
    public String e;
    public String f;

    protected /* synthetic */ Object c() {
        return d();
    }

    public s a(String str) {
        this.a = str;
        return this;
    }

    public s a(MomentGuideSectionType momentGuideSectionType) {
        this.b = momentGuideSectionType;
        return this;
    }

    public s a(List<MomentModule> list) {
        this.c = list;
        return this;
    }

    public s b(String str) {
        this.d = str;
        return this;
    }

    public s c(String str) {
        this.e = str;
        return this;
    }

    public s d(String str) {
        this.f = str;
        return this;
    }

    protected MomentGuideSection d() {
        return new MomentGuideSection(this);
    }
}
