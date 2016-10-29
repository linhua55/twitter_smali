package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class CreateBroadcastRequest extends PsRequest {
    @op(a = "has_moderation")
    public boolean hasModeration;
    @op(a = "height")
    public int height;
    @op(a = "lat")
    public double lat;
    @op(a = "lng")
    public double lng;
    @op(a = "supports_psp_version")
    public int[] pspVersion;
    @op(a = "region")
    public String region;
    @op(a = "width")
    public int width;
}
