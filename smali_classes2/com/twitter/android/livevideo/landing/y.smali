.class public Lcom/twitter/android/livevideo/landing/y;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lrx/t;

.field private final c:Lcom/twitter/android/livevideo/landing/ab;

.field private d:Lrx/ap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/twitter/android/livevideo/landing/ab;Lrx/t;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/twitter/android/livevideo/landing/z;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/landing/z;-><init>(Lcom/twitter/android/livevideo/landing/y;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/y;->d:Lrx/ap;

    .line 52
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/y;->a:Landroid/content/res/Resources;

    .line 53
    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/y;->c:Lcom/twitter/android/livevideo/landing/ab;

    .line 54
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/y;->b:Lrx/t;

    .line 55
    return-void
.end method

.method static a(J)Z
    .locals 2

    .prologue
    .line 81
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(J)Z
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(J)I
    .locals 4

    .prologue
    .line 98
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method a(JJ)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    cmp-long v0, p3, v2

    if-gtz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/y;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a0495

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-static {p3, p4}, Lcom/twitter/android/livevideo/landing/y;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 68
    invoke-static {v0, v1}, Lcom/twitter/android/livevideo/landing/y;->c(J)I

    move-result v0

    int-to-long v0, v0

    .line 69
    invoke-static {v0, v1}, Lcom/twitter/util/al;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/y;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a0498

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p3, p4}, Lcom/twitter/android/livevideo/landing/y;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/y;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a0496

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/y;->a:Landroid/content/res/Resources;

    invoke-static {v0, p1, p2}, Lcom/twitter/util/al;->d(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/y;->a:Landroid/content/res/Resources;

    invoke-static {v1, p1, p2}, Lcom/twitter/util/al;->e(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/y;->a:Landroid/content/res/Resources;

    const v3, 0x7f0a0497

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/y;->d:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 103
    return-void
.end method

.method b(JJ)V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/android/livevideo/landing/y;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/y;->c:Lcom/twitter/android/livevideo/landing/ab;

    invoke-interface {v1, v0}, Lcom/twitter/android/livevideo/landing/ab;->a(Ljava/lang/String;)V

    .line 128
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/y;->d:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/y;->a()V

    .line 130
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/y;->c:Lcom/twitter/android/livevideo/landing/ab;

    invoke-interface {v0}, Lcom/twitter/android/livevideo/landing/ab;->e()V

    .line 132
    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 7

    .prologue
    .line 106
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 107
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/y;->d:Lrx/ap;

    invoke-interface {v2}, Lrx/ap;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/twitter/android/livevideo/landing/y;->b:Lrx/t;

    .line 109
    invoke-static {v2, v3, v4, v5}, Lrx/o;->a(JLjava/util/concurrent/TimeUnit;Lrx/t;)Lrx/o;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/livevideo/landing/aa;

    invoke-direct {v3, p0, p1, p2}, Lcom/twitter/android/livevideo/landing/aa;-><init>(Lcom/twitter/android/livevideo/landing/y;J)V

    .line 110
    invoke-virtual {v2, v3}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/livevideo/landing/y;->d:Lrx/ap;

    .line 118
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/twitter/android/livevideo/landing/y;->b(JJ)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/y;->c:Lcom/twitter/android/livevideo/landing/ab;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/twitter/android/livevideo/landing/y;->a(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/twitter/android/livevideo/landing/ab;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
