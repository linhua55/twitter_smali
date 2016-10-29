.class public Lcom/twitter/android/av/al;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;Lcav;)Lcom/twitter/android/av/ah;
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/twitter/android/av/ah;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/twitter/android/av/ah;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;Lcav;)V

    return-object v0
.end method
