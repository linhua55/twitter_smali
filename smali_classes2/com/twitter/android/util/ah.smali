.class public Lcom/twitter/android/util/ah;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field private e:J

.field private f:Z

.field private final g:Landroid/content/Context;

.field private final h:Lcom/twitter/library/client/bk;

.field private final i:Lcom/twitter/library/client/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/ah;->h:Lcom/twitter/library/client/bk;

    .line 35
    iget-object v0, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/ah;->i:Lcom/twitter/library/client/bd;

    .line 36
    invoke-virtual {p0, p2, p3, p4}, Lcom/twitter/android/util/ah;->a(IJ)V

    .line 37
    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 106
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/android/util/ah;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    return-object v0
.end method

.method private a(JZ)V
    .locals 9

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/twitter/android/util/ah;->a:J

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/util/ah;->b(J)V

    .line 145
    new-instance v1, Lcom/twitter/library/api/activity/d;

    iget-object v2, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/util/ah;->h:Lcom/twitter/library/client/bk;

    iget-wide v4, p0, Lcom/twitter/android/util/ah;->e:J

    .line 146
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-boolean v6, p0, Lcom/twitter/android/util/ah;->f:Z

    iget v7, p0, Lcom/twitter/android/util/ah;->d:I

    move-wide v4, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/twitter/library/api/activity/d;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZIZ)V

    new-instance v0, Lcom/twitter/android/util/ai;

    invoke-direct {v0, p0}, Lcom/twitter/android/util/ai;-><init>(Lcom/twitter/android/util/ah;)V

    .line 147
    invoke-virtual {v1, v0}, Lcom/twitter/library/api/activity/d;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/activity/d;

    .line 154
    iget-object v1, p0, Lcom/twitter/android/util/ah;->i:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 155
    return-void
.end method

.method private b(J)V
    .locals 5

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/util/ah;->e:J

    invoke-static {v0, v2, v3, p1, p2}, Lcom/twitter/library/client/t;->b(Landroid/content/Context;JJ)Z

    .line 140
    :cond_0
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->b:J

    iput-wide v0, p0, Lcom/twitter/android/util/ah;->c:J

    .line 120
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->c:J

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 121
    new-instance v2, Lcom/twitter/library/api/activity/k;

    iget-object v3, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/twitter/android/util/ah;->h:Lcom/twitter/library/client/bk;

    iget-wide v6, p0, Lcom/twitter/android/util/ah;->e:J

    .line 123
    invoke-virtual {v4, v6, v7}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/twitter/library/api/activity/k;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    .line 125
    iget-object v0, p0, Lcom/twitter/android/util/ah;->i:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 126
    return-void
.end method

.method private d()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 129
    iget-wide v2, p0, Lcom/twitter/android/util/ah;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 132
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/util/ah;->e:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/client/t;->a(Landroid/content/Context;J)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->a:J

    return-wide v0
.end method

.method public a(IJ)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    iput p1, p0, Lcom/twitter/android/util/ah;->d:I

    .line 41
    iput-wide p2, p0, Lcom/twitter/android/util/ah;->e:J

    .line 42
    iput-wide v2, p0, Lcom/twitter/android/util/ah;->c:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/util/ah;->f:Z

    .line 44
    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/twitter/android/util/ah;->d()J

    move-result-wide v2

    .line 48
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 49
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 51
    iget-object v2, p0, Lcom/twitter/android/util/ah;->g:Landroid/content/Context;

    iget-wide v4, p0, Lcom/twitter/android/util/ah;->e:J

    invoke-static {v2, v4, v5, v0, v1}, Lcom/twitter/library/client/t;->a(Landroid/content/Context;JJ)V

    .line 53
    :goto_0
    iput-wide v0, p0, Lcom/twitter/android/util/ah;->a:J

    iput-wide v0, p0, Lcom/twitter/android/util/ah;->b:J

    .line 55
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->b:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/util/ah;->b:J

    .line 68
    return-void
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->e:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 85
    iput-wide p3, p0, Lcom/twitter/android/util/ah;->c:J

    .line 86
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->a:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p0, p3, p4}, Lcom/twitter/android/util/ah;->a(J)V

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, v0}, Lcom/twitter/android/util/ah;->a(JZ)V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/twitter/android/util/ah;->a(JZ)V

    .line 97
    iget-wide v0, p0, Lcom/twitter/android/util/ah;->b:J

    iget-wide v2, p0, Lcom/twitter/android/util/ah;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/twitter/android/util/ah;->c()V

    .line 100
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/util/ah;->f:Z

    .line 75
    return-void
.end method
