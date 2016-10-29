package tv.periscope.android.api;

import defpackage.op;
import java.util.ArrayList;

/* compiled from: Twttr */
public class SuggestedPeopleResponse extends PsResponse {
    @op(a = "featured")
    public ArrayList<PsUser> featured;
    @op(a = "hearted")
    public ArrayList<PsUser> hearted;
    @op(a = "popular")
    public ArrayList<PsUser> popular;
    @op(a = "twitter")
    public ArrayList<PsUser> twitter;
}
