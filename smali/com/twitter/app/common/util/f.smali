.class public Lcom/twitter/app/common/util/f;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/app/common/util/f;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/util/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:I

.field private volatile d:J

.field private volatile e:J

.field private volatile f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/util/c;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/util/f;->b:Ljava/util/Set;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/app/common/util/f;->j:Ljava/lang/Boolean;

    .line 56
    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lcom/twitter/app/common/util/g;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/util/g;-><init>(Lcom/twitter/app/common/util/f;)V

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/util/c;->a(Lcom/twitter/app/common/util/a;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static a()Lcom/twitter/app/common/util/f;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/twitter/app/common/util/f;->a:Lcom/twitter/app/common/util/f;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/twitter/app/common/util/f;->a:Lcom/twitter/app/common/util/f;

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Lcvo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lcom/twitter/app/common/util/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/app/common/util/f;-><init>(Lcom/twitter/app/common/util/c;)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lcom/twitter/app/common/app/a;->a()Lcom/twitter/app/common/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/app/a;->f()Lcom/twitter/app/common/util/f;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    iget v0, p0, Lcom/twitter/app/common/util/f;->c:I

    if-nez v0, :cond_2

    .line 161
    iget v0, p0, Lcom/twitter/app/common/util/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/app/common/util/f;->c:I

    .line 162
    iget-boolean v0, p0, Lcom/twitter/app/common/util/f;->i:Z

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/app/common/util/f;->h:J

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/twitter/app/common/util/f;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/twitter/app/common/util/f;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/twitter/app/common/util/h;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/app/common/util/h;

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 169
    invoke-interface {v3, p1}, Lcom/twitter/app/common/util/h;->b(Landroid/app/Activity;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 172
    :cond_0
    iput-boolean v1, p0, Lcom/twitter/app/common/util/f;->i:Z

    .line 177
    :cond_1
    :goto_1
    return-void

    .line 175
    :cond_2
    iget v0, p0, Lcom/twitter/app/common/util/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/app/common/util/f;->c:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/twitter/app/common/util/f;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/app/common/util/f;->f()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/common/util/f;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/f;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 180
    iget v0, p0, Lcom/twitter/app/common/util/f;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/twitter/app/common/util/f;->c:I

    .line 181
    iget v0, p0, Lcom/twitter/app/common/util/f;->c:I

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/twitter/app/common/util/f;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/twitter/app/common/util/f;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/twitter/app/common/util/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/app/common/util/h;

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 189
    invoke-interface {v3, p1}, Lcom/twitter/app/common/util/h;->a(Landroid/app/Activity;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 191
    :cond_0
    iget-wide v0, p0, Lcom/twitter/app/common/util/f;->g:J

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/twitter/app/common/util/f;->h:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/app/common/util/f;->g:J

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/app/common/util/f;->h:J

    .line 197
    :cond_1
    :goto_1
    return-void

    .line 194
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/util/f;->i:Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/twitter/app/common/util/f;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/app/common/util/f;->g()V

    return-void
.end method

.method static synthetic b(Lcom/twitter/app/common/util/f;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/f;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/twitter/app/common/util/f;->a:Lcom/twitter/app/common/util/f;

    if-nez v0, :cond_0

    invoke-static {}, Lcvo;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/twitter/app/common/app/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/app/common/util/f;->d:J

    .line 153
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/app/common/util/f;->e:J

    .line 157
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/twitter/app/common/util/h;)V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/app/common/util/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/twitter/app/common/util/h;)Z
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/app/common/util/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 114
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 115
    invoke-virtual {p0}, Lcom/twitter/app/common/util/f;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/twitter/app/common/util/f;->d:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/twitter/app/common/util/f;->e:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/twitter/app/common/util/f;->f:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcvo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/util/f;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/twitter/app/common/util/f;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/twitter/app/common/util/f;->c:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/app/common/util/f;->i:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/twitter/app/common/util/f;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/app/common/util/f;->g:J

    .line 147
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/twitter/app/common/util/f;->h:J

    sub-long/2addr v0, v2

    .line 146
    :goto_0
    return-wide v0

    .line 147
    :cond_0
    iget-wide v0, p0, Lcom/twitter/app/common/util/f;->g:J

    goto :goto_0
.end method
