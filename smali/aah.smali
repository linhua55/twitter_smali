.class public Laah;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Laai;

.field private b:Z

.field private c:Z

.field private d:Lcom/twitter/model/core/Tweet;

.field private e:I


# direct methods
.method public constructor <init>(Laai;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Laah;->a:Laai;

    .line 54
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    .line 73
    iget-object v0, p0, Laah;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laah;->d:Lcom/twitter/model/core/Tweet;

    .line 74
    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    .line 75
    :goto_0
    iget-object v1, p0, Laah;->d:Lcom/twitter/model/core/Tweet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Laah;->d:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 77
    :goto_1
    iget-boolean v4, p0, Laah;->b:Z

    if-nez v4, :cond_0

    .line 78
    and-int/lit8 p1, p1, -0x2

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/model/core/j;->b()I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 82
    and-int/lit8 v2, p1, -0x7

    .line 85
    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Laah;->c:Z

    if-eqz v1, :cond_4

    .line 86
    and-int/lit8 v1, v2, -0x7

    .line 87
    or-int/lit8 v1, v1, 0x8

    .line 90
    :goto_3
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Laah;->b:Z

    if-nez v2, :cond_1

    .line 91
    iget-object v2, p0, Laah;->a:Laai;

    invoke-virtual {v0, v3}, Lcom/twitter/model/core/j;->a(I)Lcom/twitter/model/core/e;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    iget-object v0, v0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    invoke-interface {v2, v0}, Laai;->a(Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-object v0, p0, Laah;->a:Laai;

    invoke-interface {v0, v1}, Laai;->b(I)V

    .line 94
    return-void

    .line 74
    :cond_2
    invoke-static {}, Lcom/twitter/model/core/j;->a()Lcom/twitter/model/core/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v3

    .line 75
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v2, p1

    goto :goto_2
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 97
    iput-boolean p1, p0, Laah;->b:Z

    .line 98
    iget-object v0, p0, Laah;->a:Laai;

    iget-boolean v1, p0, Laah;->b:Z

    invoke-interface {v0, v1}, Laai;->b(Z)V

    .line 99
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/av/GalleryVideoChromeView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Laah;->a:Laai;

    invoke-interface {v0}, Laai;->d()Lcom/twitter/android/av/GalleryVideoChromeView;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Laah;->d:Lcom/twitter/model/core/Tweet;

    .line 68
    iget v0, p0, Laah;->e:I

    invoke-direct {p0, v0}, Laah;->a(I)V

    .line 69
    return-void
.end method

.method public a(Lzx;)V
    .locals 1

    .prologue
    .line 57
    iget v0, p1, Lzx;->c:I

    iput v0, p0, Laah;->e:I

    .line 58
    iget-boolean v0, p1, Lzx;->b:Z

    iput-boolean v0, p0, Laah;->c:Z

    .line 59
    iget-boolean v0, p1, Lzx;->a:Z

    invoke-direct {p0, v0}, Laah;->a(Z)V

    .line 60
    iget v0, p0, Laah;->e:I

    invoke-direct {p0, v0}, Laah;->a(I)V

    .line 61
    return-void
.end method
