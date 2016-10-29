.class public Lcom/twitter/android/av/watchmode/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/watchmode/d;


# instance fields
.field private final a:Lue;

.field private final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final d:Lcom/twitter/library/av/playback/AVDataSource;

.field private final e:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<",
            "Lui;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lue;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/e;->a:Lue;

    .line 45
    iput-object p2, p0, Lcom/twitter/android/av/watchmode/e;->d:Lcom/twitter/library/av/playback/AVDataSource;

    .line 46
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/e;->a:Lue;

    invoke-virtual {v0, p2}, Lue;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lrx/o;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/e;->e:Lrx/o;

    .line 47
    const-string/jumbo v0, "watch_mode"

    invoke-virtual {p3, v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    .line 48
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0, p3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const-string/jumbo v1, "original_video"

    .line 49
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/e;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 50
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0, p3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const-string/jumbo v1, "suggested_video"

    .line 51
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/e;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 52
    return-void
.end method

.method private a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/twitter/android/av/watchmode/e;->c(Lcom/twitter/library/av/playback/AVDataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/e;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/e;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    goto :goto_0
.end method

.method private b(Lcom/twitter/library/av/playback/AVDataSource;)Lbxa;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/twitter/android/av/watchmode/e;->c(Lcom/twitter/library/av/playback/AVDataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lbxa;->b:Lbxa;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbxa;->h:Lbxa;

    goto :goto_0
.end method

.method private c(Lcom/twitter/library/av/playback/AVDataSource;)Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/e;->d:Lcom/twitter/library/av/playback/AVDataSource;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/android/av/video/k;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/twitter/android/av/video/l;

    invoke-direct {v0}, Lcom/twitter/android/av/video/l;-><init>()V

    .line 77
    invoke-virtual {v0, p2}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/VideoPlayerView$Mode;->i:Lcom/twitter/library/av/VideoPlayerView$Mode;

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/VideoPlayerView$Mode;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    .line 79
    invoke-static {p2}, Lcom/twitter/library/av/model/c;->b(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/model/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/model/c;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/twitter/android/av/watchmode/view/WatchModeListItemView;->getChromeView()Lcom/twitter/library/av/control/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/av/control/h;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    .line 81
    invoke-direct {p0, p2}, Lcom/twitter/android/av/watchmode/e;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    .line 82
    invoke-direct {p0, p2}, Lcom/twitter/android/av/watchmode/e;->b(Lcom/twitter/library/av/playback/AVDataSource;)Lbxa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/video/l;->a(Lbxa;)Lcom/twitter/android/av/video/l;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/twitter/android/av/video/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/video/k;

    return-object v0
.end method

.method public a()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lui;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/e;->e:Lrx/o;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    return-object v0
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/e;->a:Lue;

    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 91
    :cond_0
    return-void
.end method
