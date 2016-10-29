.class public Lbxv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/playback/ab;


# instance fields
.field final a:Lcom/twitter/model/av/AVMedia;

.field volatile b:J

.field final c:Lcom/twitter/library/av/playback/AVPlayer;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbxw;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/library/av/playback/al;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V
    .locals 5

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Lbxw;

    const/4 v1, 0x0

    new-instance v2, Lbxn;

    invoke-direct {v2, p1}, Lbxn;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lbxp;

    invoke-direct {v2, p1, p2}, Lbxp;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lbyc;

    invoke-direct {v2, p1, p2}, Lbyc;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lbxo;

    invoke-direct {v2, p1, p2}, Lbxo;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lbye;

    invoke-direct {v2, p1}, Lbye;-><init>(Lcom/twitter/library/av/playback/AVPlayer;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lbxx;

    .line 65
    invoke-static {}, Lcom/twitter/library/revenue/c;->a()Z

    move-result v3

    .line 66
    invoke-static {}, Lcom/twitter/library/revenue/c;->b()Z

    move-result v4

    invoke-direct {v2, p1, p2, v3, v4}, Lbxx;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;ZZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lbxr;

    invoke-direct {v2, p1, p2}, Lbxr;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    aput-object v2, v0, v1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lbxv;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;[Lbxw;)V

    .line 69
    return-void
.end method

.method varargs constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;[Lbxw;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lbxv;->c:Lcom/twitter/library/av/playback/AVPlayer;

    .line 78
    iput-object p2, p0, Lbxv;->a:Lcom/twitter/model/av/AVMedia;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbxv;->d:Ljava/util/List;

    .line 83
    sget-object v0, Lcom/twitter/library/av/playback/al;->a:Lcom/twitter/library/av/playback/al;

    iput-object v0, p0, Lbxv;->e:Lcom/twitter/library/av/playback/al;

    .line 84
    return-void
.end method

.method private b(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->b:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->c:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lbxv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxw;

    .line 117
    invoke-interface {v0}, Lbxw;->e()V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lbxv;->b(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lbxv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxw;

    .line 101
    invoke-interface {v0}, Lbxw;->a()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lbxv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxw;

    .line 106
    invoke-interface {v0, p1}, Lbxw;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    goto :goto_1

    .line 108
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lbxv;->c:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-wide v0, p0, Lbxv;->b:J

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbxv;->b:J

    .line 90
    iget-object v0, p0, Lbxv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxw;

    .line 91
    iget-wide v2, p0, Lbxv;->b:J

    invoke-interface {v0, p1, v2, v3}, Lbxw;->a(Lcom/twitter/library/av/playback/bl;J)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lbxv;->c:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->h()Lbvr;

    move-result-object v0

    new-instance v1, Lbwi;

    iget-object v2, p0, Lbxv;->a:Lcom/twitter/model/av/AVMedia;

    invoke-direct {v1, v2, p1}, Lbwi;-><init>(Lcom/twitter/model/av/AVMedia;Lcom/twitter/library/av/playback/bl;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 95
    :cond_1
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lbxv;->b:J

    return-wide v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lbxv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxw;

    .line 129
    invoke-interface {v0}, Lbxw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lbxv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxw;

    .line 140
    invoke-interface {v0}, Lbxw;->c()V

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lbxv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxw;

    .line 147
    invoke-interface {v0}, Lbxw;->d()V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public f()Lcom/twitter/library/av/playback/al;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lbxv;->e:Lcom/twitter/library/av/playback/al;

    return-object v0
.end method
