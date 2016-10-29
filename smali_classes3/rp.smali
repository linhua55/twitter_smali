.class public Lrp;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Lcom/twitter/library/geo/provider/param/a;
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lcom/twitter/library/geo/provider/param/a;->a()Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    .line 27
    invoke-static {}, Lrp;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/geo/provider/param/c;->b(J)Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    .line 28
    invoke-static {}, Lrp;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/geo/provider/param/c;->a(J)Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    .line 29
    invoke-static {}, Lrp;->d()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/geo/provider/param/c;->a(F)Lcom/twitter/library/geo/provider/param/c;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/twitter/library/geo/provider/param/c;->a()Lcom/twitter/library/geo/provider/param/a;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method private static b()J
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "alerts_v2_experience_fastest_interval_minutes"

    const/4 v1, 0x5

    .line 35
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 34
    return-wide v0
.end method

.method private static c()J
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "alerts_v2_experience_desired_interval_minutes"

    const/16 v1, 0x78

    .line 40
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 39
    return-wide v0
.end method

.method private static d()J
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "alerts_v2_experience_minimal_displacement_meters"

    const/16 v1, 0x1f4

    .line 45
    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 44
    return-wide v0
.end method
