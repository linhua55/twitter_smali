.class public Lcaz;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcaz;->a:J

    return-void
.end method

.method public static a()J
    .locals 6

    .prologue
    .line 55
    const-string/jumbo v0, "home_timeline_jump_to_top_loading_indicator_timeout_milliseconds"

    sget-wide v2, Lcaz;->a:J

    invoke-static {v0, v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1d4c0

    invoke-static/range {v0 .. v5}, Lcom/twitter/util/math/b;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcaz;->b(J)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(J)F
    .locals 4

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    const-string/jumbo v1, "home_timeline_jump_to_top_android_4779"

    invoke-static {p0, p1, v1}, Lcom/twitter/config/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 95
    :cond_1
    :goto_1
    return v0

    .line 70
    :sswitch_0
    const-string/jumbo v3, "jtt_12hr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "jtt_3hr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "jtt_90min"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "jtt_15min"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "unassigned"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 72
    :pswitch_0
    const/high16 v0, 0x44340000    # 720.0f

    goto :goto_1

    .line 75
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_1

    .line 78
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_1

    .line 81
    :pswitch_3
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_1

    .line 84
    :pswitch_4
    const-string/jumbo v1, "home_timeline_jump_to_top_session_boundary_minutes"

    invoke-static {p0, p1, v1, v0}, Lcom/twitter/config/d;->a(JLjava/lang/String;F)F

    move-result v1

    .line 87
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    move v0, v1

    .line 92
    goto :goto_1

    .line 70
    :sswitch_data_0
    .sparse-switch
        -0x4c2aacd8 -> :sswitch_1
        -0x392ca260 -> :sswitch_0
        0x1399c599 -> :sswitch_3
        0x14083bc6 -> :sswitch_2
        0x44ec7367 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
