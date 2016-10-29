.class public Lcom/twitter/android/smartfollow/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/smartfollow/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/twitterflows/j;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/android/smartfollow/ag;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/ag;-><init>()V

    return-object v0
.end method

.method public synthetic b()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/af;->a()Lcom/twitter/android/twitterflows/j;

    move-result-object v0

    return-object v0
.end method
