package tv.periscope.android.api.geo;

import defpackage.op;
import tv.periscope.android.api.PsResponse;

/* compiled from: Twttr */
public class TrendingLocations extends PsResponse {
    @op(a = "metadata")
    public LocationMetaData metadata;
    @op(a = "name")
    public String name;

    /* compiled from: Twttr */
    public class LocationMetaData {
        @op(a = "geo_bounds")
        public GeoBounds coordinates;
        @op(a = "country")
        public String country;
        @op(a = "timezone")
        public String timezone;
        @op(a = "type")
        public String type;
    }
}
