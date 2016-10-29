.class public Lcom/twitter/android/av/video/l;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/android/av/video/k;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/library/av/playback/AVDataSource;

.field public b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field public c:Lbxa;

.field public d:Lcom/twitter/library/av/VideoPlayerView$Mode;

.field public e:Landroid/view/View$OnClickListener;

.field public f:Lcom/twitter/library/av/model/c;

.field public g:Lcom/twitter/library/av/control/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)Lcom/twitter/android/av/video/l;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/android/av/video/l;->e:Landroid/view/View$OnClickListener;

    .line 110
    return-object p0
.end method

.method public a(Lbxa;)Lcom/twitter/android/av/video/l;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/android/av/video/l;->c:Lbxa;

    .line 98
    return-object p0
.end method

.method public a(Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/android/av/video/l;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/twitter/android/av/video/l;->d:Lcom/twitter/library/av/VideoPlayerView$Mode;

    .line 104
    return-object p0
.end method

.method public a(Lcom/twitter/library/av/control/h;)Lcom/twitter/android/av/video/l;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/twitter/android/av/video/l;->g:Lcom/twitter/library/av/control/h;

    .line 122
    return-object p0
.end method

.method public a(Lcom/twitter/library/av/model/c;)Lcom/twitter/android/av/video/l;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/twitter/android/av/video/l;->f:Lcom/twitter/library/av/model/c;

    .line 116
    return-object p0
.end method

.method public a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/android/av/video/l;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/twitter/android/av/video/l;->a:Lcom/twitter/library/av/playback/AVDataSource;

    .line 86
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/av/video/l;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/twitter/android/av/video/l;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 92
    return-object p0
.end method

.method protected b()Lcom/twitter/android/av/video/k;
    .locals 8

    .prologue
    .line 134
    new-instance v0, Lcom/twitter/android/av/video/k;

    iget-object v1, p0, Lcom/twitter/android/av/video/l;->a:Lcom/twitter/library/av/playback/AVDataSource;

    iget-object v2, p0, Lcom/twitter/android/av/video/l;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v3, p0, Lcom/twitter/android/av/video/l;->c:Lbxa;

    iget-object v4, p0, Lcom/twitter/android/av/video/l;->d:Lcom/twitter/library/av/VideoPlayerView$Mode;

    iget-object v5, p0, Lcom/twitter/android/av/video/l;->e:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Lcom/twitter/android/av/video/l;->f:Lcom/twitter/library/av/model/c;

    iget-object v7, p0, Lcom/twitter/android/av/video/l;->g:Lcom/twitter/library/av/control/h;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/av/video/k;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;Lcom/twitter/library/av/model/c;Lcom/twitter/library/av/control/h;)V

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/av/video/l;->a:Lcom/twitter/library/av/playback/AVDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/video/l;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/video/l;->c:Lbxa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/video/l;->d:Lcom/twitter/library/av/VideoPlayerView$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/video/l;->f:Lcom/twitter/library/av/model/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/twitter/android/av/video/l;->b()Lcom/twitter/android/av/video/k;

    move-result-object v0

    return-object v0
.end method
