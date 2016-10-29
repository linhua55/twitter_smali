.class public Lcom/twitter/android/timeline/ac;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/timeline/ac;->a:Landroid/support/v4/util/LongSparseArray;

    .line 35
    iput-object p1, p0, Lcom/twitter/android/timeline/ac;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private static a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "stream"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "loading_indicator"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p3, v1, v2

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 87
    invoke-virtual {v0, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 88
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-ltz v1, :cond_0

    .line 89
    invoke-virtual {v0, p5, p6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(J)Lcom/twitter/library/scribe/ScribeLog;

    .line 91
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 92
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Z
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 50
    iget-object v0, p0, Lcom/twitter/android/timeline/ac;->a:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 51
    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/timeline/ac;->a:Landroid/support/v4/util/LongSparseArray;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 53
    iget-object v2, p0, Lcom/twitter/android/timeline/ac;->b:Ljava/lang/String;

    const-string/jumbo v3, "show"

    move-wide v0, p1

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/timeline/ac;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(JLjava/lang/String;)Z
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/twitter/android/timeline/ac;->a:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 73
    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    sub-long v5, v4, v2

    .line 75
    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 76
    iget-object v2, p0, Lcom/twitter/android/timeline/ac;->b:Ljava/lang/String;

    const-string/jumbo v3, "hide"

    move-wide v0, p1

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/timeline/ac;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 77
    iget-object v0, p0, Lcom/twitter/android/timeline/ac;->a:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 80
    :goto_1
    return v7

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0

    :cond_1
    move v7, v1

    .line 80
    goto :goto_1
.end method
