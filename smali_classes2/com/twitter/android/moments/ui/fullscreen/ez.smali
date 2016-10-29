.class public Lcom/twitter/android/moments/ui/fullscreen/ez;
.super Lcom/twitter/library/av/az;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/twitter/library/av/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/library/av/ay;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoThumbnailView;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/MomentsVideoThumbnailView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
