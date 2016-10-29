package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class BroadcastRankResponse extends PsResponse {
    @op(a = "age_minutes")
    public String[] ageMinutes;
    @op(a = "cortex_score")
    public String[] cortexScore;
    @op(a = "country")
    public String country;
    @op(a = "has_location")
    public String[] hasLocation;
    @op(a = "is_verified")
    public String[] isVerified;
    @op(a = "language")
    public String language;
    @op(a = "locales")
    public String[] locales;
    @op(a = "raw_stickiness")
    public String[] rawStickiness;
    @op(a = "report_ratio")
    public String[] reportRatio;
    @op(a = "score")
    public String score;
    @op(a = "stickiness")
    public String[] stickiness;
    @op(a = "viewers_count")
    public String[] viewersCount;
}
