.class public Lcom/twitter/android/av/video/k;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/library/av/playback/AVDataSource;

.field public final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field public final c:Lbxa;

.field public final d:Lcom/twitter/library/av/VideoPlayerView$Mode;

.field public final e:Landroid/view/View$OnClickListener;

.field public final f:Lcom/twitter/library/av/model/c;

.field public final g:Lcom/twitter/library/av/control/h;


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;)V
    .locals 7

    .prologue
    .line 44
    invoke-static {p1}, Lcom/twitter/library/av/model/c;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/model/c;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/av/video/k;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;Lcom/twitter/library/av/model/c;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;Lcom/twitter/library/av/model/c;)V
    .locals 8

    .prologue
    .line 51
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/av/video/k;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;Lcom/twitter/library/av/model/c;Lcom/twitter/library/av/control/h;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lbxa;Lcom/twitter/library/av/VideoPlayerView$Mode;Landroid/view/View$OnClickListener;Lcom/twitter/library/av/model/c;Lcom/twitter/library/av/control/h;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/twitter/android/av/video/k;->a:Lcom/twitter/library/av/playback/AVDataSource;

    .line 59
    iput-object p2, p0, Lcom/twitter/android/av/video/k;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 60
    iput-object p3, p0, Lcom/twitter/android/av/video/k;->c:Lbxa;

    .line 61
    iput-object p4, p0, Lcom/twitter/android/av/video/k;->d:Lcom/twitter/library/av/VideoPlayerView$Mode;

    .line 62
    iput-object p5, p0, Lcom/twitter/android/av/video/k;->e:Landroid/view/View$OnClickListener;

    .line 63
    iput-object p6, p0, Lcom/twitter/android/av/video/k;->f:Lcom/twitter/library/av/model/c;

    .line 64
    iput-object p7, p0, Lcom/twitter/android/av/video/k;->g:Lcom/twitter/library/av/control/h;

    .line 65
    return-void
.end method
