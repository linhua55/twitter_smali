package com.twitter.android.communities;

/* compiled from: Twttr */
class a implements o {
    final /* synthetic */ CommunityActivity a;

    a(CommunityActivity communityActivity) {
        this.a = communityActivity;
    }

    public void a(ai aiVar) {
        this.a.m().a(aiVar.e.toString());
        this.a.a = aiVar;
        if (this.a.b != null) {
            this.a.b.a(aiVar.c, aiVar.d);
            this.a.b.setIsMember(aiVar.f);
        }
        this.a.E();
    }
}
