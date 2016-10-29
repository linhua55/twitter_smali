.class public Lbxp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbxw;


# instance fields
.field a:Z

.field private final b:Lbyb;

.field private final c:Lbxu;

.field private final d:Lcom/twitter/model/av/AVMedia;

.field private final e:Lcom/twitter/library/av/playback/AVPlayer;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lbyb;

    invoke-direct {v0, p1, p2}, Lbyb;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    new-instance v1, Lbxu;

    invoke-direct {v1, p1, p2}, Lbxu;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lbxp;-><init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lbyb;Lbxu;)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/model/av/AVMedia;Lbyb;Lbxu;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lbxp;->e:Lcom/twitter/library/av/playback/AVPlayer;

    .line 51
    iput-object p2, p0, Lbxp;->d:Lcom/twitter/model/av/AVMedia;

    .line 52
    iput-object p3, p0, Lbxp;->b:Lbyb;

    .line 53
    iput-object p4, p0, Lbxp;->c:Lbxu;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbxp;->b:Lbyb;

    invoke-virtual {v0}, Lbyb;->a()V

    .line 75
    iget-object v0, p0, Lbxp;->c:Lbxu;

    invoke-virtual {v0}, Lbxu;->a()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbxp;->a:Z

    .line 77
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;J)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lbxp;->b:Lbyb;

    invoke-virtual {v0, p1, p2, p3}, Lbyb;->a(Lcom/twitter/library/av/playback/bl;J)V

    .line 60
    iget-object v0, p0, Lbxp;->c:Lbxu;

    invoke-virtual {v0, p1, p2, p3}, Lbxu;->a(Lcom/twitter/library/av/playback/bl;J)V

    .line 62
    iget-boolean v0, p0, Lbxp;->a:Z

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lbxp;->b:Lbyb;

    iget-boolean v0, v0, Lbyb;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbxp;->c:Lbxu;

    iget-boolean v0, v0, Lbxu;->a:Z

    if-eqz v0, :cond_0

    .line 67
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbxp;->a:Z

    .line 68
    iget-object v0, p0, Lbxp;->e:Lcom/twitter/library/av/playback/AVPlayer;

    const-string/jumbo v1, "video_view"

    const/4 v2, 0x0

    iget-object v3, p0, Lbxp;->d:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/av/playback/AVPlayer;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lbxp;->a:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbxp;->d:Lcom/twitter/model/av/AVMedia;

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lbxp;->a()V

    .line 92
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
