.class public Lbxx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbxw;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/twitter/library/av/playback/AVPlayer;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbya;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:J

.field private g:J

.field private final h:Z


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;ZZ)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p3, p0, Lbxx;->a:Z

    .line 55
    iput-boolean p4, p0, Lbxx;->b:Z

    .line 56
    iput-object p1, p0, Lbxx;->c:Lcom/twitter/library/av/playback/AVPlayer;

    .line 57
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lbxx;->h()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbxx;->d:Ljava/util/List;

    .line 58
    invoke-static {p2}, Lcom/twitter/model/av/b;->a(Lcom/twitter/model/av/AVMedia;)Z

    move-result v0

    iput-boolean v0, p0, Lbxx;->h:Z

    .line 59
    return-void

    .line 57
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method private a(Lcfy;)V
    .locals 4

    .prologue
    .line 152
    invoke-static {p1}, Lcfq;->a(Lcfr;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lbxx;->c:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v2, "video_session"

    new-instance v3, Lcom/twitter/library/av/e;

    invoke-direct {v3}, Lcom/twitter/library/av/e;-><init>()V

    .line 154
    invoke-virtual {v3, v0}, Lcom/twitter/library/av/e;->d(Ljava/lang/String;)Lcom/twitter/library/av/e;

    move-result-object v0

    .line 153
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Lcom/twitter/library/av/e;)V

    .line 155
    return-void
.end method

.method private h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbya;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    new-instance v1, Lbxz;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v1, v2}, Lbxz;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lbxz;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lbxz;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lbxz;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v2}, Lbxz;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lbxz;

    invoke-direct {v1, v4}, Lbxz;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lbxy;

    iget-object v2, p0, Lbxx;->c:Lcom/twitter/library/av/playback/AVPlayer;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lbxy;-><init>(Lcom/twitter/library/av/playback/AVPlayer;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lbxy;

    iget-object v2, p0, Lbxx;->c:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-direct {v1, v2, v4}, Lbxy;-><init>(Lcom/twitter/library/av/playback/AVPlayer;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0
.end method

.method private i()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbxx;->c:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->e()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ba;->c()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcfy;->a(Lcom/twitter/library/av/playback/AVDataSource;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    .line 77
    iget-boolean v0, p0, Lbxx;->a:Z

    if-eqz v0, :cond_1

    .line 78
    iget-wide v0, p1, Lcom/twitter/library/av/playback/bl;->c:J

    iput-wide v0, p0, Lbxx;->g:J

    .line 79
    iput-wide p2, p0, Lbxx;->e:J

    .line 80
    iget-object v0, p0, Lbxx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbya;

    .line 81
    invoke-virtual {p0}, Lbxx;->f()F

    move-result v2

    invoke-interface {v0, v4, v5, v2}, Lbya;->a(JF)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lbxx;->c:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-wide v0, p0, Lbxx;->f:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lbxx;->f:J

    .line 87
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 115
    iget-wide v0, p0, Lbxx;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lbxx;->g()Lcfy;

    move-result-object v0

    invoke-direct {p0, v0}, Lbxx;->a(Lcfy;)V

    .line 120
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method f()F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbxx;->c:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->W()F

    move-result v0

    return v0
.end method

.method g()Lcfy;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcga;

    invoke-direct {v0}, Lcga;-><init>()V

    iget-boolean v1, p0, Lbxx;->h:Z

    .line 133
    invoke-virtual {v0, v1}, Lcga;->a(Z)Lcga;

    move-result-object v0

    iget-wide v2, p0, Lbxx;->e:J

    .line 134
    invoke-virtual {v0, v2, v3}, Lcga;->b(J)Lcga;

    move-result-object v0

    iget-wide v2, p0, Lbxx;->g:J

    .line 135
    invoke-virtual {v0, v2, v3}, Lcga;->a(J)Lcga;

    move-result-object v0

    iget-wide v2, p0, Lbxx;->f:J

    .line 136
    invoke-virtual {v0, v2, v3}, Lcga;->g(J)Lcga;

    move-result-object v1

    iget-object v0, p0, Lbxx;->d:Ljava/util/List;

    const/4 v2, 0x0

    .line 137
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbya;

    invoke-interface {v0}, Lbya;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcga;->c(J)Lcga;

    move-result-object v1

    iget-object v0, p0, Lbxx;->d:Ljava/util/List;

    const/4 v2, 0x1

    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbya;

    invoke-interface {v0}, Lbya;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcga;->d(J)Lcga;

    move-result-object v1

    iget-object v0, p0, Lbxx;->d:Ljava/util/List;

    const/4 v2, 0x2

    .line 139
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbya;

    invoke-interface {v0}, Lbya;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcga;->e(J)Lcga;

    move-result-object v1

    iget-object v0, p0, Lbxx;->d:Ljava/util/List;

    const/4 v2, 0x3

    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbya;

    invoke-interface {v0}, Lbya;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcga;->f(J)Lcga;

    move-result-object v1

    iget-object v0, p0, Lbxx;->d:Ljava/util/List;

    const/4 v2, 0x4

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbya;

    invoke-interface {v0}, Lbya;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcga;->h(J)Lcga;

    move-result-object v1

    iget-object v0, p0, Lbxx;->d:Ljava/util/List;

    const/4 v2, 0x5

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbya;

    invoke-interface {v0}, Lbya;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcga;->i(J)Lcga;

    move-result-object v0

    .line 144
    iget-boolean v1, p0, Lbxx;->b:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0}, Lbxx;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcga;->a(I)Lcga;

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcga;->a()Lcfy;

    move-result-object v0

    return-object v0
.end method
