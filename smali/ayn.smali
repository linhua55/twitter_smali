.class public abstract Layn;
.super Laxy;
.source "Twttr"

# interfaces
.implements Layh;


# instance fields
.field private final a:I

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZI)V
    .locals 10

    .prologue
    .line 62
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Layn;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZIJ)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZIJ)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laxy;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;Z)V

    .line 49
    new-instance v0, Layo;

    invoke-direct {v0, p0}, Layo;-><init>(Layn;)V

    iput-object v0, p0, Layn;->c:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Layn;->b:Landroid/os/Handler;

    .line 70
    iput p7, p0, Layn;->a:I

    .line 71
    iget v0, p0, Layn;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Layn;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid reporting interval, please see PeriodicMetric for valid intervals."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-wide p8, p0, Layn;->s:J

    .line 76
    invoke-static {p0}, Layg;->a(Layh;)V

    .line 77
    invoke-virtual {p0}, Layn;->A()V

    .line 78
    return-void
.end method

.method static synthetic a(Layn;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Layn;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected A()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 106
    invoke-virtual {p0}, Layn;->B()V

    .line 107
    iget-boolean v0, p0, Layn;->i:Z

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Layn;->g()I

    move-result v0

    int-to-long v4, v0

    .line 112
    invoke-virtual {p0}, Layn;->y()J

    move-result-wide v2

    .line 113
    iget-wide v0, p0, Layn;->h:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    move-wide v0, v2

    :goto_1
    add-long/2addr v0, v4

    .line 118
    iget-wide v6, p0, Layn;->h:J

    cmp-long v6, v6, v2

    if-gtz v6, :cond_1

    sub-long v6, v2, v0

    const-wide/16 v8, 0x7

    mul-long/2addr v8, v4

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 120
    :cond_1
    iput-wide v10, p0, Layn;->h:J

    .line 121
    invoke-virtual {p0}, Layn;->p()V

    .line 122
    invoke-virtual {p0, v4, v5}, Layn;->c(J)V

    goto :goto_0

    .line 113
    :cond_2
    iget-wide v0, p0, Layn;->h:J

    goto :goto_1

    .line 128
    :cond_3
    iget-wide v6, p0, Layn;->h:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_4

    .line 129
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    iput-wide v6, p0, Layn;->h:J

    .line 132
    :cond_4
    cmp-long v6, v0, v2

    if-lez v6, :cond_5

    .line 133
    sub-long/2addr v0, v2

    .line 154
    :goto_2
    sub-long/2addr v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Layn;->u:J

    .line 155
    invoke-virtual {p0, v0, v1}, Layn;->c(J)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-virtual {p0}, Layn;->r()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 139
    invoke-virtual {p0}, Layn;->l()Z

    move-result v6

    .line 140
    if-eqz v6, :cond_6

    .line 143
    invoke-virtual {p0}, Layn;->j()V

    .line 145
    :cond_6
    iput-wide v4, p0, Layn;->t:J

    .line 146
    invoke-virtual {p0}, Layn;->o()V

    .line 147
    if-eqz v6, :cond_7

    .line 148
    invoke-virtual {p0}, Layn;->i()V

    .line 151
    :cond_7
    sub-long v0, v2, v0

    rem-long/2addr v0, v4

    sub-long v0, v4, v0

    goto :goto_2
.end method

.method protected B()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Layn;->b:Landroid/os/Handler;

    iget-object v1, p0, Layn;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public aW_()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Layn;->A()V

    .line 177
    return-void
.end method

.method protected c(J)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Layn;->b:Landroid/os/Handler;

    iget-object v1, p0, Layn;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Layn;->a:I

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-static {}, Layg;->a()Layi;

    move-result-object v0

    iget v0, v0, Layi;->f:I

    .line 96
    :goto_0
    return v0

    .line 84
    :pswitch_0
    invoke-static {}, Layg;->a()Layi;

    move-result-object v0

    iget v0, v0, Layi;->d:I

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-static {}, Layg;->a()Layi;

    move-result-object v0

    iget v0, v0, Layi;->e:I

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected s()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Laxy;->s()V

    .line 102
    invoke-virtual {p0}, Layn;->B()V

    .line 103
    return-void
.end method

.method public u()J
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Layn;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-wide v0, p0, Layn;->t:J

    .line 165
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Layn;->t:J

    invoke-virtual {p0}, Layn;->y()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Layn;->u:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method
