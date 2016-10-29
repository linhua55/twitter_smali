.class public Laxu;
.super Layn;
.source "Twttr"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;I)V
    .locals 10

    .prologue
    .line 78
    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Laxu;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;IJ)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;IJ)V
    .locals 11

    .prologue
    .line 89
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Layn;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZIJ)V

    .line 90
    iget-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Layj;JLaye;I)Laxu;
    .locals 8

    .prologue
    .line 42
    const-string/jumbo v0, "CounterMetric"

    invoke-static {v0, p0}, Laxu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Laxu;->a(Ljava/lang/String;Layj;JLaye;ILjava/lang/String;)Laxu;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Layj;JLaye;ILjava/lang/String;)Laxu;
    .locals 12

    .prologue
    .line 62
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Layj;->a(Ljava/lang/String;)Laxy;

    move-result-object v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    new-instance v3, Laxu;

    invoke-virtual {p1}, Layj;->f()Landroid/content/Context;

    move-result-object v4

    move-object v5, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object v8, p1

    move/from16 v9, p5

    move-wide v10, p2

    invoke-direct/range {v3 .. v11}, Laxu;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;IJ)V

    invoke-virtual {p1, v3}, Layj;->d(Laxy;)Laxy;

    move-result-object v2

    .line 67
    :cond_0
    check-cast v2, Laxu;

    return-object v2
.end method

.method private d(J)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Laxu;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 136
    invoke-virtual {p0}, Laxu;->q()V

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Laxu;->d(J)V

    .line 109
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0, p1}, Layn;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 156
    const-string/jumbo v0, "usage"

    invoke-virtual {p0, v0}, Laxu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 167
    iget-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-string/jumbo v1, "usage"

    invoke-virtual {p0, v1}, Laxu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 172
    :goto_0
    invoke-super {p0, p1}, Layn;->a(Landroid/content/SharedPreferences;)V

    .line 173
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string/jumbo v1, "usage"

    invoke-virtual {p0, v1}, Laxu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laxu;->b(Z)V

    .line 142
    return-void
.end method

.method protected b(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0, p1}, Layn;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 162
    const-string/jumbo v0, "usage"

    invoke-virtual {p0, v0}, Laxu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    return-void
.end method

.method public d()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Laxu;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 147
    invoke-virtual {p0}, Laxu;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laxu;->b(Z)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Laxu;->q()V

    .line 151
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Laxu;->d(J)V

    .line 100
    return-void
.end method
