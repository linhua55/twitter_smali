.class public final Ldmf;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Random;

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ldmf;->a:Ljava/util/Random;

    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ldmf;->b:J

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x7

    invoke-static {v0}, Ldmf;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(I)J
    .locals 6

    .prologue
    .line 28
    sget-wide v0, Ldmf;->b:J

    long-to-double v0, v0

    const/4 v2, 0x7

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 29
    sget-wide v2, Ldmf;->b:J

    long-to-double v2, v2

    sget-object v4, Ldmf;->a:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
