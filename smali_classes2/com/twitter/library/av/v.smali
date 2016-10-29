.class public Lcom/twitter/library/av/v;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Lcom/twitter/library/av/y;

.field b:Lcom/twitter/library/av/z;

.field private final c:Lbxk;

.field private final d:Lcom/twitter/util/object/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/library/av/x;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lbxk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbxk;

    invoke-direct {v0}, Lbxk;-><init>()V

    :goto_0
    new-instance v1, Lcom/twitter/library/av/w;

    invoke-direct {v1}, Lcom/twitter/library/av/w;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/library/av/v;-><init>(Lbxk;Lcom/twitter/util/object/i;)V

    .line 34
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lbxk;Lcom/twitter/util/object/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbxk;",
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/library/av/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/twitter/library/av/v;->c:Lbxk;

    .line 39
    iput-object p2, p0, Lcom/twitter/library/av/v;->d:Lcom/twitter/util/object/i;

    .line 40
    invoke-static {}, Lbxk;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/av/v;->e:Z

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/z;)Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    if-eqz v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    if-eq p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    invoke-interface {v0}, Lcom/twitter/library/av/z;->a()Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    iget-object v0, v0, Lcom/twitter/library/av/y;->a:Landroid/graphics/SurfaceTexture;

    .line 60
    :cond_1
    if-eqz v0, :cond_2

    .line 61
    iput-object p1, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    .line 64
    :cond_2
    return-object v0
.end method

.method public a(Lcom/twitter/library/av/z;Lcom/twitter/library/av/playback/AVPlayer;)Landroid/graphics/SurfaceTexture;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/library/av/v;->c:Lbxk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/av/v;->c:Lbxk;

    invoke-virtual {v0}, Lbxk;->b()Lbxj;

    move-result-object v0

    .line 79
    :goto_0
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/twitter/library/av/y;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v1, v2, v0}, Lcom/twitter/library/av/y;-><init>(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/twitter/library/av/v;->a(Lcom/twitter/library/av/y;Lcom/twitter/library/av/z;)V

    .line 84
    iget-object v1, v1, Lcom/twitter/library/av/y;->b:Landroid/view/Surface;

    invoke-virtual {p2, v1}, Lcom/twitter/library/av/playback/AVPlayer;->a(Landroid/view/Surface;)V

    .line 87
    :cond_0
    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    invoke-interface {v0}, Lcom/twitter/library/av/z;->a()Z

    .line 130
    invoke-virtual {p0}, Lcom/twitter/library/av/v;->b()V

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    .line 133
    return-void
.end method

.method public a(Lcom/twitter/library/av/y;Lcom/twitter/library/av/z;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/library/av/y;->a:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    iget-object v1, v1, Lcom/twitter/library/av/y;->a:Landroid/graphics/SurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    if-eq v0, p2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/twitter/library/av/v;->a()V

    .line 108
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    .line 109
    iput-object p2, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    .line 110
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/av/v;->b()V

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    iget-boolean v2, p0, Lcom/twitter/library/av/v;->e:Z

    iget-object v0, p0, Lcom/twitter/library/av/v;->d:Lcom/twitter/util/object/i;

    invoke-interface {v0}, Lcom/twitter/util/object/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/x;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/av/y;->a(ZLcom/twitter/library/av/x;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/av/v;->a:Lcom/twitter/library/av/y;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/v;->c:Lbxk;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/twitter/library/av/v;->c:Lbxk;

    invoke-virtual {v0}, Lbxk;->c()V

    .line 168
    :cond_1
    return-void
.end method

.method public b(Lcom/twitter/library/av/z;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    if-ne v0, p1, :cond_0

    .line 120
    sget-object v0, Lcom/twitter/library/av/z;->a:Lcom/twitter/library/av/z;

    iput-object v0, p0, Lcom/twitter/library/av/v;->b:Lcom/twitter/library/av/z;

    .line 122
    :cond_0
    return-void
.end method
